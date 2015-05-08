class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_reader :amount, :code
  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(input)
    @amount == input.amount && @code == input.code
  end

  def +(new_money)
    if @code == new_money.code
      Currency.new(@amount + new_money.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate."
    end
  end

  def -(new_money)
    if @code == new_money.code
      Currency.new(@amount - new_money.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate."
    end
  end

  def *(exchange_rate)
    Currency.new(@amount.to_f * exchange_rate, @code)
  end


end
