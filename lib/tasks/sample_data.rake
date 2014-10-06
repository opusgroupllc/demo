namespace :db do
  desc "Populate database with sample data"
  task populate: :environment do
    create_departments
    create_employees
  end
end

def create_departments
  10.times do |n|
    name = Faker::Commerce.department
    Department.create!(name: name)
  end
end

def create_employees
  departments = Department.all
  100.times do |n|
    firstname = Faker::Name.first_name
    lastname = Faker::Name.last_name
    department_id = 1
   # postion = Faker::Name.title
    departments.each { |department| department.employees.create!(firstname: firstname,
                                    lastname: lastname , department_id: department_id
                      ) }
  end
end

#