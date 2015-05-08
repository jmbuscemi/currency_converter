class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_reader :code, :amount
  def initialize(code, amount = 0)
    code_hash = {"$" => "USD", "€" => "EUR","¥" => "JPY", "£" =>  "GBP"}
    @code = code
    @amount = amount
    if amount == 0
      @code = code_hash[code[0]]
      @amount = code[1..-1].to_f
    end
  end

  def ==(input)
    @amount == input.amount && @code == input.code
  end

  def +(new_money)
    if @code == new_money.code
      Currency.new(@code, @amount + new_money.amount)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate."
    end
  end

  def -(new_money)
    if @code == new_money.code
      Currency.new(@code, @amount - new_money.amount)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate."
    end
  end

  def *(exchange_rate)
    Currency.new(@code, @amount.to_f * exchange_rate)
  end


end
