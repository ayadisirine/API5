# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee_list = [
  {
    first_name: "Nicolas",
    last_name: "Genest",
    title: "CEO",
    email: "nicolas.genest@codeboxx.biz"
  },
  {
    first_name: "Nadya",
    last_name: "Fortier",
    title: "Director",
    email: "nadya.fortier@codeboxx.biz"
  },
  {
    first_name: "Martin",
    last_name: "Chantal",
    title: "Director Assistant",
    email: "martin.chantal@codeboxx.biz"
  },
  {
    first_name: "Mathieu",
    last_name: "Houde",
    title: "Captain",
    email: "mathieu.houde@codeboxx.biz"
  },
  {
    first_name: "David",
    last_name: "Boutin",
    title: "Engineer",
    email: "david.boutin@codeboxx.biz"
  },
  {
    first_name: "Mathieu",
    last_name: "Lortie",
    title: "Engineer",
    email: "mathieu.lortie@codeboxx.biz"
  },
  {
    first_name: "Thomas",
    last_name: "Carrier",
    title: "Engineer",
    email: "thomas.carrier@codeboxx.biz"
  },
]

puts "Seed Started"
######################################################


employee_list.each do |employee|
  user = User.create!(
    email: employee[:email],
    password: "codeboxx1",
    emploiye_role: true,
    user_role: false
  )
  employee = Employee.create!(
    first_name: employee[:first_name],
    last_name: employee[:last_name],
    title: employee[:title],
    email: employee[:email],
    user: user
  )
end

puts "#{Employee.count} employees created"




#####################################################
puts "Seed Ended"


require "faker"

5.times do

  lead = Lead.create([{
  Full_Name: Faker::FunnyName.name,
  Company_Name: Faker::Company.name,
  Phone: Faker::PhoneNumber.cell_phone,
  Project_Name: Faker::Games::Heroes.name,
  Project_Description: Faker::Quote.jack_handey,
  Department_In_Charge: "Sales",
  Message: Faker::Quotes::Shakespeare.hamlet_quote,
  file_attachment: Faker::File.mime_type, 
  
  }])
      
  end