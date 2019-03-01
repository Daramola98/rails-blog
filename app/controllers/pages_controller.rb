# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :set_page, only: %i[show edit update destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/:id
  # GET /pages/1.json
  def show
    @page = Page.find params[:id]
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # POST /pages
  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to @page, notice: 'Page was created successfully.'
  end

  # GET /pages/:id/edit
  def edit
    @page = Page.find params[:id]
  end

  # PATCH /pages/:id
  def update
    @page = Page.find params[:id]
    @page.update page_params
    redirect_to @page
  end

  #DELETE /pages/:id
  def destroy
    @page = Page.find params[:id]
    @page.destroy
    redirect_to pages_path
  end

  private

  def page_params
    params.require(:page).permit(:title, :body, :slug)
  end

  def set_page
    @page = Page.find params[:id]
  end
end
