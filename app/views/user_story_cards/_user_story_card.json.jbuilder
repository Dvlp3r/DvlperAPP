json.extract! user_story_card, :id, :app, :maintitle, :persona, :trait, :goal, :created_at, :updated_at
json.url user_story_card_url(user_story_card, format: :json)