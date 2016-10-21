class HomesController < ApplicationController
	before_action :set_home, except: [:index, :new, :create]

  def index
  	@homes = Home.masonry
  end

  def show
  end

  def new
  	@home = Home.new
  end

  def create
  	@home = Home.create(home_params)
  	if @home.save
	  	@home.cover_photo = Home.upload_image(params[:home][:cover_photo])
	  	if params[:home][:photos]
	  		paths = params[:home][:photos].map { |p| p.path }
	  		ImageWorker.perform_async(@home.id, paths)
	  	end
	  	@home.save
  		flash[:success] = "Home created successfully"
  		redirect_to home_path(@home)
  	else
  		flash.now[:danger] = @home.errors.full_messages.join('<br>').html_safe
  		render :new
  	end
  end

  def edit
  end

  def update
  	if params[:home][:cover_photo]
  		@home.cover_photo = @home.upload_image(params[:home][:cover_photo])
  	end
  	if @home.update(home_params)
  		flash[:success] = "Home updated successfully"
  		redirect_to home_path(@home)
  	else
  		flash[:danger] = @home.errors.full_messages.join('<br>').html_safe
  		render :edit
  	end
  end

  def destroy
  	@home.delete
  	redirect_to homes_path
  	flash[:success] = "Home deleted"
  end

  private

  def set_home
  	@home = Home.find_by(id: params[:id])
  end

  def home_params
  	params.require(:home).permit(:price, :sqft, :description, :line_1, :line_2, :city, :state, :zip_code, :bedrooms, :bathrooms)
  end
end
