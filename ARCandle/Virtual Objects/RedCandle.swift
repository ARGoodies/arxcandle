import Foundation

class RedCandle: VirtualObject {

	override init() {
		super.init(modelName: "red_candle", fileExtension: "scn", thumbImageFilename: "candle", title: "红蜡烛")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
