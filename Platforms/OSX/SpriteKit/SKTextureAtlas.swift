
class SKTextureAtlas : Object, Coding {
  convenience init(named name: String)
  @available(OSX 10.10, *)
  convenience init(dictionary properties: [String : AnyObject])
  func textureNamed(name: String) -> SKTexture
  class func preloadTextureAtlases(textureAtlases: [SKTextureAtlas], withCompletionHandler completionHandler: () -> Void)
  @available(OSX 10.11, *)
  class func preloadTextureAtlasesNamed(atlasNames: [String], withCompletionHandler completionHandler: (Error?, [SKTextureAtlas]) -> Void)
  func preloadWithCompletionHandler(completionHandler: () -> Void)
  var textureNames: [String] { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}

extension SKTextureAtlas : CustomPlaygroundQuickLookable {
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}