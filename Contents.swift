//This playground mimicks an interactive burger menu
import UIKit





class Burger
{
    //I am using enums for all customization options
    //This enum holds all bun options.
    enum BreadOptions
    {
        case White
        case Sesame
        case Pretzel
        case Ciabatta
        case Fococcia
        case Wheat
        case Pumpernickel
        case Plain
    }
    
    //This enumeration holds all patty options.
    enum PattyOptions
    {
        case Classic
        case Bison
        case Veggie
    }
    
    //This enum holds all of the cheese options
    enum CheeseOptions
    {
        case Swiss
        case Cheddar
        case Pepper_Jack
        case American
    }
    
    //This enum holds all topping options
    enum ToppingOptions
    {
        case None
        case Bacon
        case Lettuce
        case Tomato
        case Onion
        case Mushrooms
        case Onion_Rings
        case Pickles
        case Jalapenos
        case Egg
        case Avocado
        case Empty
    }
    
    //This enum holds all condiment options
    enum CondimentOptions
    {
        case None
        case Mustard
        case Ketchup
        case Mayonnaise
        case BBQ
        case Hot_Sauce
        case Empty
    }
    
    //Here, I instantiate a variable to hold a bread enum value.
    //Plain is random, but it works because it is the default.
    var breadChoice = BreadOptions.Plain
    
    //Here is a declaration of a variable to hold a patty enum value
    var pattyChoice = PattyOptions.Classic
    
    //Here I declare a variable to hold a cheese enum value
    var cheeseChoice = CheeseOptions.American
    
    //Here, I declare an array to hold all topping choices (most people want more than one)
    var toppingChoice = [ToppingOptions.Empty]
    
    //This is an array to hold all condiment choices
    var condimentChoice = [CondimentOptions.Empty]
    
    
    //This section contains functions that convert 'user input' 
    //to an enum value from a string so I can use the enum value 
    //in a switch statement
    func selectBunType(b : String) -> BreadOptions
    {
        
        
            if b == "White"
            {breadChoice = .White}
            else if b == "Sesame"
            {breadChoice = .Sesame}
            else if b == "Pretzel"
            {breadChoice = .Pretzel}
            else if b == "Ciabatta"
            {breadChoice = .Ciabatta}
            else if b == "Fococcia"
            {breadChoice = .Fococcia}
            else if b == "Wheat"
            {breadChoice = .Wheat}
            else if b == "Pumpernickel"
            {breadChoice = .Pumpernickel}
            else
            {breadChoice = .Plain}
        
        return breadChoice
    }
    
    func selectPattyType(p : String) -> PattyOptions
    {
        if p == "Bison"
        {pattyChoice = .Bison}
        else if p == "Veggie"
        {pattyChoice = .Veggie}
        else
        {pattyChoice = .Classic}
        
        return pattyChoice
    }
    
    func selectCheeseType(c : String) -> CheeseOptions
    {
        switch c
        {
            case "Swiss":
                cheeseChoice = .Swiss
            case "Cheddar":
                cheeseChoice = .Cheddar
            case "Pepper Jack":
                cheeseChoice = .Pepper_Jack
        default:
                cheeseChoice = .American
            }
        return cheeseChoice
    }
    
    func selectToppings(t : [String]) -> [ToppingOptions]
    {
        for items in t
        {
            switch items
            {
                case "None":
                    toppingChoice.append(.None)
                case "Bacon":
                    toppingChoice.append(.Bacon)
                case "Lettuce":
                    toppingChoice.append(.Lettuce)
                case "Tomato":
                    toppingChoice.append(.Tomato)
                case "Onion":
                    toppingChoice.append(.Onion)
                case "Sauteed Mushrooms":
                    toppingChoice.append(.Mushrooms)
                case "Onion Rings":
                    toppingChoice.append(.Onion_Rings)
                case "Pickles":
                    toppingChoice.append(.Pickles)
                case "Jalapenos":
                    toppingChoice.append(.Jalapenos)
                case "Fried Egg":
                    toppingChoice.append(.Egg)
                case "Avocado":
                    toppingChoice.append(.Avocado)
            default:
                toppingChoice.append(.None)
            }
        }
        return toppingChoice
    }
    
    func selectCondiments(con : [String]) -> [CondimentOptions]
    {
        for condiment in con
        {
            switch condiment
            {
            case "None":
                condimentChoice.append(.None)
            case "Mustard":
                condimentChoice.append(.Mustard)
            case "Ketchup":
                condimentChoice.append(.Ketchup)
            case "Mayonnaise":
                condimentChoice.append(.Mayonnaise)
            case "BBQ Sauce":
                condimentChoice.append(.BBQ)
            case "Hot Sauce":
                condimentChoice.append(.Hot_Sauce)
            default:
                condimentChoice.append(.None)
            
            }
            
        }
        return condimentChoice
    }

    //This section contains all functions for displaying
    // the final order
    func displayBunType(breadChoice : BreadOptions)
    {
        
        switch breadChoice
        {
        case .White:
            println(" plain white bread")
        case .Sesame:
            println(" a sesame bun")
        case .Pretzel:
            println(" pretzel bread")
        case .Ciabatta:
            println(" an artisinal ciabatta roll")
        case .Fococcia:
            println(" artisinal fococcia bread")
        case .Wheat:
            println(" healthy wheat bread")
        case .Pumpernickel:
            println(" hearty pumpernickel bread")
        default:
            println (" a boring plain bun")
        }
    }
    func displayPattyType()
    {
        switch pattyChoice
        {
            case .Bison:
                println("You've chosen a bison burger on")
            case .Classic:
                println("You've chosen a classic beef patty on")
            case .Veggie:
                println("You've chosen a veggie burger on")
        }
    }
    
    func displayCheeseType()
    {
        switch cheeseChoice
        {
        case .American:
            println(" with American cheese")
        case .Cheddar:
            println(" with Cheddar cheese")
        case .Pepper_Jack:
            println(" with Pepper Jack cheese")
        case .Swiss:
            println(" with Swiss cheese")
        }
    }
    
    func displayToppings()
    {
        for topping in toppingChoice
        {
            switch topping
            {
            case .None:
                println("no toppings")
            case .Bacon:
                println("bacon")
            case .Lettuce:
                println("lettuce")
            case .Tomato:
                println("tomato")
            case .Onion:
                println("onion")
            case .Mushrooms:
                println("sauteed mushrooms")
            case .Onion_Rings:
                println("onion rings")
            case .Pickles:
                println("pickles")
            case .Jalapenos:
                println("jalapenos")
            case .Egg:
                println("fried egg")
            case .Avocado:
                println("avocado")
            default:
                println(" ")
            }
        }
    }
    
    
    func displayCondiments()
        {
            for condiment in condimentChoice
            {
                switch condiment
                {
                case .None:
                    println(" and no condiments")
                case .Mustard:
                    println(" mustard ")
                case .Ketchup:
                    println(" ketchup ")
                case .Mayonnaise:
                    println(" mayonnaise ")
                case .BBQ:
                    println(" BBQ sauce ")
                case .Hot_Sauce:
                    println(" hot sauce ")
                case .Empty:
                    println(" ")
                default:
                    println(" and no condiments")
                }
            }
        }
    
   
}
struct Fries
{
    func wouldYouLikeFriesWithThat()
    {
        println("Would you like fries with that?")
    }
    func addFries(f : Bool)
    {
        if f
        {
            println("Fries")
        }
    }
}

//Introduction to the program. So the user knows what's going on
println("Hello, valued customer. Prepare to embark on the burger customization journey.")
println("")

//Instantiate a burger object
let myBurger = Burger()
let myFries = Fries()

var bread = "Wheat"
var patty = "Classic"
var cheese = "American"
var toppings = ["Sauteed Mushrooms", "Bacon", "Onion Rings", "Fried Egg", "Avocado"]
var condiments = ["Mustard"]
var frenchFries = false

//Bread prompt with menu
println("Select the type of bun you would like to enjoy your burger on")
println("-------------------------------------------------------------")
println("White")
println("Sesame")
println("Pretzel")
println("Ciabatta")
println("Fococcia")
println("Wheat")
println("Pumpernickel")
println("Plain")
println("")

myBurger.selectBunType(bread) //Assigns the bread string to an enum for further use
println("Input: \(bread)")    //Just to mimick input. Just displays the bread string value
println("")

//Meat prompt with menu
println("Select the type of meat you would like")
println("--------------------------------------")
println("Classic")
println("Bison")

myBurger.selectPattyType(patty) //Assigns patty string to an enum
println("Input: \(patty)")
println("")

//Cheese prompt with menu
println("Select the type of cheese you would like")
println("----------------------------------------")
println("Swiss")
println("Cheddar")
println("Pepper Jack")
println("American")
println("")

myBurger.selectCheeseType(cheese)
println("Input: \(cheese)")
println("")

//Topping prompt with menu
println("Select the toppings you would like")
println("----------------------------------")
println("None")
println("Bacon")
println("Lettuce")
println("Tomato")
println("Onion")
println("Sauteed Mushrooms")
println("Onion Rings")
println("Pickles")
println("Jalapenos")
println("Fried Egg")
println("Avocado")
println("")
myBurger.selectToppings(toppings)
for topping in toppings
{
    println("Input: \(topping)")
}
println("")

//Condiment prompt with menu
println("Select the condiments you would like")
println("------------------------------------")
println("None")
println("Mustard")
println("Ketchup")
println("Mayonnaise")
println("BBQ Sauce")
println("Hot Sauce")
println("")
myBurger.selectCondiments(condiments)
for condiment in condiments
{
    println("Input: \(condiment)")
}
println("")

//Ask the nice customer if they want fries.
myFries.wouldYouLikeFriesWithThat()



myBurger.displayPattyType()
myBurger.displayBunType(myBurger.selectBunType(bread))
myBurger.displayCheeseType()
myBurger.displayToppings()
myBurger.displayCondiments()
myFries.addFries(frenchFries)







