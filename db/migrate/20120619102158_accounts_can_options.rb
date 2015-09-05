class AccountsCanOptions < ActiveRecord::Migration
  def up
    create_table :accounts_can_options, :id => false do |t|
      t.integer :account_id
      t.integer :can_option_id
    end

  end

  def down
  end
end
