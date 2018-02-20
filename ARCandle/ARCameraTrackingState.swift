import Foundation
import ARKit

extension ARCamera.TrackingState {
	var presentationString: String {
		switch self {
        case .notAvailable:
            return "平面寻找出现异常啦"
        case .normal:
            return "寻找平面中"
        case .limited(let reason):
            switch reason {
            case .excessiveMotion:
                return "摄像机太过晃动啦"
            case .insufficientFeatures:
                return "平面周围环境信息还不够"
            case .initializing:
                return "找个可以放东西的平面吧"
            }
        }
	}
}
