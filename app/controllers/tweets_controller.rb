  class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
    end
    def new
      @tweet = Tweet.new
    end
    def create
      @tweet = Tweet.new(message: params[:tweet][:message], tdate: Time.current)
      if @tweet.save
        flash[:notice] = 'ツイートしました'
        redirect_to '/'
      else
        render 'new'
      end
    end
    def destroy
      tweet = Tweet.find(params[:id])
      tweet.destroy
      flash[:notice] = 'ツイートを削除しました'
      redirect_to '/'
    end
  end