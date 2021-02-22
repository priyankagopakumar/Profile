//
//  CoreDataManager.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 2/17/21.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let sharedManager = CoreDataManager()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Profile")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    /*
     func getAllTransactions() -> [Transactions] {
         var trns: [Transactions] = []
         let context = persistentContainer.viewContext
         do {
             trns = try context.fetch(Transactions.fetchRequest())
         }
         catch {
             print("An error occurred")
         }
         return trns
     }
     
     func createTransaction(id: Int32, desc: String, amount: Double, type: String, source: String, created: Date) {
         let newTrn = Transactions(context: persistentContainer.viewContext)
         newTrn.id = id
         newTrn.desc = desc
         newTrn.amount = amount
         newTrn.type = type
         newTrn.source = source
         newTrn.created = created
         saveContext()
     }
     
     func createFeature(name: String, desc: String, id: Int) {
         let context = persistentContainer.viewContext
         let newFeature = Features(context: context)
         newFeature.name = name
         newFeature.desc = desc
         saveContext()
     }
     
     func deleteFeature(item: Features) {
         let context = persistentContainer.viewContext
         context.delete(item)
         saveContext()
     }
     
     func updateFeature(item: Features, newDesc: String) {
         let context = persistentContainer.viewContext
         item.desc = newDesc
         saveContext()
     }
     */
}
