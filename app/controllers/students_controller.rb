# app/controllers/students_controller.rb

class StudentsController < ApplicationController

    def index
      @students = Student.all
    #   render 'index' 
    end

    def new 
        @student = Student.new
    end

    def create
        @student = Student.new(
            first_name: params[:student][first_name],
            last_name: params[:student][last_name],
            email: params[:student][email]
        )
    end

  end
  