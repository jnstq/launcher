module Launcher
  autoload :CountDown, 'launcher/count_down'
  
  def self.included(controller)
    controller.before_filter(:redirect_to_launcher)
  end
  
  protected
  
  def redirect_to_launcher
    redirect_to new_launcher_subscriber_path
  end
end
