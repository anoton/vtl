class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :browser_title
      t.string :keywords
      t.string :meta_description
      t.text :body
      t.string :path

      t.timestamps
    end
  end
end
