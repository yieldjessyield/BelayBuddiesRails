class CreateClimbSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :climb_sessions do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :gym_id
      t.text :notes

      t.timestamps
    end
  end
end
