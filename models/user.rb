class User < ActiveRecord::Base
# implement your Student model here
	validates :email, uniqueness: true
	validates :email, format: { with: /.+@.+\...+/ }
	validates :password, length: {minimum: 16}

	has_secure_password
end