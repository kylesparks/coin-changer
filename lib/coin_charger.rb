class CoinChanger
  def give_me_my_change(amount)
    change = []
    coins = [10, 5, 1]
    
    coins.each do |coin|
      until amount < coin
        change << coin
        amount = amount - coin  
      end 
    end
    change
  end
end

# changer = CoinChanger.new
# changer.give_me_my_change(11)
# [1, 10]