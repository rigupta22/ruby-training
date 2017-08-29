require "../code/order"
require "test/unit"

class Test_item < Test::Unit::TestCase
	

def test1
assert_equal("1 book: 12.49
1 music CD: 16.49
1 chocolate bar: 0.85
Sales Taxes: 1.5
Total: 29.83",
Order.new(["1 book at 12.49",
"1 music CD at 14.99",
"1 chocolate bar at 0.85"]).receipt)

end

def test2

assert_equal("1 imported box of chocolates: 10.5
1 imported bottle of perfume: 54.63
Sales Taxes: 7.63
Total: 65.13",
Order.new(["1 imported box of chocolates at 10.00",
"1 imported bottle of perfume at 47.50"]).receipt)

end

def test3
assert_equal("1 imported bottle of perfume: 32.19
1 bottle of perfume: 20.89
1 packet of headache pills: 9.75
1 box of imported chocolates: 11.81
Sales Taxes: 6.66
Total: 74.64",
Order.new(["1 imported bottle of perfume at 27.99",
"1 bottle of perfume at 18.99",
"1 packet of headache pills at 9.75",
"1 box of imported chocolates at 11.25"]).receipt)

end
end