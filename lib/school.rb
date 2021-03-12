# code here!
require "pry"
class School

attr_accessor :roster, :name_of_student, :grade

    def initialize(school)
        @roster = {}
    end

    def add_student(name_of_student, grade)

       if @roster.include?(grade)
        @roster[grade] << name_of_student
       else 
        @roster[grade] = [name_of_student]
       end

       end
        
    def grade(grade)
        @roster[grade]
        
    end

    def sort 
        new_list = {}
        @roster.each {|name_of_student, grade| new_list[name_of_student] = grade.sort}
        new_list
    end

end