class Mark < ActiveRecord::Base
  belongs_to :user
  belongs_to :burger
end
