class CreateYos < ActiveRecord::Migration
  def change
    create_table :yos do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
