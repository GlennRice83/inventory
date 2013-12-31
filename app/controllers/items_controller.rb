class ItemsController < ApplicationController
  helper_method :item_form

  def index
    @items = Item.all
  end

  def new; end

  def create
    if item_form.save
      redirect_to(
        items_path,
        flash: { success: "item successfully created" }
      )
    else
      render :new
    end
  end

  private

  def item_form
    @item_form ||= ItemForm.new(params[:item_form])
  end
end
