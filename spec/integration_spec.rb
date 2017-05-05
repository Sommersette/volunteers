# require "capybara/rspec"
# require "./app"
#
# Capybara.app = Sinatra::Application
# set(:show_exceptions, false)
#
#
# describe("the volunteer path", {:type => :feature}) do
#   it("processes the user input and adds name to list of volunteers.") do
#     visit("/")
#     fill_in("volunteers", :with => "Skalman")
#     click_button("Add")
#     expect(page).to have_content("'Skalman'")
#   end
# end
