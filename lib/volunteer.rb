class Volunteer
  attr_accessor(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes[:id]
  end


  define_singleton_method(:all) do
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      id = volunteer.fetch("id").to_i()
      volunteer.push(Volunteer.new({:name => name, :id => id}))
    end
    volunteers
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO volunteers (name) VALUES ('#{name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end





end
