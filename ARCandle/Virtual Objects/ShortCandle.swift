import Foundation

class ShortCandle: VirtualObject {

	override init() {
		super.init(modelName: "short_candle", fileExtension: "scn", thumbImageFilename: "candle", title: "白蜡烛")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
