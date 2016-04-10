class CreateRoses < ActiveRecord::Migration
  def change
    create_table :roses do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
