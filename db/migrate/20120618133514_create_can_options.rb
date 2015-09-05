class CreateCanOptions < ActiveRecord::Migration
  def change
    create_table :can_options do |t|
      t.string :name
      t.string :title
      t.timestamps
    end
  end
end
