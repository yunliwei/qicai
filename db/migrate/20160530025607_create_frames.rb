class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :ftitle
      t.string :fcontent

      t.timestamps null: false
    end
  end
end
