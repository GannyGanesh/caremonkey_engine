# CURRENT FILE :: lib/generators/team_page/team_page_generator.rb
# Requires
require 'rails/generators'
require 'rails/generators/migration'

class CaremonkeyEngineGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      Time.new.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    migration_template '20120405025747_create_attachments.rb', 'db/migrate/20120405025747_create_attachments.rb'
    migration_template '20120405025950_create_user_profiles.rb', 'db/migrate/20120405025950_create_user_profiles.rb'
    migration_template '20120405030210_create_subjects.rb', 'db/migrate/20120405030210_create_subjects.rb'
    migration_template '20120405030637_devise_create_users.rb', 'db/migrate/20120405030637_devise_create_users.rb'
  end
end
