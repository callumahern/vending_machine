class Stock

  attr_reader :item

  def initialize(item = {'Mars Bar' => 100})
    @item = item
  end

end
