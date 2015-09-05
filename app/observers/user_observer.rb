class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
    user.account = Account.create(user_id: user.id)
  end
end
