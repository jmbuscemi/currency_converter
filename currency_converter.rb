class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter
  attr_reader :hash

  def initialize(hash)
    @conversion_rates = hash
  end

  def convert(currency, code)
    if !@conversion_rates.include?(currency.code) || !@conversion_rates.include?(code)
      raise UnknownCurrencyCodeError, "Unknown currency code!!"
    else
      Currency.new(currency.amount * (@conversion_rates[code] / @conversion_rates[currency.code]), code)
    end
  end


end
