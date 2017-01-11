//
//  INFindChargerIntent.swift
//  EVlink Charger
//
//  Created by aymen mouelhi on 11/01/2017.
//  Copyright © 2017 aymen mouelhi. All rights reserved.
//

import Foundation
import Intents

@available(iOS 10.0, *)
open class INFindChargerIntent : INIntent {
    
    var recipients: [INPerson]
    var content: String
    var groupName: String
    var serviceName: String
    var sender: INPerson?
    
    /*
    // Contacts to whom the message should be sent.
    open var recipients: [INPerson]? {
        get {
            return self.recipients
        }
        set (recip){
            
        }
    }
    
    
    // Body text of the message.
    open var content: String? { return self.content }
    
    
    open var groupName: String? { return self.groupName }
    
    
    // Specified service for the message.
    open var serviceName: String? { return self.serviceName }
    
    
    // The person, or account, sending the message.
    @NSCopying open var sender: INPerson? { return self.sender }
    */
    
    public init(recipients: [INPerson]?, content: String?, groupName: String?, serviceName: String?, sender: INPerson?){
        self.recipients = recipients!
        self.content = content!
        self.groupName = groupName!
        self.serviceName = serviceName!
        self.sender = sender
        super.init()
    }
    
    required public convenience init?(coder decoder: NSCoder) {
        
        self.init(
            recipients: recipients,
            content: content,
            groupName: groupName,
            serviceName: serviceName,
            sender: sender
        );
    }
    
}

