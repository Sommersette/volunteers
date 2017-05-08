class Volunteer
  attr_accessor(:name, :id, :project_id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes[:id]
    @project_id = attributes[:project_id]
  end

  define_singleton_method (:all) do
    volunteers = []
    returned_volunteers = DB.exec("SELECT * FROM volunteers;")
    returned_volunteers.each() do |volunteer|
      name = volunteer["name"]
      id = volunteer["id"].to_i()
      project_id = volunteer["project_id"].to_i()
      volunteers.push(Volunteer.new({:name => name, :id => id, :project_id => project_id}))
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
    found_volunteer = DB.exec()
    Volunteer.all.each do |volunteer|
      if volunteer.id .== id
        found_volunteer = volunteer
      end
    end
    found_volunteer
  end
end
