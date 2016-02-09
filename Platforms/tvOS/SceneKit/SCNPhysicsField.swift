
@available(tvOS 8.0, *)
enum SCNPhysicsFieldScope : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insideExtent
  case outsideExtent
}
@available(tvOS 8.0, *)
class SCNPhysicsField : Object, Copying, SecureCoding {
  var strength: CGFloat
  var falloffExponent: CGFloat
  var minimumDistance: CGFloat
  var isActive: Bool
  var isExclusive: Bool
  var halfExtent: SCNVector3
  var usesEllipsoidalExtent: Bool
  var scope: SCNPhysicsFieldScope
  var offset: SCNVector3
  var direction: SCNVector3
  @available(tvOS 8.0, *)
  var categoryBitMask: Int
  class func drag() -> SCNPhysicsField
  class func vortex() -> SCNPhysicsField
  class func radialGravity() -> SCNPhysicsField
  class func linearGravity() -> SCNPhysicsField
  class func noiseField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func turbulenceField(withSmoothness smoothness: CGFloat, animationSpeed speed: CGFloat) -> SCNPhysicsField
  class func spring() -> SCNPhysicsField
  class func electric() -> SCNPhysicsField
  class func magnetic() -> SCNPhysicsField
  class func customField(withEvaluationBlock block: SCNFieldForceEvaluator) -> SCNPhysicsField
  init()
  @available(tvOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
typealias SCNFieldForceEvaluator = (SCNVector3, SCNVector3, Float, Float, TimeInterval) -> SCNVector3
