class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
      t.string :name
      t.string :curriculum
      t.string :stream

      t.timestamps
    end
  end
end
