require "volunteer"
require "rspec"
require "spec_helper"
require "pg"
require "pry"


describe(Volunteer) do

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



  # describe('.all') do
  #   it("starts off without any volunteers in it") do
  #     expect(Volunteer.all()).to(eq([]))
  #   end
  # end





end
