class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :sub_title
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
