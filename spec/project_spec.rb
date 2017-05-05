require "project"
require "rspec"
require "spec_helper"
require "pg"
require "pry"


describe(Project) do

    describe(".all") do
       it("starts off without any projects") do
         expect(Project.all()).to(eq([]))
       end
     end

    describe('#name') do
      it("initializes the system to add projects to it") do
        test_project = Project.new({:name => "Dunderhonung", :id => nil})
        expect(test_project.name()).to(eq("Dunderhonung"))
      end
    end

    describe("#id") do
     it("lets you read the project ID") do
       test_project = Project.new({:name => "Dunderhonung", :id => nil})
       expect(test_project.id()).to(eq(nil))
     end
   end

   describe("#save") do
    it("saves the project to the table") do
      test_project = Project.new({:name => "Dunderhonung", :id => nil})
      test_project.save()
      expect(Project.all()).to(eq([test_project]))
    end
  end

    describe('#==') do
      it('is the same project if it has the same id') do
        test_project =  Project.new({:name => "Dunderhonung", :id => nil})
        test_project2 = Project.new({:name => "Dunderhonung", :id => nil})
        expect(test_project).to(eq(test_project2))
      end
    end

    describe("#update") do
      it("lets the project be updated") do
        test_project = Project.new({:name => "Dunderhonung", :id => nil})
        test_project.save()
        test_project.update(:name => "Thunder Honey")
        expect(test_project.name()).to(eq("Thunder Honey"))
      end
    end

    describe("#delete") do
      it("allows the coordinator to delete projects") do
        test_project = Project.new({:name => "Dunderhonung", :id => nil})
        test_project.save()
        test_project2 = Project.new({:name => "Thunder Honey", :id => nil})
        test_project2.save()
        test_project.delete()
      expect(Project.all()).to(eq([test_project2]))
      end
    end

  describe(".find") do
    it("returns a project by name") do
      test_project =  Project.new({:name => "Dunderhonung", :id => nil})
      test_project.save()
      test_project2 = Project.new({:name => "Thunder Honey", :id => nil})
      test_project2.save()
     expect(Project.find(test_project2.id())).to(eq(test_project2))
    end
  end
end
