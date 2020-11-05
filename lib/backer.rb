 class Backer
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|project| project.backer == self}
        projects.collect {|n| n.project}
    end
 end