require "./currency.rb"
require "./currency_converter.rb"

john_money = Currency.new(10, "USD")
jim_money = Currency.new(10, "EUR")


puts "John has #{john_money.amount} #{john_money.code}."
puts "Joe has #{jim_money.amount} #{jim_money.code}."


puts john_money + jim_money
