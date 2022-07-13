class ImagesController < ApplicationController


  def create
    image = Image.new( 
    
      product_id: params[:product_id],
      url: params[:url]
      
    )
    if image.save
      @image = image
    else
      render json: {errors: product.errors.full_messages}, status: 422
    end
  end
end
