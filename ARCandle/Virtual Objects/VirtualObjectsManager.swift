//
//  virtualObjectsManager.swift
//  ARKitProject
//
//  Created by Ignacio Chiazzo on 2017-12-10.
//  Copyright © 2017 Apple. All rights reserved.
//

import SceneKit
import Foundation
import os.log

class VirtualObjectsManager {

	static let shared = VirtualObjectsManager()

	private var nextID = 1
	func generateUid() -> Int {
		nextID += 1
		return nextID
	}

	private var virtualObjects: [VirtualObject] = [VirtualObject]()
	private var virtualObjectSelected: VirtualObject?

	func addVirtualObject(virtualObject: VirtualObject) {
		virtualObjects.append(virtualObject)
	}
    
    func extinguishVirtualObjects() {
        for object in virtualObjects {
            object.removeAllParticleSystems()
        }
        virtualObjectSelected = nil
    }
    
    func dragoningVirtualObjects(firename: String) {
        for object in virtualObjects {
            object.removeAllParticleSystems()
            let dragon = SCNParticleSystem(named: firename, inDirectory: nil)
            object.addParticleSystem(dragon!)
        }
        virtualObjectSelected = nil
    }

	func resetVirtualObjects() {
		for object in virtualObjects {
			object.unloadModel()
			object.removeFromParentNode()
		}
		virtualObjectSelected = nil
		virtualObjects = []
	}

	func removeVirtualObject(virtualObject: VirtualObject) {
		if let index = virtualObjects.index(where: { $0.id == virtualObject.id }) {
			virtualObjects.remove(at: index)
		} else {
			os_log("Element not found", type: .error)
		}
	}

	func removeVirtualObjectSelected() {
		guard let object = virtualObjectSelected else {
			return
		}

		removeVirtualObject(virtualObject: object)
		object.unloadModel()
		object.removeFromParentNode()
		virtualObjectSelected = nil
	}

	func getVirtualObjects() -> [VirtualObject] {
		return self.virtualObjects
	}

	func isAVirtualObjectPlaced() -> Bool {
		return virtualObjectSelected != nil
	}
    
    func setAVirtualObjectPlaced() {
        virtualObjectSelected = nil
    }

	func setVirtualObjectSelected(virtualObject: VirtualObject) {
		self.virtualObjectSelected = virtualObject
	}

	func getVirtualObjectSelected() -> VirtualObject? {
		return self.virtualObjectSelected
	}
}
