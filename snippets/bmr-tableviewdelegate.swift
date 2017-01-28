---
title: Swift UIKit TableViewDelegate
completion-scope: ClassImplementation
summary: Methods to implement when you adopt UITableViewDelegate
platform: iphoneos
---
   //MARK: UITableViewDelegate

   // Display customization


    // optional
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    }


    // optional
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
    }

    // optional
    func tableView(_ tableView: UITableView, willDisplayFooterView view: UIView, forSection section: Int){
    }

    // optional
    func tableView(_ tableView: UITableView, didEndDisplaying cell: UITableViewCell, forRowAt indexPath: IndexPath) {
    }

    // optional
    func tableView(_ tableView: UITableView, didEndDisplayingHeaderView view: UIView, forSection section: Int) {
    }


    // optional
    func tableView(_ tableView: UITableView, didEndDisplayingFooterView view: UIView, forSection section: Int){
    }


    // Variable height support

    // optional
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
    }


    // optional
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
    }


    // optional
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat{
    }


    // Use the estimatedHeight methods to quickly calcuate guessed values which will allow for fast load times of the table.
    // If these methods are implemented, the above -tableView:heightForXXX calls will be deferred until views are ready to be displayed, so more expensive logic can be placed there.

    // optional
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
    }


    // optional
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
    }


    // optional
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
    }


    // Section header & footer information. Views are preferred over title should you decide to provide both


    // optional
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?  {
    }

    // optional
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?  {
    }


    // optional
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    }


    // Selection

    // -tableView:shouldHighlightRowAtIndexPath: is called when a touch comes down on a row.
    // Returning NO to that message halts the selection process and does not cause the currently selected row to lose its selected look while the touch is down.

    // optional
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
    }


    // optional
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
    }


    // optional
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
    }


    // Called before the user changes the selection. Return a new indexPath, or nil, to change the proposed selection.

    // optional
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    }


    // optional
    func tableView(_ tableView: UITableView, willDeselectRowAt indexPath: IndexPath) -> IndexPath? {
    }

    // Called after the user changes the selection.

    // optional
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }


    // optional
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
    }


    // Editing

    // Allows customization of the editingStyle for a particular cell located at 'indexPath'. If not implemented, all editable cells will have UITableViewCellEditingStyleDelete set for them when the table has editing property set to YES.

    // optional
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
    }


    // optional
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
    }


    // optional
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?  {
    }

    // Controls whether the background is indented while editing.  If not implemented, the default is YES.  This is unrelated to the indentation level below.  This method only applies to grouped style table views.

    // optional
    func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
    }


    // The willBegin/didEnd methods are called whenever the 'editing' property is automatically changed by the table (allowing insert/delete/move). This is done by a swipe activating a single row

    // optional
    func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
    }


    // optional
    func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
    }


    // Moving/reordering

    // Allows customization of the target row for a particular row as it is being moved/reordered

    // optional
    func tableView(_ tableView: UITableView, targetIndexPathForMoveFromRowAt sourceIndexPath: IndexPath, toProposedIndexPath proposedDestinationIndexPath: IndexPath) -> IndexPath {
    }


    // Indentation


    // optional
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int  {
    }


    // Copy/Paste.  All three methods must be implemented by the delegate.


    // optional
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
    }


    // optional
    func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
    }


    // optional
    func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
    }


    // Focus


    // optional
    func tableView(_ tableView: UITableView, canFocusRowAt indexPath: IndexPath) -> Bool {
    }


    // optional
    func tableView(_ tableView: UITableView, shouldUpdateFocusIn context: UITableViewFocusUpdateContext) -> Bool {
    }


    // optional
    func tableView(_ tableView: UITableView, didUpdateFocusIn context: UITableViewFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
    }


    // optional
    func indexPathForPreferredFocusedView(in tableView: UITableView) -> IndexPath? {
    }
