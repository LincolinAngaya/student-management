# app/models/student.rb

class Student < ApplicationRecord
    # Your model code here
    validates :first_name, presence: true, length: { maximum: 255 }
    validates :last_name, presence: true, length: { maximum: 255 }
    validates :email, presence: true, length: { maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true


before_create :display_greetings  

def display_greetings 

  puts 'Hello, you executed before action callback!'
  
end 




    
  end
  