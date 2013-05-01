class PostageStamp < ActiveRecord::Base
  attr_accessible :appraised_price, :description, :issue_date, :original_price
  belongs_to :user
end
