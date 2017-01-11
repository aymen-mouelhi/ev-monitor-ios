//
//  INFindChargingStationsIntent.h
//  EVlink Charger
//
//  Created by aymen mouelhi on 11/01/2017.
//  Copyright © 2017 aymen mouelhi. All rights reserved.
//

import Foundation
import Intents

@available(iOS 10.0, *)
open class INFindChargingStationsIntent : INIntent {
    
    
    public init(recipients: [INPerson]?, content: String?, groupName: String?, serviceName: String?, sender: INPerson?)
    
    
    // Contacts to whom the message should be sent.
    open var recipients: [INPerson]? { get }
    
    
    // Body text of the message.
    open var content: String? { get }
    
    
    open var groupName: String? { get }
    
    
    // Specified service for the message.
    open var serviceName: String? { get }
    
    
    // The person, or account, sending the message.
    @NSCopying open var sender: INPerson? { get }
}


/*!
 @brief Protocol to declare support for handling an INSendMessageIntent
 @abstract By implementing this protocol, a class can provide logic for resolving, confirming and handling the intent.
 @discussion The minimum requirement for an implementing class is that it should be able to handle the intent. The resolution and confirmation methods are optional. The handling method is always called last, after resolving and confirming the intent.
 */
@available(iOS 10.0, *)
public protocol INFindChargingStationsIntentHandling : NSObjectProtocol {
    
    
    
    /*!
     @brief handling method
     
     @abstract Execute the task represented by the INSendMessageIntent that's passed in
     @discussion Called to actually execute the intent. The app must return a response for this intent.
     
     @param  sendMessageIntent The input intent
     @param  completion The response handling block takes a INSendMessageIntentResponse containing the details of the result of having executed the intent
     
     @see  INSendMessageIntentResponse
     */
    public func handle(sendMessage intent: INFindChargingStationsIntent, completion: @escaping (INFindChargingStationsIntentResponse) -> Swift.Void)
    
    
    
    /*!
     @brief Confirmation method
     @abstract Validate that this intent is ready for the next step (i.e. handling)
     @discussion Called prior to asking the app to handle the intent. The app should return a response object that contains additional information about the intent, which may be relevant for the system to show the user prior to handling. If unimplemented, the system will assume the intent is valid following resolution, and will assume there is no additional information relevant to this intent.
     
     @param  sendMessageIntent The input intent
     @param  completion The response block contains an INSendMessageIntentResponse containing additional details about the intent that may be relevant for the system to show the user prior to handling.
     
     @see INSendMessageIntentResponse
     
     */
    optional public func confirm(sendMessage intent: INFindChargingStationsIntent, completion: @escaping (INFindChargingStationsIntentResponse) -> Swift.Void)
    
    
    
    /*!
     @brief Resolution methods
     @abstract Determine if this intent is ready for the next step (confirmation)
     @discussion Called to make sure the app extension is capable of handling this intent in its current form. This method is for validating if the intent needs any further fleshing out.
     
     @param  sendMessageIntent The input intent
     @param  completion The response block contains an INIntentResolutionResult for the parameter being resolved
     
     @see INIntentResolutionResult
     
     */
    optional public func resolveRecipients(forSendMessage intent: INFindChargingStationsIntent, with completion: @escaping ([INPersonResolutionResult]) -> Swift.Void)
    
    
    optional public func resolveContent(forSendMessage intent: INFindChargingStationsIntent, with completion: @escaping (INStringResolutionResult) -> Swift.Void)
    
    
    optional public func resolveGroupName(forSendMessage intent: INFindChargingStationsIntent, with completion: @escaping (INStringResolutionResult) -> Swift.Void)
}
