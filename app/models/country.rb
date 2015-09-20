class Country < ActiveRecord::Base
  has_one :country_param
  has_many :vendors
end
