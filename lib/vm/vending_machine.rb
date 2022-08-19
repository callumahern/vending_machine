module VM
  class VendingMachine

    attr_reader :current_balance, :stock

    PRICES = {"Mars Bar" => 100, "Cheese" => 50, "Eggs" => 3432.42}

    def initialize(current_balance = 0, stock = Stock.new)
      @current_balance = current_balance
      @stock = stock
    end

    def insert_money(balance)
      @current_balance += balance
    end

    def purchase(item_name)
      if PRICES[item_name] > @current_balance
        raise "Not enough money to buy #{item_name}"
      end
      @stock.dispense_item(item_name)
    end

    def cancel
      returned_balance = @current_balance
      @current_balance = 0
      returned_balance
    end
  end
end
