import Foundation
import SceneKit

class Flower: VirtualObject {

    override init() {
        super.init(modelName: "flower_tulip", fileExtension: "scn", thumbImageFilename: "candle", title: "花")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
