require_relative 'item'
class Order
 attr_accessor :items

	def initialize(item_lists)
	 @items = []
		 item_lists.each do |item|
		  @items << Item.new(item)
		 end
	end

	def receipt

		sales_tax=0
		total=0
		s=""
	@items.each do |item|
		s += "#{item.quantity} #{item.name}: #{item.total_price}\n"
		sales_tax+=item.tax
		total+=item.total_price
	end
	s+="Sales Taxes: #{sales_tax}\nTotal: #{total}"
		
	end

end


#Order.new(["1 imported bottle of perfume at 27.99",
#{}"1 bottle of perfume at 18.99",
#{}"1 packet of headache pills at 9.75",
#{}"1 box of imported chocolates at 11.25"]).receipt