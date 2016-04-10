class CreateConfigs < ActiveRecord::Migration
  def change
    create_table :configs do |t|
      t.string :tel
      t.string :qq
      t.string :address
      t.string :beian
      t.string :mail

      t.timestamps null: false
    end
  end
end
