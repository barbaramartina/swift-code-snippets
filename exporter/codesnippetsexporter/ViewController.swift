//
//  ViewController.swift
//  codesnippetsexporter
//
//  ******************************************************************
//  Small, extremely basic, poorly tested MAC application to export code snippets written in Swift or Objective C to
//  YAML with YAM front-matter format extracted variables. If you want to change something just go ahead.
//
//  How it works:
//  1) Open a dialog and look for your user created XCode snippets. You should find there under ~/Library/Developer/XCode/UserData/CodeSnippets/
//  Select this folder
//  2) Automatically another dialog is open and you need to select your output directory.
//
//  Thanks to http://www.brandpending.com/blog/2015/6/3/working-with-the-mac-os-file-system-using-swift
//  For the already made functions to read a directory, open a file and write a file.
//
//  ******************************************************************
//
//  Copyright © 2016 Barbara M. Rodeker. All rights reserved.
//  Created by Barbara Rodeker on 5/31/16.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//    
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        openDirectoryAndConvertSnippets()
    }

    func openDirectoryAndConvertSnippets() {
        let myOpenDialog: NSOpenPanel = NSOpenPanel()
        myOpenDialog.canChooseDirectories = true
        myOpenDialog.canSelectHiddenExtension = true
        myOpenDialog.showsHiddenFiles = true
        myOpenDialog.runModal() // select the directory where your snippets are located in your file system
        
        if let path = myOpenDialog.URL?.path {
            
            let fs: NSFileManager = NSFileManager.defaultManager()
            let contents: Array = try! fs.contentsOfDirectoryAtPath(path)

            let outputDialog = NSOpenPanel()
            outputDialog.canChooseDirectories = true
            outputDialog.runModal() // select where you would like to export the snippets
            
            if let outputPath = outputDialog.URL?.path {
                for fileName in contents {
                    if (fileName.containsString("codesnippet")) {
                        let fileContent = readDictionaryFromFile("\(path)/\(fileName)")!
                        exportCodeSnippetToYAML(fileContent, path: "\(outputPath)/")
                    }
                }
            }
        }
    }
    
    func readDictionaryFromFile(filePath:String) -> Dictionary<String,AnyObject?>? {
        do {
            if let data = NSData(contentsOfFile: filePath) {
                let dict = try NSPropertyListSerialization.propertyListWithData(data, options: .Immutable,format: nil)
                
                if let ocDictionary = dict as? NSDictionary {
                    var swiftDict : Dictionary<String,AnyObject?> = Dictionary<String,AnyObject?>()
                    for key : AnyObject in ocDictionary.allKeys{
                        let stringKey : String = key as! String
                        swiftDict[stringKey] = ocDictionary[stringKey]
                    }
                    return swiftDict
                    
                } else {
                    return nil
                }
            }
        } catch {
            print("error reading from file")
        }
        return nil
    }
    
    
    func exportCodeSnippetToYAML(snippetDict: Dictionary<String,AnyObject?>, path: String) {
        do {
            var text = "---\n"
            
            var shortCut = ""
            if let title = snippetDict["IDECodeSnippetTitle"] as? String {
                text = text + "title: " + title + "\n"
                
                if let completionShortcut = snippetDict["IDECodeSnippetCompletionPrefix"] as? String {
                    shortCut = completionShortcut
                } else {
                    shortCut = title.stringByReplacingOccurrencesOfString(" ", withString: "")
                }
            }
            
            let scopes = (snippetDict["IDECodeSnippetCompletionScopes"] as? Array) ?? [String]()
            if let completionScope = scopes.first {
                text = text + "completion-scope: " + completionScope + "\n"
            }
            
            if let summary = snippetDict["IDECodeSnippetSummary"] as? String {
                text = text + "summary: " + summary + "\n"
            }
            
            if let platform = snippetDict["IDECodeSnippetPlatformFamily"] as? String {
                text = text + "platform: " + platform + "\n"
            }

            text = text + "--- \n"

            if let content = snippetDict["IDECodeSnippetContents"] as? String {
                text = text + content + "\n"
            }

            var ext = ".swift"
            if let language = snippetDict["IDECodeSnippetLanguage"]! {
                if language.isEqualToString("Xcode.SourceCodeLanguage.ObjectiveC") {
                    ext = ".m"
                } else if language.isEqualToString("Xcode.SourceCodeLanguage.Objective-C++") {
                    ext = ".mm"
                }
            }
            
            
            try text.writeToFile(path  + shortCut + ext, atomically:true, encoding:NSUTF8StringEncoding)
            
        } catch {
            print("error writing file to path: \(path)")
        }
    }
}

