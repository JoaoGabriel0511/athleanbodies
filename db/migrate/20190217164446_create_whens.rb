class CreateWhens < ActiveRecord::Migration[5.2]
  def change
    create_table :whens do |t|
      t.integer :week
      t.integer :hour

      t.timestamps
    end
  end
end
