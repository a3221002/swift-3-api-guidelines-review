
class NSTextField : NSControl, NSUserInterfaceValidations, NSAccessibilityNavigableStaticText {
  @available(OSX 10.10, *)
  var placeholderString: String?
  @available(OSX 10.10, *)
  @NSCopying var placeholderAttributedString: AttributedString?
  @NSCopying var backgroundColor: NSColor?
  var drawsBackground: Bool
  @NSCopying var textColor: NSColor?
  var isBordered: Bool
  var isBezeled: Bool
  var isEditable: Bool
  var isSelectable: Bool
  func selectText(sender: AnyObject?)
  unowned(unsafe) var delegate: @sil_unmanaged NSTextFieldDelegate?
  func textShouldBeginEditing(textObject: NSText) -> Bool
  func textShouldEndEditing(textObject: NSText) -> Bool
  func textDidBeginEditing(notification: Notification)
  func textDidEndEditing(notification: Notification)
  func textDidChange(notification: Notification)
  var acceptsFirstResponder: Bool { get }
  var bezelStyle: NSTextFieldBezelStyle
  @available(OSX 10.8, *)
  var preferredMaxLayoutWidth: CGFloat
  @available(OSX 10.11, *)
  var maximumNumberOfLines: Int
  @available(OSX 10.11, *)
  var allowsDefaultTighteningForTruncation: Bool
  init(frame frameRect: Rect)
  init?(coder: Coder)
  convenience init()
  func validate(anItem: NSValidatedUserInterfaceItem) -> Bool
  func accessibilityString(forRange range: NSRange) -> String?
  func accessibilityLine(forIndex index: Int) -> Int
  func accessibilityRange(forLine lineNumber: Int) -> NSRange
  func accessibilityFrame(forRange range: NSRange) -> Rect
  func accessibilityValue() -> String?
  @available(OSX 10.0, *)
  func accessibilityAttributedString(forRange range: NSRange) -> AttributedString?
  func accessibilityVisibleCharacterRange() -> NSRange
}
extension NSTextField {
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
protocol NSTextFieldDelegate : NSControlTextEditingDelegate {
}
extension NSTextField {
}
