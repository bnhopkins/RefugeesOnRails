class Micropost < ActiveRecord::Base
attr accessible :content, :user id
validates :content, :length => { :maximum => 140 }
end
