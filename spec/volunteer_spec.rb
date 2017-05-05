require "volunteer"
require "rspec"
require "spec_helper"
require "pg"
require "pry"


describe(Volunteer) do

  describe(".all") do
     it("starts off without any volunteers") do
       expect(Volunteer.all()).to(eq([]))
     end
   end

  describe('#initialize') do
    it("initializes the system to add volunteers to it") do
      test_volunteer = Volunteer.new({:name => "Lille Skutt", :id => nil})
      expect(test_volunteer.name()).to(eq("Lille Skutt"))
    end
  end

  describe("#id") do
   it("lets you read the volunteer ID") do
     test_volunteer = Volunteer.new({:name => "Lille Skutt", :id => nil})
     expect(test_volunteer.id()).to(eq(nil))
   end
 end

 describe("#save") do
  it("lets you save the volunteer to the table") do
    test_volunteer = Volunteer.new({:name => "Lille Skutt", :id => nil})
    test_volunteer.save()
    expect(Volunteer.all()).to(eq(test_volunteer))
  end
end

  # describe('#==') do
  #   it('is the same volunteer if it has the same id') do
  #     test_volunteer =  Volunteer.new({:name => "Lille Skutt", :id => nil})
  #     test_volunteer2 = Volunteer.new({:name => "Lille Skutt", :id => nil})
  #     expect(test_volunteer).to(eq(test_volunteer2))
  #   end
  # end






end
