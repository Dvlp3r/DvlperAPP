class AddFeatureToUserStoryCards < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_story_cards, :feature, foreign_key: true
  end
end
