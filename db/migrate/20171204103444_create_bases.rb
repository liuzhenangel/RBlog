class CreateBases < ActiveRecord::Migration[5.1]
  def change
    create_table :bases do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
