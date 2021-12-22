//
//  PersonModel.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 19.12.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(login: "user",
             password: "password",
             person: Person.getPerson())
    }
}

struct Person {
    let name: String
    let age: Int
    let city: String
    let education: String
    let workPlace: String
    let position: String
    let status: String
    
    static func getPerson() -> Person {
        Person(name: "Михаил Зверьков",
               age: 29,
               city: "Санкт-Петербург",
               education: "Высшее юридическое",
               workPlace: "Налоговая служба",
               position: "Начальник юридического отдела",
               status: "Женат")
    }
}
