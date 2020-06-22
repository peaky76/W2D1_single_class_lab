class Student

    def initialize(name, cohort)
        @name = name
        @cohort = cohort
    end

    def name()
        return @name
    end

    def cohort()
        return @cohort
    end

    def set_name(name)
        @name = name
    end

    def set_cohort(cohort)
        @cohort = cohort
    end

    def talk()
        return "I can talk!"
    end

    def display_favourite_language(language)
        if (language != nil)
            return "#{@name}'s favourite language is #{language}."
        else 
            return "#{@name} doesn't have a favourite language"
        end
    end

end
