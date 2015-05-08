require "./currency.rb"
require "./currency_converter.rb"

john_money = Currency.new(10, "USD")
jim_money = Currency.new(15, "USD")
new_money = Currency.new(23, "USD")


puts "John has #{john_money.amount} #{john_money.code}."
puts "Joe has #{jim_money.amount} #{jim_money.code}."

puts john_money == jim_money #true if amount/currency are same

total_money = john_money + new_money
puts "You now have #{total_money.amount} #{total_money.code}"

less_money = john_money - new_money
puts "You now have #{less_money.amount} #{less_money.code}"
