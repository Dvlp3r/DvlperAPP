class UserStoryCardsController < ApplicationController
  before_action :set_user_story_card, only: [:show, :edit, :update, :destroy]

  # GET /user_story_cards
  # GET /user_story_cards.json
  def index
    @user_story_cards = UserStoryCard.all
  end

  # GET /user_story_cards/1
  # GET /user_story_cards/1.json
  def show
  end

  # GET /user_story_cards/new
  def new
    @user_story_card = UserStoryCard.new
  end

  # GET /user_story_cards/1/edit
  def edit
  end

  # POST /user_story_cards
  # POST /user_story_cards.json
  def create
    @user_story_card = UserStoryCard.new(user_story_card_params)

    respond_to do |format|
      if @user_story_card.save
        format.html { redirect_to @user_story_card, notice: 'User story card was successfully created.' }
        format.json { render :show, status: :created, location: @user_story_card }
      else
        format.html { render :new }
        format.json { render json: @user_story_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_story_cards/1
  # PATCH/PUT /user_story_cards/1.json
  def update
    respond_to do |format|
      if @user_story_card.update(user_story_card_params)
        format.html { redirect_to @user_story_card, notice: 'User story card was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_story_card }
      else
        format.html { render :edit }
        format.json { render json: @user_story_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_story_cards/1
  # DELETE /user_story_cards/1.json
  def destroy
    @user_story_card.destroy
    respond_to do |format|
      format.html { redirect_to user_story_cards_url, notice: 'User story card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_story_card
      @user_story_card = UserStoryCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_story_card_params
      params.require(:user_story_card).permit(:app, :maintitle, :persona, :trait, :goal)
    end
end
