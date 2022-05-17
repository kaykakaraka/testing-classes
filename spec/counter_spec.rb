require "counter"

RSpec.describe Counter do

  it "allows the user to count a single number" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far."
  end

  it "allows the user to count multiple numbers" do
    counter = Counter.new
    counter.add(5)
    counter.add(7)
    counter.add(9)
    counter.add(15)
    result = counter.report
    expect(result).to eq "Counted to 36 so far."
  end

end
     
  