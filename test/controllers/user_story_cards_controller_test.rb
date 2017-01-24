require 'test_helper'

class UserStoryCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_story_card = user_story_cards(:one)
  end

  test "should get index" do
    get user_story_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_user_story_card_url
    assert_response :success
  end

  test "should create user_story_card" do
    assert_difference('UserStoryCard.count') do
      post user_story_cards_url, params: { user_story_card: { app: @user_story_card.app, goal: @user_story_card.goal, maintitle: @user_story_card.maintitle, persona: @user_story_card.persona, trait: @user_story_card.trait } }
    end

    assert_redirected_to user_story_card_url(UserStoryCard.last)
  end

  test "should show user_story_card" do
    get user_story_card_url(@user_story_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_story_card_url(@user_story_card)
    assert_response :success
  end

  test "should update user_story_card" do
    patch user_story_card_url(@user_story_card), params: { user_story_card: { app: @user_story_card.app, goal: @user_story_card.goal, maintitle: @user_story_card.maintitle, persona: @user_story_card.persona, trait: @user_story_card.trait } }
    assert_redirected_to user_story_card_url(@user_story_card)
  end

  test "should destroy user_story_card" do
    assert_difference('UserStoryCard.count', -1) do
      delete user_story_card_url(@user_story_card)
    end

    assert_redirected_to user_story_cards_url
  end
end
