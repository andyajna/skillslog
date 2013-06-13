class AddDomainIdToSkills < ActiveRecord::Migration
  def change
  	add_column :skills, :domain_id, :integer
  	add_index :skills, :domain_id
  end
end
