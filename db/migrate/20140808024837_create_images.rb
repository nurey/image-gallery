class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :caption
      t.text :description
      t.text :alt

      t.timestamps
    end
  end
end
