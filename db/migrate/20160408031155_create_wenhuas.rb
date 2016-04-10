class CreateWenhuas < ActiveRecord::Migration
  def change
    create_table :wenhuas do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
