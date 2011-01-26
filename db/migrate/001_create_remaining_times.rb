class CreateRemainingTimes < ActiveRecord::Migration
  def self.up
    create_table :remaining_times do |t|
      t.column :issue_id, :integer
      t.column :time, :integer

      t.timestamp
    end
  end

  def self.down
    drop_table :remaining_times
  end
end
