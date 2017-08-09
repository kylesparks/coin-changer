require "coin_changer.rb"

describe CoinChanger do
  it "gives me a penny for one cent" do
    expect(CoinChanger.new.cash_back(1)).to eq([1])
  end
  
  it "gives me two pennies for two cents" do
    expect(CoinChanger.new.cash_back(2)).to eq([1, 1])
  end
  
  it "gives me a nickel for five cents" do
    expect(CoinChanger.new.cash_back(5)).to eq([5])
  end
  
  it "gives me a nickel and two pennies for seven cents" do
    expect(CoinChanger.new.cash_back(7)).to eq([5, 1, 1])
  end
  
  it "gives me a dime for 10 cents" do
    expect(CoinChanger.new.cash_back(10)).to eq([10])
  end
  
  it "gives me a quarter for 25 cents" do
    expect(CoinChanger.new.cash_back(25)).to eq([25])
  end
end