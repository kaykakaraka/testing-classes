require "string_builder"

RSpec.describe StringBuilder do

  it "returns a short string the user creates" do
    string = StringBuilder.new
    string.add("Hi")
    string.add(" Kay")
    result = string.output
    expect(result).to eq "Hi Kay"
  end 
  
  it "returns the size of a short string" do
    string = StringBuilder.new
    string.add("Bonjour friend")
    result = string.size
    expect(result).to eq 14
  end

  it "returns a string created with one input" do
    string = StringBuilder.new
    string.add("Yes.")
    result = string.output
    expect(result).to eq "Yes."
  end

  it "returns a string created with 5 inputs" do
    string = StringBuilder.new
    string.add("Yolo")
    string.add("")
    string.add(" ")
    string.add("Kay")
    string.add("!")
    result = string.output
    expect(result).to eq "Yolo Kay!"
  end

  it "returns the size of a string created with 5 inputs" do
    string = StringBuilder.new
    string.add("Yolo")
    string.add("")
    string.add(" ")
    string.add("Kay")
    string.add("!")
    result = string.size
    expect(result).to eq 9
  end

end

