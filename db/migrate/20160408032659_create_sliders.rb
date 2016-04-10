class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :link

      t.timestamps null: false
    end
  end
end
