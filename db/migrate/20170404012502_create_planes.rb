class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.string :model
      t.string :capacity
      t.string :engines
      t.string :size

      t.timestamps
    end
  end
end
