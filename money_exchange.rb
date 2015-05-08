require "./currency.rb"
require "./currency_converter.rb"

currency_converter = CurrencyConverter.new({USD: 1.00000, EUR: 0.89252,
                                         GBP: 0.64726, JPY: 119.733})

p currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)



########################################################
#### Test Currency Object requirements
# john_money = Currency.new(10, :USD)
# jim_money = Currency.new(10, :USD)
# new_money = Currency.new("$ 1.25")
# string_test = Currency.new("€ 1000.43")
# puts "*******Create Currency objects*******"
# puts "John has #{john_money.amount} #{john_money.code}."
# puts "Joe has #{jim_money.amount} #{jim_money.code}."
# puts ""
#
# puts "*******Test Currency Equality*******"
# puts john_money == jim_money #true if amount/currency are same
# puts ""
#
# #Add money
# puts "*******Add Currency objects*******"
# total_money = john_money + new_money
# puts "You now have #{total_money.amount} #{total_money.code}"
# puts ""
#
# puts "*******Subtract Currency objects*******"
# #Subtract money
# less_money = john_money - new_money
# puts "You now have #{less_money.amount} #{less_money.code}"
# puts ""
#
# puts "*******Multiply Currency*******"
# #Multiply
# converted_money = john_money * (2.5)
# puts "You now have #{converted_money.amount}"
# puts ""
#
# puts "*******Allow for $ Input*******"
# p string_test.code
# p string_test.amount
