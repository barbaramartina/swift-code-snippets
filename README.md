# swift-code-snippets
**Sharing my code snippets for XCode and Swift.**

I've prefixed all my snippets with **bmr-** so can be easily found using autocomplete.  

![autocomplete](https://github.com/barbaramartina/swift-code-snippets/blob/master/docs/autocomplete.png)

I've also included in this repo snippets I found useful from data structures and algorithms available in the [Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club).  
These snippets are prefixed with **swift-ac**.  


# Install  

To install these snippets you could:  

1. Copy&Paste the code (under the content section of the YAML .swift files) and create the snippet yourself again by hand, completing the rest of the properties (such as giving a title, a summary, a shortcut and so on).  
2. You can install the [xcodesnippet gem.](https://github.com/Xcode-Snippets/xcodesnippet) 

## Installing using xcodesnippet gem

To use the gem you must execute this command (you must have ruby gems already installed in your system):  

        $ gem install xcodesnippet  

After that, download the snippets in this repo or in any other repo which also offers YAML format (check any of the snippets here as an eample of the format structure).  
Go to the command line and execute:  

        $ xcodesnippet install path/to/source.swift

# Create  
To create your own snippets select your code, drag&drop to the **Snippets Library**, at the bottom of the Utility Panel (at the right).

<p align=center>
<img src="https://github.com/barbaramartina/swift-code-snippets/blob/master/docs/snippets%20library.png" >
</p>

# Share  
You do not necessarily need to use this repo nor share your snippets here, there are different ways to share them, even not using the YAML format I'm using here.  
You can find your local snippets going to:  

    ~/Library/Developer/Xcode/UserData/CodeSnippets
    
And you have different options for sharing.  

## Simple sharing  
Under the directory above, you'll find files with the extension **.codesnippet**.  
Just send these files to somebody else, who copy them inside his own `/CodeSnippets` directory.  
And that's all. 
Only be careful not to repeat the same identifier for the snippets.  


## Sharing with Alcatraz
You could also share, from *XCode*, using some [Alcatraz](http://alcatraz.io) plugin like [XCSnippetr](https://github.com/dzenbot/XCSnippetr), or adapting [SwiftCodeSnippets](https://github.com/CodeEagle/SwiftCodeSnippets) to use your own repository.   

## Sharing in this repo  

If you want to share your snippets in this repo you have to do the following:  
1. Fork the repo.  
2. Open the app under `exporter/` in *XCode* and run the app in your mac.  
3. A panel will open, choose the snippets main directory.  

<p align=center>
<img src="https://github.com/barbaramartina/swift-code-snippets/blob/master/docs/choose%20snippets%20folder.png" >
</p>

4. Another panel will open inmediately, choose the output directory.  
<p align=center>
<img src="https://github.com/barbaramartina/swift-code-snippets/blob/master/docs/choose%20export%20output%20folder.png" >
</p>
5. Go to your output directory and you will find the exported files there.  

6. Add your snippets and make a PR. 


## Other repos with snippets
Checkout also these repos for more snippets:  

1. [burczyc](https://github.com/burczyk/XcodeSwiftSnippets)  
2. [Mattt](https://github.com/Xcode-Snippets/Swift).  
This last one still does not have any snippet for Swift and can not be forked yet, but I'm sure cool reusable snippets will appear soon there.  
  
