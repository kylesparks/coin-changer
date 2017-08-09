class CoinChanger
  def cash_back(amount)
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
