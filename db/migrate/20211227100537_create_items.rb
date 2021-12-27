class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end
