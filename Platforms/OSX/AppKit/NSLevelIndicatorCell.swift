
enum NSLevelIndicatorStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case RelevancyLevelIndicatorStyle
  case ContinuousCapacityLevelIndicatorStyle
  case DiscreteCapacityLevelIndicatorStyle
  case RatingLevelIndicatorStyle
}
class NSLevelIndicatorCell : NSActionCell {
  init(levelIndicatorStyle: NSLevelIndicatorStyle)
  var levelIndicatorStyle: NSLevelIndicatorStyle
  var minValue: Double
  var maxValue: Double
  var warningValue: Double
  var criticalValue: Double
  var tickMarkPosition: NSTickMarkPosition
  var numberOfTickMarks: Int
  var numberOfMajorTickMarks: Int
  func rectOfTickMarkAt(index: Int) -> Rect
  func tickMarkValueAt(index: Int) -> Double
  func setImage(image: NSImage?)
  init(textCell aString: String)
  init(imageCell image: NSImage?)
  convenience init()
  init?(coder aDecoder: Coder)
}