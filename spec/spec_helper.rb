require("project")
require("volunteer")
require("pg")
require("rspec")


DB = PG.connect({:dbname => "volunteer_tracker_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM projects *;")
    DB.exec("DELETE FROM volunteers *;")
    DB.exec("DELETE FROM work_plan *;")
  end
end
