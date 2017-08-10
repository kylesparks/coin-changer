require "coin_changer.rb"

describe CoinChanger do
  it "gives me a penny when i need a cent" do
    expect(CoinChanger.new.change_back(1)).to eq([1])
  end
  
  it "gives me 2 pennies when i need two cents" do
    expect(CoinChanger.new.change_back(2)).to eq([1, 1])
  end
  
  it "gives me a nickel when i need five cents" do
    expect(CoinChanger.new.change_back(5)).to eq([5])
  end
  
  it "gives me a nickel and two pennies when i need 7 cents" do
    expect(CoinChanger.new.change_back(7)).to eq([5, 1, 1])
  end
  
  it "gives me a dime when i need 10 cents" do
    expect(CoinChanger.new.change_back(10)).to eq([10])
  end
  
  it "gives me a quarter when i need 25 cents" do
    expect(CoinChanger.new.change_back(25)).to eq([25])
  end
  
  it "gives me a quarter, a dime, a nickel, and two pennies when i need 42 cents" do
    expect(CoinChanger.new.change_back(42)).to eq([25, 10, 5, 1, 1])
  end
end