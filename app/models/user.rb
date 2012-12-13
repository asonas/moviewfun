class User < ActiveRecord::Base
  attr_accessible :name, :profile_image_url

  has_many :accounts
end
