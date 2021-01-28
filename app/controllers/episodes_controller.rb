class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all.order('title')
  end

  def new
    check_for_admin
    @episode = Episode.new
  end

  def create
    episode = Episode.create episode_params
    redirect_to episode_path(episode)
  end

  def show
    @episode = Episode.find params[:id]
  end

  def edit
    check_for_admin
    @episode = Episode.find params[:id]
  end

  def update
    episode = Episode.find params[:id]
    episode.update episode_params
    redirect_to episode_path(episode)
  end

  def destroy
    check_for_admin
    episode = Episode.find params[:id]
    episode.destroy
    redirect_to episodes_path
  end

  def add
    if @current_user != nil
      episode = Episode.find params[:id]
      @current_user.episodes << episode
      redirect_to user_path(@current_user)
    else
      redirect_to login_path
    end
  end

  private
  def episode_params
    params.require(:episode).permit(:title, :created_at, :image, :player, :introduction, :speaker_ids => [])
  end
end
