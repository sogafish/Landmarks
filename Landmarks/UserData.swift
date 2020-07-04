//
//  UserData.swift
//  Landmarks
//
//  Created by k.soga on 2020/07/05.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
