import UIKit

struct People {
    var name: String
    var surname: String
    var money: Int
    var useBank: Int
    var useCard: Int
}

enum TypeSort {
    case money
    case useBank
    case useCard
}

let one = People(name: "Dmitro", surname: "Smith", money: 1500, useBank: 5, useCard: 10)
let two = People(name: "Anrew", surname: "Brook", money: 1700, useBank: 2, useCard: 2)
let three = People(name: "Anastasia", surname: "Harris", money: 1850, useBank: 7, useCard: 7)
let four = People(name: "Ivan", surname: "Collins", money: 1050, useBank: 1, useCard: 1)
let five = People(name: "Nikola", surname: "Douglass", money: 2850, useBank: 2, useCard: 3)
let six = People(name: "Dima", surname: "Jokic", money: 2350, useBank: 4, useCard: 5)
let seven = People(name: "Fiodar", surname: "Henlon", money: 2050, useBank: 3, useCard: 4)
let eight = People(name: "Naida", surname: "Brozovich", money: 3250, useBank: 6, useCard: 6)

let persons = [one, two, three, four, five, six, seven, eight]

//Первая функция выводит всех людей по убыванию финансов:

private func getSortedPeopleByMoney(_ people: [People], with type: TypeSort) -> [People] {
    people.sorted { $0.money > $1.money }
}

print(getSortedPeopleByMoney(persons, with: .money))
print("//=====================================================================================================================================================")

//Вторая функция выводит всех людей по убыванию используемого количества банков:

private func getSortedPeopleByUseBank(_ people: [People], with type: TypeSort) -> [People] {
    people.sorted { $0.useBank > $1.useBank }
}

print(getSortedPeopleByUseBank(persons, with: .useBank))
print("//=====================================================================================================================================================")

//Третья функция выводит всех людей по убыванию используемого количества карт:

private func getSortedPeopleByUseCard(_ people: [People], with type: TypeSort) -> [People] {
    people.sorted { $0.useCard > $1.useCard }
}

print(getSortedPeopleByUseCard(persons, with: .useCard))
print("//=====================================================================================================================================================")

struct Bank {
    var name: String
    var money: Int
}

enum TypeSorted {
    case money
}

let oneBank = Bank(name: "BNP", money: 15000)
let twoBank = Bank(name: "CrediAgricol", money: 21500)
let threeBank = Bank(name: "Tinkoff", money: 13500)
let fourBank = Bank(name: "Santander", money: 41500)
let fiveBank = Bank(name: "Rabobank", money: 15500)
let sixBank = Bank(name: "Barclays", money: 61500)
let sevenBank = Bank(name: "UBS", money: 17500)
let eightBank = Bank(name: "Petia", money: 81500)

let banks = [oneBank, twoBank, threeBank, fourBank, fiveBank, sixBank, sevenBank, eightBank]

//Функция выводит все банки по убыванию финансов:

private func getSortedBankByMoney(_ bank: [Bank], with type: TypeSorted) -> [Bank] {
    bank.sorted { $0.money > $1.money }
}

print(getSortedBankByMoney(banks, with: .money))
print("//=====================================================================================================================================================")

struct Card {
    var firstSection: Int
    var secondSection: Int
    var thirdSection: Int
    var fourthSection: Int
    var name: String
    var surname: String
    var month: Int
    var slash: String
    var year: Int
}

enum TypeSortCards{
    case year
}

let oneCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Dmitro", surname: "Smith", month: 01, slash: "/", year: 23)
let twoCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Anastasia", surname: "Harris", month: 01, slash: "/", year: 24)
let threeCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Ivan", surname: "Collins", month: 01, slash: "/", year: 25)
let fourCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Nikola", surname: "Douglass", month: 01, slash: "/", year: 26)
let fiveCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Dima", surname: "Jokic", month: 01, slash: "/", year: 23)
let sixCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Dmitro", surname: "Smith", month: 01, slash: "/", year: 24)
let sevenCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Fiodar", surname: "Henlon", month: 01, slash: "/", year: 25)
let eightCard = Card(firstSection: 1232, secondSection: 1232, thirdSection: 3455, fourthSection: 4554, name: "Naida", surname: "Brozovich", month: 01, slash: "/", year: 27)

let cards = [oneCard, twoCard, threeCard, fourCard, fiveCard, sixCard, sevenCard, eightCard]

//Функция карты по возрастанию года действия карты:

private func getSortedCardsByYear(_ card: [Card], with type: TypeSortCards) -> [Card] {
    card.sorted { $0.year < $1.year }
}

print(getSortedCardsByYear(cards, with: .year))


