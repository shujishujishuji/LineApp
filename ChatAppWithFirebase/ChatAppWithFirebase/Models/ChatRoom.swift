//
//  ChatRoom.swift
//  ChatAppWithFirebase
//
//  Created by taniguchi shuji on 2021/09/10.
//

import Foundation
import Firebase
import FirebaseFirestore

class ChatRoom {
    
    let latestMissageId: String
    let members: [String]
    let createdAt: Timestamp
    
    var latestMessage: Message?
    var documentId: String?
    var partnerUser: User?
    
    init(dic: [String: Any]) {
        self.latestMissageId = dic["latestMessageId"] as? String ?? ""
        self.members = dic["members"] as? [String] ?? [String]()
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
    }
}
