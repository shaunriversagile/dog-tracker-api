class Dog < ActiveRecord::Base
  has_many :appointments
  has_many :medications
  has_many :vaccinations
  has_many :dietary_restrictions
end
