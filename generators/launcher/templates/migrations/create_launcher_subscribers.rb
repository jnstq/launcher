class CreateLauncherSubscribers < ActiveRecord::Migration
  def self.up
    create_table :launcher_subscribers do |t|
      t.string   :email
      t.timespans
    end
  end
  
  def self.down
    drop_table :launcher_subscribers  
  end
end
