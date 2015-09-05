class CanOption < ActiveRecord::Base
  has_and_belongs_to_many :accounts
  attr_accessible :name, :title , :can_option_ids, :want_option_ids, :account_id
end
