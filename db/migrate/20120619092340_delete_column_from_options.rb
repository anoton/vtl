class DeleteColumnFromOptions < ActiveRecord::Migration
  def up
    remove_column :can_options, :title
    remove_column :want_options, :title
  end

end
