class Api::V1::LivesController < ApplicationController

  before_action :set_live, only: %i[ show update destroy ]

  def index
    lives = Live.all
    render json: lives, status: :ok
  end

  def show
    render json: @live, status: :ok
  end

  def create
    live = Live.new(live_params.merge(author: current_user))

    if live.save
      render json: live, status: :created
    else
      render json: { errors: live.errors.full_messages }, status: 422
    end
  end

  def update
    if @live.update(live_params)
      render json: @live, status: :ok
    else
      render json: { errors: @live.errors.full_messages }, status: 422
    end
  end

  def destroy
    if @live.destroy
      head 204
    else
      head 422
    end
  end

  private

  def set_live
    @live = Live.find(params[:id])
  end

  def live_params
    params.require(:live).permit(:subject, :description)
  end
end
