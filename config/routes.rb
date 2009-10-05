ActionController::Routing::Routes.draw do |map|
  map.lanunch '/launcher/lanunch.:format', :format => 'js', :controller => 'launcher/launches', :action => 'show'
  map.namespace :launcher do |launcher|
    launcher.resources :subscribers,
      :controller => 'subscribers',
      :only => [:new, :create]
  end
end
