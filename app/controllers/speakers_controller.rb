class SpeakersController < ApplicationController

  def hosts
    @hosts = Speaker.where(host_or_guest: 'Host').order('name')
    render :hosts
  end

  def guests
    @guests = Speaker.where(host_or_guest: 'Guest').order('name')
    render :guests
  end

  def new
    check_for_admin
    @speaker = Speaker.new
  end

  def create
    speaker = Speaker.create speaker_params
    redirect_to speaker_path(speaker)
  end

  def show
    @speaker = Speaker.find params[:id]
  end

  def edit
    check_for_admin
    @speaker = Speaker.find params[:id]
  end

  def update
    speaker = Speaker.find params[:id]
    speaker.update speaker_params
    redirect_to speaker_path(speaker)
  end

  def destroy
    check_for_admin
    speaker = Speaker.find params[:id]
    speaker.destroy
    redirect_to hosts_path
  end

  private
  def speaker_params
    params.require(:speaker).permit(:name, :host_or_guest, :image, :introduction)
  end
end
