module VM
  class VendingMachine

    attr_reader :current_balance

    def initialize(current_balance = 0)
      @current_balance = current_balance
    end

    def insert_money(balance)
      @current_balance += balance
    end

    def purchase(item_name)

    end

    def cancel
      returned_balance = @current_balance
      @current_balance = 0
      returned_balance
    end
  end
end