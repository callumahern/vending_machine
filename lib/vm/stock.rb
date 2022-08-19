class Stock

  attr_reader :item

  def initialize(items = {'Mars Bar' => 5, 'Cheese' => 4, 'Eggs' => 0})
    @item = item
  end

  def out_of_stock
    raise "#{item.keys.join} is out of stock"
  end

  def insufficient_funds 
    raise "Not enough money to buy #{item.keys.join}"
  end

  def dispense_item(item_name)
    if items[item_name] <= 0
      raise "#{item.keys.join} is out of stock"
    else
      item_name
    end
  end
end
