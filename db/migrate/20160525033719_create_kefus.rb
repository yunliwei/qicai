class CreateKefus < ActiveRecord::Migration
  def change
    create_table :kefus do |t|
      t.string :kefuqq
      t.string :kefutel

      t.timestamps null: false
    end
  end
end
