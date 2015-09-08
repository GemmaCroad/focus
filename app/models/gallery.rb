# == Schema Information
#
# Table name: galleries
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Gallery < ActiveRecord::Base
	has_and_belongs_to_many :photos
end
