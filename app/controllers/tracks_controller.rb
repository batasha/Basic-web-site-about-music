class TracksController < ApplicationController


  def index
    @tracks = Track.all
  end


  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    song_id = Song.find_or_create_by_song_title(params[:title].downcase).id

    params[:track][:song_id] = song_id

    @track = Track.new(params[:track])

    if @track.save
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    song_id= Song.find_or_create_by_song_title(params[:title].downcase).id

    params[:track][:song_id] = song_id

    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])

    if @track.save
      redirect_to track_url(@track)
    else
      render :edit
    end
  end


end