require 'coin_changer.rb'

describe CoinChanger do
  it "gives me a penny when i need a cent" do
    expect(CoinChanger.new.gimme_cash(1)).to eq([1])
  end
  
  it "gives me two pennies when i need two pennies" do
    expect(CoinChanger.new.gimme_cash(2)).to eq([1, 1])
  end
  
  it "gives me a nickel when i need a nickel" do
    expect(CoinChanger.new.gimme_cash(5)).to eq([5])
  end
  
  it "gives me a nickel and two pennies when i need 7 cents" do
    expect(CoinChanger.new.gimme_cash(7)).to eq([5, 1, 1])
  end
  
  it "gives me a dime when i need a dang dime" do
    expect(CoinChanger.new.gimme_cash(10)).to eq([10])
  end
  
  it "gives me a quarter when i need a quarter" do
    expect(CoinChanger.new.gimme_cash(25)).to eq([25])
  end
end