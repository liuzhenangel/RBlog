class AddDraftToBase < ActiveRecord::Migration[5.1]
  def change
    add_column :bases, :draft, :boolean, default: true

    Article.all.update(draft: false)
    Photo.all.update(draft: false)
  end
end
