class AddVisitToBase < ActiveRecord::Migration[5.1]
  def change
    add_column :bases, :visit, :integer
  end
end
