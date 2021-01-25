class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
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

  private
  def episode_params
    params.require(:episode).permit(:title, :created_at, :image, :player, :introduction)
  end
end
