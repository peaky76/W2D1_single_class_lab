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

end
