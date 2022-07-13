//
//  Profile.swift
//  landmarks
//
//  Created by frank0 on 2022/7/13.
//

import Foundation


struct Profile {
    
    var username : String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    
    static let `default` = Profile(username: "frank0")
    
    
    enum Season : String ,CaseIterable,Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id : String { rawValue }
    }
}
