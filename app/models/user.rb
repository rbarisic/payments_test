class User < ActiveRecord::Base
	has_one :session
	validates :nickname, uniqueness: true
end