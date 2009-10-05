module Launcher
  class SubscribersController < ActionController::Base
    before_filter :count_down_sentence
    layout 'launcher'
    
    def new
      @subscriber = Subscriber.new
    end
    
    def create
      @subscriber = Subscriber.new(params[:launcher_subscriber])
        
      if @subscriber.save
        flash[:notice] = 'Subscriber was successfully created.'
        redirect_to :action => 'new'
      else
        render :action => "new"
      end
    end
    
    protected
    
    def redirect_to_launcher
    end
    
    private
    
    def count_down_sentence
      @count_down_sentence = Launcher::CountDown.new.to_sentence
    end
    
  end
end