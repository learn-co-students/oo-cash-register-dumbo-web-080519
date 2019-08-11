require 'pry'

class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity
    # @@items = []

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        @quantity = quantity
        @title = title
        @price = price * quantity
        self.title
        @werwer = quantity.times do
            @items << title
        end
        @last_transaction = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total = (@total / @discount) * 16
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total -= @last_transaction
    end
    
end 