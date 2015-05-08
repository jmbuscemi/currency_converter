class Currency
  attr_reader :amount, :code
  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def ==(input)
    @amount == input.amount && @code == input.code
  end



end
