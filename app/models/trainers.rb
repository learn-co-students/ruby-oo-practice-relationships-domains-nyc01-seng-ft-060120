class Trainer

    attr_reader :name

    @@all = []
    
    def initialize(name)
        @@all << self
    end

    def clients 
        Client.all.select{|client| client.trainer == self}
    end

    def self.most_clients
        @@all.max{|trainer_a, trainer_b| trainer_a.clients.count <=> trainer_b.clients.count}
    end
    
    def self.all
        @@all
    end
    
end