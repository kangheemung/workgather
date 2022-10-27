class Planner < ApplicationRecord
    has_secure_password
    has_many :post
    has_many :event
end
