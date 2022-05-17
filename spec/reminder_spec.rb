require "reminder"

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Kay")
    reminder.remind_me_to("walk the dog")
    result = reminder.remind()
    expect(result).to eq "walk the dog, Kay!"
  end
  
end