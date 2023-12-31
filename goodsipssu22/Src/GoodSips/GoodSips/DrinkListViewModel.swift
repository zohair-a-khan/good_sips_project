//
// DrinkListViewModel.swift
// Good Sips
//
// DrinkListViewModel : Creating drink list structure
// Connected To : Webservice, Drink
//
// Created by Katelin Vincent, Jordan Finney on 4/2/22.
// Tested by Zohair Khan on 6/20/22

import Foundation
import SwiftUI

class DrinkListViewModel: ObservableObject{

    @Published var drinks: [DrinkViewModel] = []
    @Published var searchName: String = ""
    init(){
        
        Task(priority: .userInitiated){
            print(#function + ":: init :: task")
            await search(name: searchName)
        }
    }
    func search(name: String) async{
    
        print(#function)
        do{
        let drinks = try await Webservice().getDrinks(searchTerm: name)
            DispatchQueue.main.async {
                self.drinks = drinks.map(DrinkViewModel.init)
            }
        } catch {
            print(error)
        }
    }
}


class DrinkViewModel : ObservableObject{
    let drink: Drink
    init(drink:Drink){
        self.drink = drink
    }
    var strDrink: String {
        drink.strDrink
    }
    var strAlcoholic: String {
        drink.strAlcoholic
    }
    var strInstructions: String {
        drink.strInstructions
    }
    var strIngredient1: String {
        drink.strIngredient1 ?? ""
    }
    var strIngredient2: String {
        drink.strIngredient2 ?? ""
    }
    var strIngredient3: String {
        drink.strIngredient3 ?? ""
    }
    var strIngredient4: String {
        drink.strIngredient4 ?? ""
    }
    var strIngredient5: String {
        drink.strIngredient5 ?? ""
    }
    var strIngredient6: String {
        drink.strIngredient6 ?? ""
    }
    var strIngredient7: String {
        drink.strIngredient7 ?? ""
    }
    var strIngredient8: String {
        drink.strIngredient8 ?? ""
    }
    var strIngredient9: String {
        drink.strIngredient9 ?? ""
    }
    var strIngredient10: String {
        drink.strIngredient10 ?? ""
    }
    var strIngredient11: String {
        drink.strIngredient11 ?? ""
    }
    var strIngredient12: String {
        drink.strIngredient12 ?? ""
    }
    var strIngredient13: String {
        drink.strIngredient13 ?? ""
    }
    var strIngredient14: String {
        drink.strIngredient14 ?? ""
    }
    var strIngredient15: String {
        drink.strIngredient15 ?? ""
    }
    var strMeasure1: String {
        drink.strMeasure1 ?? ""
    }
    var strMeasure2: String {
        drink.strMeasure2 ?? ""
    }
    var strMeasure3: String {
        drink.strMeasure3 ?? ""
    }
    var strMeasure4: String {
        drink.strMeasure4 ?? ""
    }
    var strMeasure5: String {
        drink.strMeasure5 ?? ""
    }
    var strMeasure6: String {
        drink.strMeasure6 ?? ""
    }
    var strMeasure7: String {
        drink.strMeasure7 ?? ""
    }
    var strMeasure8: String {
        drink.strMeasure8 ?? ""
    }
    var strMeasure9: String {
        drink.strMeasure9 ?? ""
    }
    var strMeasure10: String {
        drink.strMeasure10 ?? ""
    }
    var strMeasure11: String {
        drink.strMeasure11 ?? ""
    }
    var strMeasure12: String {
        drink.strMeasure12 ?? ""
    }
    var strMeasure13: String {
        drink.strMeasure13 ?? ""
    }
    var strMeasure14: String {
        drink.strMeasure14 ?? ""
    }
    var strMeasure15: String {
        drink.strMeasure15 ?? ""
    }
    var strImageAttribution: URL? {
        URL(string: drink.strImageAttribution ?? "")
    }
    var strGlass: String {
        drink.strGlass ?? ""
    }
}
