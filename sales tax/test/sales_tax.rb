
class Item
	attr_accessor :quantity ,:name ,:price

	def initialize("input specifying quantity, name and price of item")

	#code to identify quantity,name and price of item

    @quantity= quantity
    @name=name
    @price=price

	end

	# args : none
	#return true if item is imported else false

	def imported?
	#code to find if item is imported or not

	end

	# args : none
	#return true is item is exempted else false

	def exempt?
	#code to find item is exempted or not

	end

	def tax

	#logic to compute tax from quantity and price of item

	end




end	






