require "./currency.rb"
require "./currency_converter.rb"

currency_exchange = CurrencyConverter.new({USD: 1.00000, EUR: 0.89252,
                                         GBP: 0.64726, JPY: 119.733})
dollars = Currency.new(100000, :USD)
dollars_symbol = Currency.new("$100")
dollars_error = Currency.new("&100")
euro = Currency.new(100, :EUR)
euro_symbol = Currency.new("€100")
yen = Currency.new(2000, :JPY)
yen_symbol = Currency.new("¥2000")
uk = Currency.new(100, :GBP)
uk_symbol = Currency.new("£100")

puts "*******Test Currency Converter for 1 USD*******"
p currency_exchange.convert(Currency.new("$1"), :USD) == Currency.new(1, :USD)
puts ""

puts "*******Convert Any to Any*******"
p currency_exchange.convert(dollars, :EUR).amount.round(2)
puts ""

########################################################
#### Test Currency Object requirements
john_money = Currency.new(10, :USD)
jim_money = Currency.new(10, :USD)
new_money = Currency.new("$ 1.25")
string_test = Currency.new("€ 1000.43")
puts "*******Create Currency objects*******"
puts "John has #{john_money.amount} #{john_money.code}."
puts "Jim has #{jim_money.amount} #{jim_money.code}."
puts ""

puts "*******Test Currency Equality*******"
puts john_money == jim_money #true if amount and currency are same
puts ""

#Add money
puts "*******Add Currency objects*******"
total_money = john_money + new_money
puts "You now have #{total_money.amount} #{total_money.code}"
puts ""

puts "*******Subtract Currency objects*******"
#Subtract money
less_money = john_money - new_money
puts "You now have #{less_money.amount} #{less_money.code}"
puts ""

puts "*******Multiply Currency*******"
#Multiply
converted_money = john_money * (2.5)
puts "You now have #{converted_money.amount}"
puts ""

puts "*******Allow for $ Input*******"
p string_test.code
p string_test.amount
