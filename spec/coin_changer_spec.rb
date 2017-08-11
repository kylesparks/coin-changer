require "coin_changer.rb"

describe CoinChanger do
  it "gives me a penny when i need a cent" do
    expect(CoinChanger.new.money_back(1)).to eq([1])
  end
  
  it "gives me two pennies when i need two cents" do
    expect(CoinChanger.new.money_back(2)).to eq([1, 1])
  end
  
  it "gives me a nickel when i need five cents" do
    expect(CoinChanger.new.money_back(5)).to eq([5])
  end
  
  it "gives a nickel and two pennies when i need seven cents" do
    expect(CoinChanger.new.money_back(7)).to eq([5, 1, 1])
  end
  
  it "gives me a dime when i need ten cents" do
    expect(CoinChanger.new.money_back(10)).to eq([10])
  end
end