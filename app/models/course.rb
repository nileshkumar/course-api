class Course < ApplicationRecord
  has_one :coach
  has_many :activities
end
