class SidesController < ApplicationController
  def index
    @kefus = Kefu.all

  end
end
