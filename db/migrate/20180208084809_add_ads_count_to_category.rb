class AddAdsCountToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :ads_count, :integer, default:0
  end
end
