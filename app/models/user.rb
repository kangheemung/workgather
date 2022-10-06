class User < ApplicationRecord
    has_secure_password
    has_many :images, class_name:"Image", foreign_key: "reference_id"
end
