class AddAdminProperty < ActiveRecord::Migration
  def up
    add_column :users,:admin, :boolean 
  end
    
  end

  def down
  end
