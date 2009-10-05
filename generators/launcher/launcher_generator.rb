require File.dirname(__FILE__) + '/lib/insert_commands'

class LauncherGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.insert_into "app/controllers/application_controller.rb",
                    "include Launcher"
      
      m.directory 'config'
      m.file "launcher.yml", 'config/launcher.yml'
      m.migration_template "migrations/create_launcher_subscribers.rb",
                           'db/migrate',
                           :migration_file_name => "create_launcher_subscribers"

      m.readme "README"
    end
  end
end
