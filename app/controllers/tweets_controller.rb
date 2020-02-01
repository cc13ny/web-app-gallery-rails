class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  # i.e. timeline
  def index
    page_size = 5

    respond_to do |format|
      format.html {
        if params[:max_id].blank? and params[:min_id].blank?
          @tweets = current_user.tweets.ordered.first(page_size+1)

          if @tweets.size > page_size
            @next_max_id = (@tweets.pop).id
          end
        end
      }
      format.js {
        if params[:max_id].present?
          @tweets = current_user.tweets.ordered.where("id <= ?", params[:max_id]).first(page_size+1)

          if @tweets.size > page_size
            @next_max_id = (@tweets.pop).id
          end

          render 'load_more'
        elsif params[:min_id].present?
          @tweets = current_user.tweets.ordered.where("id > ?", params[:min_id]).first(page_size+1)

          render 'fetch_more'
        end
      }
    end
  end

  def newsfeed

  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
        format.html { redirect_to @tweet, notice: 'Tweet was successfully created.' }
        format.json { render :show, status: :created, location: @tweet }
        format.js
      else
        format.html { render :new }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        format.html { redirect_to @tweet, notice: 'Tweet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet }
      else
        format.html { render :edit }
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
    respond_to do |format|
      format.html { redirect_to tweets_url, notice: 'Tweet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:user_id, :text)
    end
end
