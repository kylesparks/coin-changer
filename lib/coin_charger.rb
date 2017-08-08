class CoinChanger
  def give_me_my_money(amount)
    change = []
    coins = [25, 10, 5, 1]
    
    coins.each do |coin|
    until amount < coin
      change << coin
      amount = amount - coin
    end
  end
    change
  end
end

#CoinChanger(1) => [1]
#CoinChanger(25) => [25]
#CoinChanger(15) => [10, 5]
#CoinChanger(99) => [25, 25, 25, 10, 10, 1, 1, 1, 1]