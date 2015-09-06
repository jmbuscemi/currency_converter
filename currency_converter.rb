class UnknownCurrencyCodeError < StandardError
end

class CurrencyConverter

  def initialize(hash)
    @rates = hash
  end

  def convert(currency, code)
    if !@rates.include?(currency.code) || !@rates.include?(code)
      raise UnknownCurrencyCodeError, "Unknown currency code!"
    else
      Currency.new(currency.amount * (@rates[code] / @rates[currency.code]), code)
    end
  end

end
