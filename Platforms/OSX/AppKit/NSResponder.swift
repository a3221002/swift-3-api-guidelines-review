
class NSResponder : Object, Coding {
  init()
  init?(coder: Coder)
  unowned(unsafe) var next: @sil_unmanaged NSResponder?
  func tryToPerform(anAction: Selector, with anObject: AnyObject?) -> Bool
  func performKeyEquivalent(theEvent: NSEvent) -> Bool
  func validRequestorForSendType(sendType: String, returnType: String) -> AnyObject?
  func mouseDown(theEvent: NSEvent)
  func rightMouseDown(theEvent: NSEvent)
  func otherMouseDown(theEvent: NSEvent)
  func mouseUp(theEvent: NSEvent)
  func rightMouseUp(theEvent: NSEvent)
  func otherMouseUp(theEvent: NSEvent)
  func mouseMoved(theEvent: NSEvent)
  func mouseDragged(theEvent: NSEvent)
  func scrollWheel(theEvent: NSEvent)
  func rightMouseDragged(theEvent: NSEvent)
  func otherMouseDragged(theEvent: NSEvent)
  func mouseEntered(theEvent: NSEvent)
  func mouseExited(theEvent: NSEvent)
  func keyDown(theEvent: NSEvent)
  func keyUp(theEvent: NSEvent)
  func flagsChanged(theEvent: NSEvent)
  func tabletPoint(theEvent: NSEvent)
  func tabletProximity(theEvent: NSEvent)
  @available(OSX 10.5, *)
  func cursorUpdate(event: NSEvent)
  @available(OSX 10.5, *)
  func magnify(withEvent event: NSEvent)
  @available(OSX 10.5, *)
  func rotate(withEvent event: NSEvent)
  @available(OSX 10.5, *)
  func swipe(withEvent event: NSEvent)
  @available(OSX 10.5, *)
  func beginGesture(withEvent event: NSEvent)
  @available(OSX 10.5, *)
  func endGesture(withEvent event: NSEvent)
  @available(OSX 10.8, *)
  func smartMagnify(withEvent event: NSEvent)
  @available(OSX 10.6, *)
  func touchesBegan(withEvent event: NSEvent)
  @available(OSX 10.6, *)
  func touchesMoved(withEvent event: NSEvent)
  @available(OSX 10.6, *)
  func touchesEnded(withEvent event: NSEvent)
  @available(OSX 10.6, *)
  func touchesCancelled(withEvent event: NSEvent)
  @available(OSX 10.8, *)
  func quickLook(withEvent event: NSEvent)
  @available(OSX 10.10.3, *)
  func pressureChange(withEvent event: NSEvent)
  func noResponder(for eventSelector: Selector)
  var acceptsFirstResponder: Bool { get }
  func becomeFirstResponder() -> Bool
  func resignFirstResponder() -> Bool
  func interpretKeyEvents(eventArray: [NSEvent])
  func flushBufferedKeyEvents()
  var menu: NSMenu?
  func showContextHelp(sender: AnyObject?)
  func helpRequested(eventPtr: NSEvent)
  func shouldBeTreated(asInkEvent theEvent: NSEvent) -> Bool
  @available(OSX 10.7, *)
  func wantsScrollEventsForSwipeTracking(on axis: NSEventGestureAxis) -> Bool
  @available(OSX 10.7, *)
  func wantsForwardedScrollEvents(forAxis axis: NSEventGestureAxis) -> Bool
  @available(OSX 10.7, *)
  func supplementalTarget(forAction action: Selector, sender: AnyObject?) -> AnyObject?
  func encodeWith(aCoder: Coder)
}
extension NSResponder {
  func insertText(insertString: AnyObject)
  func doCommand(by aSelector: Selector)
  func moveForward(sender: AnyObject?)
  func moveRight(sender: AnyObject?)
  func moveBackward(sender: AnyObject?)
  func moveLeft(sender: AnyObject?)
  func moveUp(sender: AnyObject?)
  func moveDown(sender: AnyObject?)
  func moveWordForward(sender: AnyObject?)
  func moveWordBackward(sender: AnyObject?)
  func moveToBeginningOfLine(sender: AnyObject?)
  func moveToEndOfLine(sender: AnyObject?)
  func moveToBeginningOfParagraph(sender: AnyObject?)
  func moveToEndOfParagraph(sender: AnyObject?)
  func moveToEndOfDocument(sender: AnyObject?)
  func moveToBeginningOfDocument(sender: AnyObject?)
  func pageDown(sender: AnyObject?)
  func pageUp(sender: AnyObject?)
  func centerSelectionInVisibleArea(sender: AnyObject?)
  func moveBackwardAndModifySelection(sender: AnyObject?)
  func moveForwardAndModifySelection(sender: AnyObject?)
  func moveWordForwardAndModifySelection(sender: AnyObject?)
  func moveWordBackwardAndModifySelection(sender: AnyObject?)
  func moveUpAndModifySelection(sender: AnyObject?)
  func moveDownAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfLineAndModifySelection(sender: AnyObject?)
  func moveToEndOfLineAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfParagraphAndModifySelection(sender: AnyObject?)
  func moveToEndOfDocumentAndModifySelection(sender: AnyObject?)
  func moveToBeginningOfDocumentAndModifySelection(sender: AnyObject?)
  func pageDownAndModifySelection(sender: AnyObject?)
  func pageUpAndModifySelection(sender: AnyObject?)
  func moveParagraphForwardAndModifySelection(sender: AnyObject?)
  func moveParagraphBackwardAndModifySelection(sender: AnyObject?)
  func moveWordRight(sender: AnyObject?)
  func moveWordLeft(sender: AnyObject?)
  func moveRightAndModifySelection(sender: AnyObject?)
  func moveLeftAndModifySelection(sender: AnyObject?)
  func moveWordRightAndModifySelection(sender: AnyObject?)
  func moveWordLeftAndModifySelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToLeftEndOfLine(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToRightEndOfLine(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToLeftEndOfLineAndModifySelection(sender: AnyObject?)
  @available(OSX 10.6, *)
  func moveToRightEndOfLineAndModifySelection(sender: AnyObject?)
  func scrollPageUp(sender: AnyObject?)
  func scrollPageDown(sender: AnyObject?)
  func scrollLineUp(sender: AnyObject?)
  func scrollLineDown(sender: AnyObject?)
  func scrollToBeginningOfDocument(sender: AnyObject?)
  func scrollToEndOfDocument(sender: AnyObject?)
  func transpose(sender: AnyObject?)
  func transposeWords(sender: AnyObject?)
  func selectAll(sender: AnyObject?)
  func selectParagraph(sender: AnyObject?)
  func selectLine(sender: AnyObject?)
  func selectWord(sender: AnyObject?)
  func indent(sender: AnyObject?)
  func insertTab(sender: AnyObject?)
  func insertBacktab(sender: AnyObject?)
  func insertNewline(sender: AnyObject?)
  func insertParagraphSeparator(sender: AnyObject?)
  func insertNewlineIgnoringFieldEditor(sender: AnyObject?)
  func insertTabIgnoringFieldEditor(sender: AnyObject?)
  func insertLineBreak(sender: AnyObject?)
  func insertContainerBreak(sender: AnyObject?)
  @available(OSX 10.5, *)
  func insertSingleQuoteIgnoringSubstitution(sender: AnyObject?)
  @available(OSX 10.5, *)
  func insertDoubleQuoteIgnoringSubstitution(sender: AnyObject?)
  func changeCaseOfLetter(sender: AnyObject?)
  func uppercaseWord(sender: AnyObject?)
  func lowercaseWord(sender: AnyObject?)
  func capitalizeWord(sender: AnyObject?)
  func deleteForward(sender: AnyObject?)
  func deleteBackward(sender: AnyObject?)
  func deleteBackwardByDecomposingPreviousCharacter(sender: AnyObject?)
  func deleteWordForward(sender: AnyObject?)
  func deleteWordBackward(sender: AnyObject?)
  func deleteToBeginningOfLine(sender: AnyObject?)
  func deleteToEndOfLine(sender: AnyObject?)
  func deleteToBeginningOfParagraph(sender: AnyObject?)
  func deleteToEndOfParagraph(sender: AnyObject?)
  func yank(sender: AnyObject?)
  func complete(sender: AnyObject?)
  func setMark(sender: AnyObject?)
  func deleteToMark(sender: AnyObject?)
  func selectToMark(sender: AnyObject?)
  func swapWithMark(sender: AnyObject?)
  func cancelOperation(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionNatural(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionLeftToRight(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeBaseWritingDirectionRightToLeft(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionNatural(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionLeftToRight(sender: AnyObject?)
  @available(OSX 10.6, *)
  func makeTextWritingDirectionRightToLeft(sender: AnyObject?)
  @available(OSX 10.8, *)
  func quickLookPreviewItems(sender: AnyObject?)
}
extension NSResponder {
  var undoManager: UndoManager? { get }
}
extension NSResponder {
  @available(OSX 10.7, *)
  func validateProposedFirstResponder(responder: NSResponder, forEvent event: NSEvent?) -> Bool
}
extension NSResponder {
  func presentError(error: Error, modalFor window: NSWindow, delegate: AnyObject?, didPresent didPresentSelector: Selector, contextInfo: UnsafeMutablePointer<Void>)
  func presentError(error: Error) -> Bool
  func willPresentError(error: Error) -> Error
}
extension NSResponder {
  @available(OSX 10.7, *)
  func performTextFinderAction(sender: AnyObject?)
}
extension NSResponder {
}
