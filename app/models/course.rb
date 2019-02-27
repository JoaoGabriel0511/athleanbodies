class Course < ApplicationRecord
    has_many :whens
    validates_presence_of :description
    validates_presence_of :name
end
