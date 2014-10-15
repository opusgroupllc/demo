namespace :db do
  desc "Populate database with sample data"
  task populate: :environment do
    create_departments
    create_employees
    create_articles
    create_comments
    create_productcategories
    create_products
    # create_invoices
    create_vendors
    # create_admins
    # create_cases
    # create_orders
    # create_tickets
  end
end

def create_departments
  5.times do |n|
    name = Faker::Commerce.department
    Department.create!(name: name)
  end
end

def create_employees
  departments = Department.all
  20.times do |n|
    firstname = Faker::Name.first_name
    lastname = Faker::Name.last_name
   # department_id = 1
   # postion = Faker::Name.title
    departments.each { |department| department.employees.create!(firstname: firstname,
                                    lastname: lastname #, department_id: department_id
                      ) }
  end
end

def create_articles
  20.times do |n|
    title = Faker::Hacker.say_something_smart
    text = Faker::Lorem.sentence(5)
    Article.create(title: title, text: text)
  end
end

def create_comments
  articles = Article.all
  10.times do |n|
    commenter = Faker::Internet.user_name
    body = Faker::Lorem.sentence(5)
    articles.each { |article| article.comments.create!(commenter: commenter, body: body)}
  end
end

 def create_invoices
   invoices = Invoice.all
   20.times do |n|
     name = Faker::Company.name # client name
     address = Faker::Address.street_name
     address2 = Faker::Address.secondary_address
     city = Faker::Address.city
     state = Faker::Address.state_abbr
     zip = Faker::Address.zip
     contact = Faker::Name.name
     phone = Faker::PhoneNumber.phone_number
     credit_card_name = name
     credit_card_number = Faker::Business.credit_card_number
     credit_card_expiry_date = Faker::Business.credit_card_expiry_date
     credit_card_type = Faker::Business.credit_card_type
     invoices.each { |invoice| invoice.comments.create!(name: name, address: address, address2: address,
                                  city: city, state: state, zip: zip, contact: contact, phone: phone,
                                  credit_card_name: credit_card_name, credit_card_number: credit_card_number,
                                  credit_card_type: credit_card_type) }
   end
 end

def  create_vendors
  20.times do |n|
    logo = Faker::Company.logo
    name = Faker::Company.name
    address = Faker::Address.street_name
    address2 = Faker::Address.secondary_address
    city = Faker::Address.city
    state = Faker::Address.state_abbr
    zip = Faker::Address.zip
    website = Faker::Internet.url
    phone = Faker::PhoneNumber.phone_number
    email = Faker::Internet.email
    contact = Faker::Name.name
    Vendor.create!(#logo: logo,
        name: name, address: address, address2: address2, city: city, state: state,
                                zip: zip, website: website, phone: phone, email: email, contact: contact)
  end
end

def create_suppliers
  20.times do |n|
    name = Faker::Company.name
    address = Faker::Address.street_name
    address2 = Faker::Address.secondary_address
    city = Faker::Address.city
    state = Faker::Address.state_abbr
    zip = Faker::Address.zip
    website = Faker::Internet.url
    phone = Faker::PhoneNumber.phone_number
    email = Faker::Internet.email
    contact = Faker::Name.name
    Supplier.create!(name: name, address: address, address2: address2, city: city, state: state,
                     zip: zip, website: website, phone: phone, email: email, contact: contact)
  end
end

 def create_products
   productcategories = Productcategory.all
   50.times do |n|
     name = Faker::Commerce.product_name
     productcategories.each { |productcategory| productcategory.products.create!(name: name) }
  end
 end

 def create_productcategories
   20.times do |n|
     category = Faker::Commerce.department
     Productcategory.create!(category: category)
   end
 end
 def create_admins

 end
 def create_cases

 end

 def create_tickets

 end

 def create_orders
   products = Products.all
    100.times do |n|
     order_date = Faker::Date.between(100.days.ago, Date.today)
      products.each { |product| product.orders.create!(order_date: order_date) }
     end
   end

