# code here!
class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{ |k, v| k[v] = []}
    end
    
    def add_student(student_name, grade)
        @roster[grade] << student_name
    end

    def grade(year)
        roster[year]
    end

    def sort
        name = {}
        roster.each do |grade, student|
            name[grade] = student.sort
        end
        name
    end
end

