class Volunteer
  attr_accessor(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes[:id]
  end

  

  # define_singleton_method(:all) do
  #   returned_volunteer = DB.exec("SELECT * FROM volunteers;")
  #   volunteers = []
  #   returned_volunteer.each() do |volunteer|
  #     name = volunteer.fetch("name")
  #     id = volunteer.fetch("id").to_i()
  #     volunteer.push(Volunteer.new({:name => name, :id => id}))
  #   end
  #   volunteers
  # end
end
