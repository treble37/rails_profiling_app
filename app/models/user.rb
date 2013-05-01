class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :passion_rating
  has_many :postage_stamps, :dependent=>:destroy
end
