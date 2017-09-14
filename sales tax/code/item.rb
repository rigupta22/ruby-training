require_relative 'tax_calculator'
# base class for sales tax problem
class Item
  include TaxCalculator
  attr_accessor :name, :quantity, :price
  EXEMPT_LIST = [
    'food' => ['chocolate'],
    'medical' => ['pills'],
    'book' => ['book']
  ].freeze

  # code to identify quantity,name and price of item
  def initialize(str)
    item_detail = str.split
    @quantity = item_detail.first.to_i
    @price = item_detail.last.to_f
    item_detail.shift
    item_detail.pop(2)
    @name = item_detail.join(' ')
  end

  # args : none
  # return true if item is imported else false

  def imported?
    name.include? 'imported'
  end

  # args : none
  # return true is item is exempted else false

  def exempt?
    # code to find item is exempted or not
    EXEMPT_LIST.values.flatten.any? { |item| name.include? item }
  end
end
