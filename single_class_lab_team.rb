class Team

    attr_reader :name, :players
    attr_accessor :coach

    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
    end

    def add_player(player)
        @players << player
    end

    def check_player(player)
        return @players.include?(player)
    end

end
