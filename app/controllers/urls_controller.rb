class UrlsController < ApplicationController

  def index
    @urls = Url.all
  end

  def new

  end
end