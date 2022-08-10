class Stock
  def initialize(item_name = {'Mars Bar' => 100})
    @item_name = item_name
  end

  def []
    @stock
  end
end
