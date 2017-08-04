require "coin_charger.rb"

describe CoinChanger do
  context '#give_me_my_change' do
    changer = CoinChanger.new
    it "returns a penny" do
      expect(changer.give_me_my_change(1)).to eq([1]) 
    end
    
    it "returns two pennies" do
      expect(changer.give_me_my_change(2)).to eq([1,1])
    end
    
    it "returns a nickel" do
      expect(changer.give_me_my_change(5)).to eq([5])
    end
    
    it "returns seven cents" do
      expect(changer.give_me_my_change(7)).to eq([5,1,1])
    end
    
    it "returns a dime" do
      expect(changer.give_me_my_change(10)).to eq([10])
    end
    
    it "returns 23 cents" do
      expect(changer.give_me_my_change(23)).to eq([10,10,1,1,1])
    end
  end
end