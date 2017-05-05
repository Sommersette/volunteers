class Volunteer
  attr_accessor(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes[:id]
  end

  define_singleton_method (:all) do
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    volunteers = []
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch("name")
      id = volunteer.fetch("id").to_i()
      volunteers.push(Volunteer.new({:name => name, :id => id}))
    end
    volunteers
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO volunteers (name) VALUES ('#{name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  define_method(:==) do |new_volunteer|
    self.name().==(new_volunteer.name())
  end

  define_method(:update) do |attributes|
    @name = attributes.fetch(:name)
    @id = self.id()
    DB.exec("UPDATE volunteers SET name = '#{@name}' WHERE id = #{@id}")
  end

define_method(:delete) do
  DB.exec("DELETE FROM volunteers WHERE id = #{self.id()};")
end

define_singleton_method(:find) do |id|
    found_volunteer = nil
    Volunteer.all.each do |volunteer|
      if volunteer.id .== id
        found_volunteer = volunteer
      end
    end
    found_volunteer
  end
end
