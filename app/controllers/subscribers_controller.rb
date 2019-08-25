class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new subscriber_params

    respond_to do |format|
      if @subscriber.save
        # format.html { redirect_to @event, notice: 'Event was successfully created.' }
        # format.json { render :show, status: :created, location: @event }
        format.js
      else
        # format.html { render :new }
        # format.json { render json: @event.errors, status: :unprocessable_entity }
        format.js
      end
    end

  end

  def unsubscribe

  end

  private
    def subscriber_params
      params.require(:subscriber).permit(:emal)
    end
end
