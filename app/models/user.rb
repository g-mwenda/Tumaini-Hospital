class User < ApplicationRecord
    has_many :patients
    has_many :appointments
    has_secure_password

    
    validates :name, presence: true
    validates :rank, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
end