class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.string :path
      t.boolean :side
      t.boolean :top

      t.timestamps
    end
  end
end
