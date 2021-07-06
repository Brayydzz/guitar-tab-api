class CreateTunings < ActiveRecord::Migration[6.1]
  def change
    create_table :tunings do |t|
      t.string :name

      t.timestamps
    end
  end
end
