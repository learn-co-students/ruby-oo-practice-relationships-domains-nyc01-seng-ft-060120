class Project

    attr_reader :name, :owner, :pledge_goal

    @@all = []

    def initialize(name, owner, pledge_goal)
        @name = name
        @owner = owner
        @pledge_goal = pledge_goal
        @@all << self
    end

    def new_donation(pledge)
        @amount_raised += pledge.amount
    end

    def self.all
        @@all
    end

    def self.no_pledges
        @@all.select{|project| project.pledge_count == 0}
    end

    def self.above_goal
        @@all.select{|project| project.amount_raised >= project.pledge_goal}
    end

    def self.most_backers
        @@all.max{|project_a, project_b| project_a.backers.count <=> project_b.backers.count}
    end

    def pledge_count
        Pledge.all.count{|pledge| pledge.project == self}
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def backers
        self.pledges.map{|pledge| pledge.user}.uniq
    end

    def amount_raised
        self.pledges.sum{|pledge| pledge.amount}
    end

end