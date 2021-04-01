//
//  VMs.swift
//  Vendor
//
//  Created by leo on 2/19/21.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

class VMs: ObservableObject {
    @Published var machines = [VM]()
    
    var db = Firestore.firestore()
    
    func FetchData() {
        
        db.collection("Vending Machines").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
           
            self.machines = documents.compactMap { queryDocumentSnapshot -> VM? in
                return try? queryDocumentSnapshot.data(as: VM.self)
                
            }
        }
    }
}
