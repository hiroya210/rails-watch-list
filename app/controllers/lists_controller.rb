# frozen_string_literal: true

class ListsController < ApplicationController
  before_action :find_list, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home; end

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      flash[:alert] = "\"#{@list.name}\" list successfully created"
      redirect_to @list
    else
      render :new
    end
  end

  def show
    @review = Review.new
  end

  def edit; end

  def update
    @list.update(list_params)
    flash[:alert] = "\"#{@list.name}\" list has been updated"
    redirect_to @list
  end

  def destroy
    flash[:remove] = "\"#{@list.name}\" list has been deleted"
    @list.destroy

    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
