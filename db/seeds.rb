# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Country.create(name: 'United Kingdom', code: 44)
CountryParam.create(
  diesel_price: 1.87,
  electricity_price:0.25,
  one_time_subsidy: 5000,
  annual_subsidy: 500,
  country_id: Country.first.id
)
Vendor.create(name: 'Isuzu', country_id: Country.first.id)
Truck.create(
  name: 'NPR 6t',
  vendor_id: Vendor.first.id,
  cost: 20000,
  weight: 6,
  fal: 22,
  power_kw: 110,
  power_hp: 150
)
