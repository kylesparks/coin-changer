class CoinChanger
  def money_back(amount)
    change = []
    coins = [10, 5, 1]
    
    coins.each do |circle|
      until amount < circle
        change << circle
        amount = amount - circle
      end
    end
    change
    end    
  end