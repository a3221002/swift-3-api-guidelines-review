
@available(iOS 8.0, *)
class SCNRenderer : Object, SCNSceneRenderer, SCNTechniqueSupport {
  convenience init(context: EAGLContext, options: [Object : AnyObject]? = [:])
  @available(iOS 9.0, *)
  convenience init(device: MTLDevice?, options: [Object : AnyObject]? = [:])
  var scene: SCNScene?
  @available(iOS 8.0, *)
  func renderAtTime(time: CFTimeInterval)
  @available(iOS 9.0, *)
  func renderAtTime(time: CFTimeInterval, viewport: CGRect, commandBuffer: MTLCommandBuffer, passDescriptor renderPassDescriptor: MTLRenderPassDescriptor)
  @available(iOS 8.0, *)
  var nextFrameTime: CFTimeInterval { get }
  @available(iOS, introduced=8.0, deprecated=9.0)
  func render()
  init()
  @available(iOS 8.0, *)
  var sceneTime: TimeInterval
  @available(iOS 8.0, *)
  unowned(unsafe) var delegate: @sil_unmanaged SCNSceneRendererDelegate?
  @available(iOS 8.0, *)
  func hitTest(point: CGPoint, options: [String : AnyObject]? = [:]) -> [SCNHitTestResult]
  @available(iOS 8.0, *)
  func isNode(insideFrustum node: SCNNode, withPointOfView pointOfView: SCNNode) -> Bool
  @available(iOS 9.0, *)
  func nodesInsideFrustumWithPoint(ofView pointOfView: SCNNode) -> [SCNNode]
  @available(iOS 8.0, *)
  func projectPoint(point: SCNVector3) -> SCNVector3
  @available(iOS 8.0, *)
  func unprojectPoint(point: SCNVector3) -> SCNVector3
  @available(iOS 8.0, *)
  var isPlaying: Bool
  @available(iOS 8.0, *)
  var loops: Bool
  @available(iOS 8.0, *)
  var pointOfView: SCNNode?
  @available(iOS 8.0, *)
  var autoenablesDefaultLighting: Bool
  @available(iOS 8.0, *)
  var isJitteringEnabled: Bool
  @available(iOS 8.0, *)
  func prepare(object: AnyObject, shouldAbortBlock block: (() -> Bool)? = nil) -> Bool
  @available(iOS 8.0, *)
  func prepare(objects: [AnyObject], withCompletionHandler completionHandler: ((Bool) -> Void)? = nil)
  @available(iOS 8.0, *)
  var showsStatistics: Bool
  @available(iOS 9.0, *)
  var debugOptions: SCNDebugOptions
  @available(iOS 9.0, *)
  var renderingAPI: SCNRenderingAPI { get }
  @available(iOS 8.0, *)
  var context: UnsafeMutablePointer<Void> { get }
  @available(iOS 9.0, *)
  var currentRenderCommandEncoder: MTLRenderCommandEncoder? { get }
  @available(iOS 9.0, *)
  var device: MTLDevice? { get }
  @available(iOS 9.0, *)
  var colorPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var depthPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var stencilPixelFormat: MTLPixelFormat { get }
  @available(iOS 9.0, *)
  var commandQueue: MTLCommandQueue? { get }
  @available(iOS 9.0, *)
  var audioListener: SCNNode?
  @available(iOS 8.0, *)
  @NSCopying var technique: SCNTechnique?
}
