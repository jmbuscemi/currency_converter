class DifferentCurrencyCodeError < StandardError
end

class Currency
  attr_reader :code, :amount
  def initialize(amount = nil, code)
    code_hash = {"$" => :USD, "€"=> :EUR,"¥"=> :JPY, "£"=>  :GBP}
    if amount
      @code = code.to_sym
      @amount = amount
    else
      @code = code_hash[code[0]]
      @amount = code[1..-1].to_f
    end
  end

  def ==(input)
    @amount == input.amount && @code == input.code
  end

  def +(new_money)
    if @code == new_money.code
      Currency.new(@amount + new_money.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate"
    end
  end

  def -(new_money)
    if @code == new_money.code
      Currency.new(@amount - new_money.amount, @code)
    else
      raise DifferentCurrencyCodeError, "Different currency codes: Can't operate"
    end
  end

  def *(exchange_rate)
    Currency.new(@amount.to_f * exchange_rate, @code)
  end


end
