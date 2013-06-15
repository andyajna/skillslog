class DropDatesFromSkills < ActiveRecord::Migration
  def change
 	remove_column :skills, :observed
 	remove_column :skills, :performed
 	remove_column :skills, :taught
  end
end
