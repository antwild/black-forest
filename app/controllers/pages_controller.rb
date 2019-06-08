class PagesController < ApplicationController
  def index
    @flat = Flat.first
  end
end
