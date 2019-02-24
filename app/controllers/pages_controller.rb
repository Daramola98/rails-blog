# frozen_string_literal: true

class PagesController < ApplicationController
  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end
end
