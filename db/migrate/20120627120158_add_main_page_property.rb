class AddMainPageProperty < ActiveRecord::Migration
  def up
    add_column :pages,:main, :boolean 
  end

end
