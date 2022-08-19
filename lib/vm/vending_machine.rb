module VM
  class VendingMachine

    attr_reader :current_balance, :stock

    def initialize(current_balance = 0, stock = Stock.new)
      @current_balance = current_balance
      @stock = Stock.new
    end

    def insert_money(balance)
      @current_balance += balance
    end

    def purchase(item_name)
      if @stock.item["Mars Bar"] > @current_balance
        raise stock.insufficient_funds
      else
        raise stock.out_of_stock
      end
    end

    def cancel
      returned_balance = @current_balance
      @current_balance = 0
      returned_balance
    end

    private 
  end
end
