//
//  File.swift
//  DevApp
//
//  Created by Kojiro Ito on 2023/12/27.
//

import SwiftUI

struct ContentView2: View {
    /// List of users
    @State var users: [User] = [
        User(id: 0, firstName: "Cindy", lastName: "Jones", age: 23, mutualFriends: 4, imageName: "person_1", occupation: "Coach"),
        User(id: 1, firstName: "Mark", lastName: "Bennett", age: 27, mutualFriends: 0, imageName: "person_2", occupation: "Insurance Agent"),
        User(id: 2, firstName: "Clayton", lastName: "Delaney", age: 20, mutualFriends: 1, imageName: "person_3", occupation: "Food Scientist"),
        User(id: 3, firstName: "Brittni", lastName: "Watson", age: 19, mutualFriends: 4, imageName: "person_4", occupation: "Historian"),
        User(id: 4, firstName: "Archie", lastName: "Prater", age: 22, mutualFriends:18, imageName: "person_5", occupation: "Substance Abuse Counselor"),
        User(id: 5, firstName: "James", lastName: "Braun", age: 24, mutualFriends: 3, imageName: "person_6", occupation: "Marketing Manager"),
        User(id: 6, firstName: "Danny", lastName: "Savage", age: 25, mutualFriends: 16, imageName: "person_7", occupation: "Dentist"),
        User(id: 7, firstName: "Chi", lastName: "Pollack", age: 29, mutualFriends: 9, imageName: "person_8", occupation: "Recreational Therapist"),
        User(id: 8, firstName: "Josue", lastName: "Strange", age: 23, mutualFriends: 5, imageName: "person_9", occupation: "HR Specialist"),
        User(id: 9, firstName: "Debra", lastName: "Weber", age: 28, mutualFriends: 13, imageName: "person_10", occupation: "Judge")
    ]
    
    private var maxID: Int {
        return self.users.map { $0.id }.max() ?? 0
    }
    
    var body: some View {
        ZStack {
            ForEach(self.users, id: \.self) { user in
                
                // Range Operator
                if (self.maxID - 3)...self.maxID ~= user.id {
                    CardView(user: user, onRemove: { removedUser in
                        // Remove that user from our array
                        self.users.removeAll { $0.id == removedUser.id }
                    })
                    .frame(height: 400)
                }
            }
        }
        .padding()
    }
    
    public let key = "AAAAQggROAA:APA91bHZZPZbghiYsGUOzH0xyJP76mbhATFE-Z7AXcK5HMtlgCiG_Su3QmMfmESDYBRJJyXhigxHfRiHyQU33p4-QWtYze7uA8iHRJWJKJe3QtG1rp_EdifOezswZp3cfCb_AQniSJ5z"
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}


