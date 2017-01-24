class CreateUserStories < ActiveRecord::Migration[5.0]
  def change
    create_table :user_stories do |t|
      t.string :title
      t.string :app
      t.string :persona
      t.string :attribute
      t.string :goal

      t.timestamps
    end
  end
end
