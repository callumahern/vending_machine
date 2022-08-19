class Stock

  attr_reader :items

  def initialize(items = {'Mars Bar' => 0, 'Cheese' => 4, 'Eggs' => 0})
    @items = items
  end

  def out_of_stock
    raise "#{item.keys.join} is out of stock"
  end

  def insufficient_funds 
    raise "Not enough money to buy #{item.keys.join}"
  end

  def dispense_item(item_name)
    if items[item_name] <= 0
      raise "#{item_name} is out of stock"
    else
      item_name
    end
  end
end
