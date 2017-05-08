class Project
  attr_accessor(:name, :id)

  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @id = attributes[:id]
  end


  define_singleton_method (:all) do
    projects = []
    returned_projects = DB.exec("SELECT * FROM projects;")
    returned_projects.each() do |project|
      name = project.fetch("name")
      id = project.fetch("id").to_i()
      projects.push(Project.new({:name => name, :id => id}))
    end
    projects
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO projects (name) VALUES ('#{name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  define_method(:==) do |new_project|
    self.name().==(new_project.name())
  end

  define_method(:update) do |attributes|
    @name = attributes.fetch(:name)
    @id = self.id()
    DB.exec("UPDATE projects SET name = '#{@name}' WHERE id = #{@id}")
  end

define_method(:delete) do
  DB.exec("DELETE FROM projects WHERE id = #{self.id()};")
end

define_singleton_method(:find) do |id|
    found_project = nil
    Project.all.each do |project|
      if project.id .== id
        found_project = project
      end
    end
    found_project
  end
end
