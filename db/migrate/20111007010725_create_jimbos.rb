class CreateJimbos < ActiveRecord::Migration
  def self.up
    create_table :jimbos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :jimbos
  end
end
