class CreateUserHistories < ActiveRecord::Migration
  def change
    create_table :user_histories do |t|
      t.integer :user_id
      t.integer :domain_id
      t.integer :skill_id
      t.date :date_observed
      t.date :date_done
      t.date :date_taught

      t.timestamps
    end
  end
end
