class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_parameter)
      if @item.save
          redirect_to root_path
      else
        @item.item_images.build
        render action: 'new'
    end
  end

  def item_parameter
    params.require(:item).permit(:name, item_images_attributes: [:url, :id, :_destroy]).merge(user_id: current_user.id)
  end

end
