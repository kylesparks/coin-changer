require "coin_charger.rb"

describe CoinChanger do  
  it "returns 1 penny for 1 cent" do
    expect(CoinChanger.new.give_me_my_money(1)).to eq([1])
  end
  
  it "returns 3 pennies for 3 cents" do
    expect(CoinChanger.new.give_me_my_money(3)).to eq([1, 1, 1])
  end
  
  it "returns a nickel for 5 cents" do
    expect(CoinChanger.new.give_me_my_money(5)).to eq([5])
  end
  
  it "returns a nickel and two pennies for 7 cents" do
    expect(CoinChanger.new.give_me_my_money(7)).to eq([5, 1, 1])
  end
  
  it "returns a dime for 10 cents" do
    expect(CoinChanger.new.give_me_my_money(10)).to eq([10])
  end
  
  it "returns a dime, a nickel, and two pennies for 17 cents" do
    expect(CoinChanger.new.give_me_my_money(17)).to eq([10, 5, 1, 1])
  end
  
  it "returns a quarter for 25 cents" do
    expect(CoinChanger.new.give_me_my_money(25)).to eq([25])
  end
end