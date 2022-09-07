//
//  usersPresenter.swift
//  CoreDataHW26
//
//  Created by Andrei Maskal on 21/08/2022.
//

import Foundation

protocol UsersPresenterType {
    var users: [Person] { get set }
    func saveContext()
    func fetchData()
    func save(_ nameUser: String)
    func deleteUser(_ user: Person, indexPath: IndexPath)
}

class UsersPresenter: UsersPresenterType {
    
    var users = [Person]()
    
    func saveContext() {
        ServiceCoreData.shared.saveContext()
    }

    func fetchData() {
        users = ServiceCoreData.shared.fetchData() ?? []
        
    }
    
    func save(_ nameUser: String) {
        ServiceCoreData.shared.save(nameUser)
        fetchData()
    }
    
    func deleteUser(_ user: Person, indexPath: IndexPath) {
        ServiceCoreData.shared.deleteUser(user, indexPath: indexPath)
        fetchData()
    }
}

