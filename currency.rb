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

  def +(other)
    if @code == other.code
      @amount + other.amount
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate."
    end
  end


end