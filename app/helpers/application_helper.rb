module ApplicationHelper

  def public_config
    public_config=Config.first
  end
  def public_slider
    public_slider=Slider.all
  end
end
