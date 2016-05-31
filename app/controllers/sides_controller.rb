class SidesController < ApplicationController
  def index
    @kefus = Kefu.all
    @frames = Frame.all
  end
end
