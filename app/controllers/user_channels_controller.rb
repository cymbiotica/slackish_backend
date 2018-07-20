class UserChannelsController < ApplicationController
  before_action :set_user_channel, only: [:show, :update, :destroy]

  # GET /user_channels
  def index
    @user_channels = UserChannel.all

    render json: @user_channels
  end

  # GET /user_channels/1
  def show
    render json: @user_channel
  end

  # POST /user_channels
  def create
    @user_channel = UserChannel.new(user_channel_params)

    if @user_channel.save
      render json: @user_channel, status: :created, location: @user_channel
    else
      render json: @user_channel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_channels/1
  def update
    if @user_channel.update(user_channel_params)
      render json: @user_channel
    else
      render json: @user_channel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_channels/1
  def destroy
    @user_channel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_channel
      @user_channel = UserChannel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_channel_params
      params.require(:user_channel).permit(:user_id, :channel_id)
    end
end
