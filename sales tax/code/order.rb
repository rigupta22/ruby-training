require_relative 'item'
# Order class for calculating taxes
class Order
  attr_accessor :items

  def initialize(item_lists)
    @items = []
    item_lists.each do |item|
      @items << Item.new(item)
    end
  end

  def receipt
    sales_tax = 0
    total = 0
    s = ''
    @items.each do |item|
      s += '#{item.quantity} #{item.name}: #{item.total_price}\n'
      sales_tax += item.tax
      total += item.total_price
    end
    s += 'Sales Taxes: #{sales_tax}\nTotal: #{total}'
  end
end
