# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  tags       :text
#

class Photo < ActiveRecord::Base
	belongs_to :user 
	has_many :galleries
end	
