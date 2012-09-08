class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids  do |t|
    t.timestamps
    end
  end
end
