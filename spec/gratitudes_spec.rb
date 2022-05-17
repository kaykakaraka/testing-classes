require "gratitudes"
  
RSpec.describe Gratitudes do

  it "Return a single gratitude" do
    gratitude = Gratitudes.new
    gratitude.add("dogs")
    result = gratitude.format
    expect(result).to eq "Be grateful for: dogs"
  end

  it "returns a list of gratitudes" do
    gratitude = Gratitudes.new
    gratitude.add("dogs")
    gratitude.add("cats")
    gratitude.add("trees")
    result = gratitude.format
    expect(result).to eq "Be grateful for: dogs, cats, trees"
  end

  it "return a list of longer gratitudes" do
    gratitude = Gratitudes.new
    gratitude.add("the lovely sun in the morning")
    gratitude.add("the breath that fills you")
    gratitude.add("any beauty you have seen... today, or yesterday")
    result = gratitude.format
    expect(result).to eq "Be grateful for: the lovely sun in the morning, the breath that fills you, any beauty you have seen... today, or yesterday"
  end
end