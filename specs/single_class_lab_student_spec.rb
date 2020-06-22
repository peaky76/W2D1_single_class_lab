require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < Minitest::Test

    def test_name()
        student = Student.new("Alan", "G19")
        assert_equal("Alan", student.name())
    end

    def test_cohort()
        student = Student.new("Robert", "E41")
        assert_equal("E41", student.cohort())
    end

    def test_set_name()
        student = Student.new("Beryl", "E42")
        student.set_name("Cheryl")
        assert_equal("Cheryl", student.name())
    end

    def test_set_cohort()
        student = Student.new("Derek", "G20")
        student.set_cohort("G22")
        assert_equal("G22", student.cohort())
    end 

    def test_talk()
        student = Student.new("Ethel", "E43")
        result = student.talk()
        assert_equal("I can talk!", result)
    end

    def test_display_favourite_language_ruby()
        student = Student.new("Frank", "G21")
        result = student.display_favourite_language("Ruby")
        assert_equal("Frank's favourite language is Ruby.", result)
    end

    def test_display_favourite_language_java()
        student = Student.new("Graham", "G21")
        result = student.display_favourite_language("Java")
        assert_equal("Graham's favourite language is Java.", result)
    end

    def test_display_favourite_language_nil()
        student = Student.new("Hilda", "G21")
        result = student.display_favourite_language(nil)
        assert_equal("Hilda doesn't have a favourite language", result)
    end


end



