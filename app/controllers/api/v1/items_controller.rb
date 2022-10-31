class Api::V1::ItemsController < ApplicationController
  def index
    #每页分页也可以在这里配
    # items = Item.page(params[:page]).per(100)

    # 微博的分页方式
    # item = Item.where("id > ?", params[:start_id]).limit(100)
    items = Item.where({created_at: params[:created_after]..params[:created_before]}).page(params[:page])
    render json: { resources: items, pager: {
       page: params[:page] || 1,
      per_page: Item.default_per_page,
      count: Item.count
    } }
  end
  def create
    item = Item.new amount: params[:amount]
    if item.save
      render json: {resource: item}
    else
      render json: {errors: item.errors}
    end
  end
end
