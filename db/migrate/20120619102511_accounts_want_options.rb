class AccountsWantOptions < ActiveRecord::Migration
  def up
    create_table :accounts_want_options, :id => false do |t|
      t.integer :account_id
      t.integer :want_option_id
    end
  end

  def down
  end
end
