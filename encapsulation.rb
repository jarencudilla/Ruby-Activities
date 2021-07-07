class Gamble
  def initialize(showmoney, totalmoney)
    @showmoney = showmoney
    @totalmoney = totalmoney
  end

  def bettingmoney
    @totalmoney - @showmoney
  end
end

startgamble = Gamble.new(50, 100)
puts startgamble.bettingmoney
