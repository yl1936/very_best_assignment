class VenuesController < ApplicationController
  before_action :set_venue, only: %i[show edit update destroy]

  # GET /venues
  def index
    @q = Venue.ransack(params[:q])
    @venues = @q.result(distinct: true).includes(:bookmarks, :neighborhood,
                                                 :users, :dishes).page(params[:page]).per(10)
  end

  # GET /venues/1
  def show
    @bookmark = Bookmark.new
  end

  # GET /venues/new
  def new
    @venue = Venue.new
  end

  # GET /venues/1/edit
  def edit; end

  # POST /venues
  def create
    @venue = Venue.new(venue_params)

    if @venue.save
      message = "Venue was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @venue, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /venues/1
  def update
    if @venue.update(venue_params)
      redirect_to @venue, notice: "Venue was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /venues/1
  def destroy
    @venue.destroy
    message = "Venue was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to venues_url, notice: message
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_venue
    @venue = Venue.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def venue_params
    params.require(:venue).permit(:name, :address, :neighborhood_id)
  end
end
