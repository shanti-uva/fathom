class CreateRelationTypes < ActiveRecord::Migration
  def self.up
    create_table :relation_types do |t|
      t.string :name
      t.integer :created_by  
      t.timestamps
    end
  end

  def self.down
    drop_table :relation_types
  end
end
