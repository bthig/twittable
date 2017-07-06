class TweetsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def show
  end

  def edit
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save
      format.html { redirect_to @tweet, notice: 'You just twitted successfully.' }
     else
      format.html { render :new }
     end  # end of if

   end # end of do

  end # end of create action

  private

  def tweet_params
    params.require(:tweet).permit(:message, :user_id)
  end

end # end of tweet controller
