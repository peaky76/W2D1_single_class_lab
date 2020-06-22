class Team

    attr_reader :name, :players, :points
    attr_accessor :coach

    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_player(player)
        @players << player
    end

    def check_player(player)
        return @players.include?(player)
    end

    def add_result(result)
        case result
        when "win"
            @points += 3
        when "draw"
            @points += 1
        end
    end

end
