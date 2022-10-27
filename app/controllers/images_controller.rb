class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  def new
    @image=Image.new
  end
  def create
    #p "params: #{params}"
    @image =Image.new(image_params)
    if @image.save
      redirect_to "/images/index"
    else
      render "new"
    end
  end
  private
    def image_params
      params.require(:image).permit(:name)
    end 
end
