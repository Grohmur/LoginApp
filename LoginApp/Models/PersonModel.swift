//
//  PersonModel.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 19.12.2021.
//

struct Person {
    let login: String
    let password: String
    let name: String
    let age: Int
    let city: String
    let education: String
    let workPlace: String
    let position: String
    let pet: String
}

let firstUser = Person(login: "user",
                       password: "password",
                       name: "Михаил Зверьков",
                       age: 29,
                       city: "Санкт-Петербург",
                       education: "Высшее юридическое",
                       workPlace: "Налоговая служба",
                       position: "Начальник юридического отдела",
                       pet: "Робот-пылесос")
