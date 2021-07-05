class User

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.highest_pledge
        Pledge.all.max{|pledge_one, pledge_two| pledge_one.amount <=> pledge_two.amount}.user
    end

    def self.multi_pledger
        @@all.select{|user| user.pledge_count > 1}
    end

    def self.project_creator
        @@all.select{|user| user.projects_owned > 0}
    end

    def pledge_count
        Pledge.all.count{|pledge| pledge.user == self}
    end
    
    def projects_owned
        Project.all.count{|project| project.owner == self}
    end

end