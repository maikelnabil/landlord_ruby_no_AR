require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#Part 1
# First, Open the data.rb and inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  # apartments.each{|unit| puts unit[:address]}

  # Print all the names for tenants
  # tenants.each{|person| puts person[:name]}

  # Print only apartments that are less then 700 in rent
  # cheap = apartments.select{|unit| unit[:monthly_rent] < 700}
  # p cheap

  # Print only tenants that are over the age of 44
  # old = tenants.select{|person| person[:age] > 44}
  # p old

  # Print only tenants that have an apartment id of 1
  # one = tenants.select{|person| person[:apartment_id] == 1}
  # p one

  # Print all the tenants in order from youngest to oldest
  # youngest_oldest = tenants.sort_by{|person| person[:age]}
  # p youngest_oldest

  # Print the names of all the tenants alphabetically
  # alphabetically = tenants.sort_by{|person| person[:name]}
  # alphabetically.each{|per| puts per[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.

  # When printing all apartments, under each apartment print all of its tenants

#Part 2
# puts "Welcome, landlord! For apartments type '1', and for tenants type '2'"
# user_input = gets.chomp.to_i
# if user_input == 1
#   p apartments
# elsif user_input == 2
#   p tenants
# else
#   puts "Sorry, I didn't undersatnd this!"
# end

#testing classes
# apt21 = Apartment.new(21, "1 1st St. NW", 900, 500)
# tena51 = Tenant.new(51, "John", 40, 21)

apartments.each do |apt|
  values = apt.values
  ruby_apartments << Apartment.new(apt.values[0], apt.values[1], apt.values[2], apt.values[3])
end

tenants.each do |tena|
  values = tena.values
  ruby_tenants << Tenant.new(tena.values[0], tena.values[1], tena.values[2], tena.values[3])
end

# binding.pry
