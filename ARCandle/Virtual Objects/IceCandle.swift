import Foundation
import SceneKit

class IceCandle: VirtualObject/*, ReactsToScale*/ {

	override init() {
		super.init(modelName: "ice_candle", fileExtension: "scn", thumbImageFilename: "candle", title: "寒冰蜡烛")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

//	func reactToScale() {
//		// Update the size of the flame
//		let flameNode = self.childNode(withName: "flame", recursively: true)
//		let particleSize: Float = 0.018
//		flameNode?.particleSystems?.first?.reset()
//		flameNode?.particleSystems?.first?.particleSize = CGFloat(self.scale.x * particleSize)
//	}
}
