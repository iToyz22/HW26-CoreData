//
//  UserInfoPresenter.swift
//  CoreDataHW26
//
//  Created by Andrei Maskal on 21/08/2022.
//

import Foundation

 class DetailsPresenter {
     
    let coreDataService = ServiceCoreData()
    var user = Person()
     
     func updateUser(_ user: Person, name: String,  gender: String?, date: Date) {
         coreDataService.updateUser(user, name: name, gender: gender, date: date)
     }
 }
