
class NSComboBoxCell : NSTextFieldCell {
  var hasVerticalScroller: Bool
  var intercellSpacing: Size
  var itemHeight: CGFloat
  var numberOfVisibleItems: Int
  var isButtonBordered: Bool
  func reloadData()
  func noteNumberOfItemsChanged()
  var usesDataSource: Bool
  func scrollItemAtIndexToTop(index: Int)
  func scrollItemAtIndexToVisible(index: Int)
  func selectItemAt(index: Int)
  func deselectItemAt(index: Int)
  var indexOfSelectedItem: Int { get }
  var numberOfItems: Int { get }
  var completes: Bool
  func completedString(string: String) -> String?
  unowned(unsafe) var dataSource: @sil_unmanaged NSComboBoxCellDataSource?
  func addItemWithObjectValue(object: AnyObject)
  func addItemsWithObjectValues(objects: [AnyObject])
  func insertItemWithObjectValue(object: AnyObject, at index: Int)
  func removeItemWithObjectValue(object: AnyObject)
  func removeItemAt(index: Int)
  func removeAllItems()
  func selectItemWithObjectValue(object: AnyObject?)
  func itemObjectValueAt(index: Int) -> AnyObject
  var objectValueOfSelectedItem: AnyObject? { get }
  func indexOfItemWithObjectValue(object: AnyObject) -> Int
  var objectValues: [AnyObject] { get }
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}
struct __cbcFlags {
  var usesDataSource: UInt32
  var completes: UInt32
  var buttonBordered: UInt32
  var popUpIsUp: UInt32
  var filteringEvents: UInt32
  var drawing: UInt32
  var synchronizingSelection: UInt32
  var reserved: UInt32
  var visibleItems: UInt32
  init()
  init(usesDataSource: UInt32, completes: UInt32, buttonBordered: UInt32, popUpIsUp: UInt32, filteringEvents: UInt32, drawing: UInt32, synchronizingSelection: UInt32, reserved: UInt32, visibleItems: UInt32)
}
protocol NSComboBoxCellDataSource : ObjectProtocol {
  optional func numberOfItemsIn(comboBoxCell: NSComboBoxCell) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, objectValueForItemAt index: Int) -> AnyObject
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, indexOfItemWithStringValue string: String) -> Int
  optional func comboBoxCell(aComboBoxCell: NSComboBoxCell, completedString uncompletedString: String) -> String?
}