# app/controllers/students_controller.rb

class StudentsController < ApplicationController

    def index
      @students = Student.all
    #   render 'index' 
    end

    def new 
        @student = Student.new
    end

    # def create
    #     @student = Student.new(
    #         first_name: params[:student][first_name],
    #         last_name: params[:student][last_name],
    #         email: params[:student][email]
    #     )

    #     @student.save
    # end
    def create
        @student = Student.new(
          first_name: params[:student][:first_name],
          last_name: params[:student][:last_name],
          email: params[:student][:email]
        )
      
        if @student.save
          redirect_to students_path, notice: 'Student was successfully created.'
        else
          render 'new'
        end
      end
      
  end
  