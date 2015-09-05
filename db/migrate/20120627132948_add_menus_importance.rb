class AddMenusImportance < ActiveRecord::Migration
  def up
    add_column :menus, :importance, :integer
  end

 
end
