 class Project
    attr_accessor :title

    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select {|backer| backer.project == self}
        backers.collect {|n| n.backer}
    end
 end
