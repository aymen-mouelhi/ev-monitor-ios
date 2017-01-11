//
//  INFindChargerIntentResponse.swift
//  EVlink Charger
//
//  Created by aymen mouelhi on 11/01/2017.
//  Copyright © 2017 aymen mouelhi. All rights reserved.
//

import Foundation
import Intents

@available(iOS 10.0, *)
public enum INFindChargerIntentResponseCode : Int {
    
    case unspecified
    
    case ready
    
    case inProgress
    
    case success
    
    case failure
    
    case failureRequiringAppLaunch
    
    case failureMessageServiceNotAvailable
}

@available(iOS 10.0, *)
open class INFindChargerIntentResponse : INIntentResponse {
    
    open var userActivity: NSUserActivity?
    var code: INFindChargerIntentResponseCode
    
    
    // The app extension has the option of capturing its private state as an NSUserActivity and returning it as the 'currentActivity'.
    // If the the app is launched, an NSUserActivity will be passed in with the private state.  The NSUserActivity may also be used to query the app's UI extension (if provided) for a view controller representing the current intent handling state.
    // In the case of app launch, the NSUserActivity will have its activityType set to the name of the intent. This intent object will also be available in the NSUserActivity.interaction property.
    public init(code: INFindChargerIntentResponseCode, userActivity: NSUserActivity?){
        self.code = code
        self.userActivity = userActivity
        super.init()
    }
    
    required convenience public init?(coder decoder: NSCoder) {
        guard let code = decoder.decodeObject(forKey: "code") as? INFindChargerIntentResponseCode,
            let userActivity = decoder.decodeObject(forKey: "userActivity") as? NSUserActivity
            else { return nil }
        
        self.init(
            code: code,
            userActivity: userActivity
        );
    }

}
