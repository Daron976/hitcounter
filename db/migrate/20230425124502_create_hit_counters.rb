class CreateHitCounters < ActiveRecord::Migration[7.0]
  def change
    create_table :hit_counters do |t|
      t.string :application_name
      t.integer :application_counter

      t.timestamps
    end

    add_index :hit_counters, :application_name, unique: true
  end
end
