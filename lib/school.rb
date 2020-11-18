# code here!
require "pry"

class School
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        if @roster.empty? || !@roster.has_key?(grade)
            @roster[grade] = []
            @roster[grade] << student
        else
            @roster[grade] << student
        end
    end

    def grade(grade)
        students = []

        @roster.each do |key, values|
            if key == grade
                values.each do |value|
                    students << value
                end
            end
        end

        students
    end

    def sort
        @roster.sort.collect do |key, value|
            [key, value.sort]
        end.to_h
    end
end