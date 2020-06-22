# ### Part A

# For this part we want you to make a class that represents a CodeClan student.

# * Create a class called Student that takes in a name (String) and a cohort (string - e.g "E41", "G19", etc) when an new instance is created.
# * Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# * Add in Setter methods to update the students name and what cohort they are in.
# * Create a method that gets the student to talk (eg. Returns "I can talk!).
# * Create a method that takes in a students favourite programming language and returns it as part of a string (eg. `student1.say_favourite_language("Ruby")` -> "I love Ruby").

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



