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
        player_in_team = @team2.check_player("Cannon")
        assert(player_in_team)
    end

    def test_check_player_false()
        player_in_team = @team2.check_player("Monkhouse")
        assert(!player_in_team)
    end

    def test_points()
        assert_equal(0, @team3.points())
    end

    def test_add_result_win()
        @team1.add_result("win")
        assert_equal(3, @team1.points())
    end

    def test_add_result_lose()
        @team1.add_result("lose")
        assert_equal(0, @team1.points())
    end

    def test_add_result_draw()
        @team3.add_result("draw")
        assert_equal(1, @team3.points())
    end

end
