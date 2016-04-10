class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productcla_id
      t.string :name
      t.float :price
      t.string :summary
      t.text :content

      t.timestamps null: false
    end
  end
end
