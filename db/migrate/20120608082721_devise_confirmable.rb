class DeviseConfirmable < ActiveRecord::Migration
  change_table :users do |t|
    t.confirmable
  end
  
end
