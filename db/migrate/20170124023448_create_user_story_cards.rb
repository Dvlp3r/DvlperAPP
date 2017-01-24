class CreateUserStoryCards < ActiveRecord::Migration[5.0]
  def change
    create_table :user_story_cards do |t|
      t.string :app
      t.string :maintitle
      t.string :persona
      t.string :trait
      t.string :goal

      t.timestamps
    end
  end
end
