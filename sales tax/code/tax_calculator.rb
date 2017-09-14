# calculate taxes and price
module TaxCalculator
  def tax
    rate = 0.0
    rate += 0.05 if imported?
    rate += 0.10 unless exempt?
    (@price * rate * @quantity).round(2)
  end

  def total_price
    ((@quantity * @price) + tax).round(2)
  end
end
