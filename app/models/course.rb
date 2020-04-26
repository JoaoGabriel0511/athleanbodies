class Course < ApplicationRecord
    has_many :whens
    validates_presence_of :name
end
