class CreateWantOptions < ActiveRecord::Migration
  def change
    create_table :want_options do |t|
      t.string :name
      t.string :title
      t.timestamps
    end
  end
end
