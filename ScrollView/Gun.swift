//
//  Gun.swift
//  ScrollView
//
//  Created by Alijon Jumayev on 7/5/24.
//

import UIKit

protocol Gun {
    func shoot()
}

struct Pistol: Gun {
    func shoot() {
        print("Pistol Fired")
    }
}

struct Rifle: Gun {
    func shoot() {
        print("Rifle Fired")
    }
}

struct Shotgun: Gun {
    func shoot() {
        print("Shotgun Fired")
    }
}

struct Player {
    var gun: Gun
    func shoot() {
        gun.shoot()
    }
}
