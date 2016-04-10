class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.string :author
      t.string :summary

      t.timestamps null: false
    end
  end
end
