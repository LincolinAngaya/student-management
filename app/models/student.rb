class Student < ApplicationRecord
    def index 
        @students = Student.all
    end
end
