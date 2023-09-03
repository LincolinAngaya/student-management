# Clear existing data to avoid duplication during multiple seed runs
Student.destroy_all

# Seed data
students_data = [
  { first_name: 'John', last_name: 'Doe', email: 'john@example.com' },
  { first_name: 'Jane', last_name: 'Smith', email: 'jane@example.com' },
  { first_name: 'Alice', last_name: 'Johnson', email: 'alice@example.com' },
  # Add more student records as needed
]

students_data.each do |student|
  Student.create(student)
end

puts 'Seeding complete!'