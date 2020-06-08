class ActorShow
    attr_reader :actor, :show

    @@all = []

    def initialize(actor, show)
        @actor = actor
        @show = show
        @@all << self
    end

    def self.all
        @@all
    end

end