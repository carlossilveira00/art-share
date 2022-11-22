class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item)
  end

  def show
    authorize @item
  end

  def new
  end
end
