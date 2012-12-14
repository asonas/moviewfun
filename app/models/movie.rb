class Movie < ActiveRecord::Base
  attr_accessible :description, :title, :user_id, :url

  belongs_to :user
end
