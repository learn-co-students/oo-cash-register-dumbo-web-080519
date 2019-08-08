
require "pry"
class CashRegister
    attr_accessor :total, :discount, :cart

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @cart = []
    end

    def add_item(title, price, quantity = 1)
        self.cart << [title, price, quantity]
        self.total += price * quantity
    end

    def apply_discount
        return "There is no discount to apply." if !@discount
        self.total = @total - @total * @discount / 100
        "After the discount, the total comes to $#{@total}."
    end

    def items
        itemized_cart= []
        @cart.each {|item| item[2].times {itemized_cart << item[0]}}
        itemized_cart
    end

    def void_last_transaction
        last_item = @cart.pop
        self.total -= last_item[1] * last_item[2]
    end

end