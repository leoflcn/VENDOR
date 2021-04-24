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
    
    func updateDocumentArray(VM: VM, item: Item) {
        // [START update_document_array]
        let database = db.collection("Vending Machines").document(VM.id!)
        
        var quantities = VM.quantities
        
        quantities[item.id] -= 1
        
        database.updateData([
                    "quantities": FieldValue.delete(),
                ]) { err in
                    if let err = err {
                        print("Error updating document: \(err)")
                    } else {
                        print("Document successfully updated")
                    }
                }

        database.updateData([
            "quantities": FieldValue.arrayUnion(quantities)
        ])
        // Atomically add a new region to the "regions" array field.
        
    }
}
