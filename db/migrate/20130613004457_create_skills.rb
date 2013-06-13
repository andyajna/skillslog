class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.text :standard
      t.date :observed
      t.date :performed
      t.date :taught

      t.timestamps
    end
  end
end
