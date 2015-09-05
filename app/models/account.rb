class Account < ActiveRecord::Base
  belongs_to :user 
  has_and_belongs_to_many :can_options
  has_and_belongs_to_many  :want_options
  attr_accessible :email, :user_id, :password, :password_confirmation, :remember_me, :birthdate, :name, :city, :phone, :website, :description, :can_option_ids, :want_option_ids, :account_id
  
end
