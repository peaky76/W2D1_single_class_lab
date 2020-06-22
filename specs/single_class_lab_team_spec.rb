# * Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# * Add a points property into your class that starts at 0.
# * Create a method that takes in whether the team has won or lost and updates the points property for a win.


require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestTeam < Minitest::Test

    def setup()

        @team1 = Team.new("Bradford City", ["Smith", "Jones"], "Brown")
        @team2 = Team.new("Halifax Town", ["Cannon", "Ball"], "White")
        @team3 = Team.new("Guiseley", ["Little", "Large"], "Black")

    end

    def test_name()
        assert_equal("Bradford City", @team1.name())
    end

    def test_players()
        players = ["Cannon", "Ball"]
        assert_equal(players, @team2.players())
    end

    def test_coach()
        assert_equal("Black", @team3.coach())
    end

    def test_update_coach()
        @team3.coach = "Green"
        assert_equal("Green", @team3.coach())
    end
    
    def test_add_player()
        @team1.add_player("Atkinson")
        updated_players = ["Smith", "Jones", "Atkinson"]
        assert_equal(updated_players, @team1.players())
    end

    def test_check_player_true()
        @team2.check_player("Davro")
        assert(true)
    end

    def test_check_player_false()
        @team2.check_player("Monkhouse")
        assert(true)
    end


end
