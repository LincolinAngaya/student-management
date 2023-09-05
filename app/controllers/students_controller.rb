# app/controllers/students_controller.rb

class StudentsController < ApplicationController
  
  before_action :set_student, only: %i[show edit update destroy]

    def index
      @students = Student.all
    #   render 'index' 
    end


    def show    
      
    end

    def edit 

    end

    def update    
       

            if  @student.update(student_params)
                redirect_to students_path
                # redirect_to students_path(@student)
            else
            render :edit
            end
          
    end 


         def destroy 
          
            @student.destroy
            redirect_to students_path
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
        @student = Student.new(student_params)
      
        if @student.save
          redirect_to students_path
        else
          render 'new'
        end
    end

      private

      def student_params
        params.require(:student).permit(:first_name, :last_name, :email)
      end

      def set_student
        @student =Student.find(params[:id])
      end
  end
  