module VM
  class VendingMachine

    attr_reader :current_balance

    def initialize(current_balance = 0, stock = {})
      @current_balance = current_balance
      @stock = stock
    end

    def insert_money(balance)
      @current_balance += balance
    end

    def purchase(item_name)
      if @current_balance < 100
        raise "Not enough money to buy #{item_name}"
      else
        raise "#{item_name} is out of stock"
      end
    end

    def cancel
      returned_balance = @current_balance
      @current_balance = 0
      returned_balance
    end
  end
end
