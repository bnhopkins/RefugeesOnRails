class User < ActiveRecord::Base 
	attr accessible :email, :name has many :microposts
end