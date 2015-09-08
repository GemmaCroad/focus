# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  created_at      :datetime
#  updated_at      :datetime
#  hometown        :text
#  image           :text
#  bio             :text
#  password_digest :text
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :photos

	validates :email, :presence => true, :uniqueness => true 
  	validates :name, :presence => true, :uniqueness => true, :length => { :minimum =>3 }
end	
