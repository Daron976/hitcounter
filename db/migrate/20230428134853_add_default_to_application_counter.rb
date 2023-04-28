class AddDefaultToApplicationCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :hit_counters, :application_counter, from: nil, to: 0
  end
end
