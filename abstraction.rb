class Gamble
    def initialize(money, bets, drinks=false)
        @money = money
        @bets = bets
        @drinks = drinks
    end
    def total_money_left
        money_for_betting + money_for_drinks
    end
end

private

def money_for_betting
    @money - @bets
end

def money_for_drinks
    money_to_spend = @drinks ? 8 : 6 
end

startgamble = Gamble.new(1000, 500, true)
puts startgamble.total_money_left