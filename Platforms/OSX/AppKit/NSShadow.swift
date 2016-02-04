
class NSShadow : Object, Copying, Coding {
  init()
  var shadowOffset: Size
  var shadowBlurRadius: CGFloat
  @NSCopying var shadowColor: NSColor?
  func set()
  func copy(zone zone: Zone = nil) -> AnyObject
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}