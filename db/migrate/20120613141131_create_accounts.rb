class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      
      t.integer  :user_id
      t.string   :name
      t.date     :birthdate      
      t.string   :city
      t.string   :phone
      t.string   :website
      t.text     :description      
      t.timestamps
    end
    
    User.all.each{|user| user.account = Account.create(user_id: user.id) unless user.account}
  end
end
