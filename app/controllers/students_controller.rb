class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades 
        students = Student.all
        grades =  students.sort_by {|h| -h[:grade]}
        render json: grades
    end 

    #return the enrire student with the highest grade 
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student        
    end
end
