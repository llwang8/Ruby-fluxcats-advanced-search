class CreateFinds < ActiveRecord::Migration
  def change
    create_table :finds do |t|
      t.string :key
      t.string :cat

      t.timestamps null: false
    end
  end
end
