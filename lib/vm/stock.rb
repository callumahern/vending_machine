class Stock

  attr_reader :item

  def initialize(item = {'Mars Bar' => 100})
    @item = item
  end

  def out_of_stock
    raise "#{item.keys.join} is out of stock"
  end

  def insufficient_funds 
    raise "Not enough money to buy #{item.keys.join}"
  end

end
