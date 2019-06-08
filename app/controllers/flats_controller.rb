class FlatsController < ApplicationController
  def show
    @flat = Flat.first
  end
end
