class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction 
    def initialize(discount = nil)
        @discount = discount
        @total = 0
        @items = []
    end
    def add_item(title, price, quantity=1)
        @total += price * quantity 
        @last_transaction = price * quantity
        i = 0
        while i < quantity
        @items << title 
        i += 1
        end
    end
    def apply_discount 
        if @discount == nil
            return "There is no discount to apply."
        else 
        @total -=  @total * @discount / 100
        "After the discount, the total comes to $#{@total}."
        end
    end  
    def void_last_transaction
        @total -= @last_transaction
    end
end

