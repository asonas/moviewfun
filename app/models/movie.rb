class Movie < ActiveRecord::Base
  attr_accessible :description, :title, :user_id

  belongs_to :user
end
