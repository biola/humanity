require 'rails/generators'
require 'rails/generators/migration'

class HumanityGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.join(File.dirname(__FILE__), 'templates')

  def self.next_migration_number(dirname)
    sleep 1
    if ActiveRecord::Base.timestamped_migrations
      Time.now.utc.strftime("%Y%m%d%H%M%S")
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    migration_template 'create_users.rb', 'db/migrate/create_users.rb'
    migration_template 'create_roles.rb', 'db/migrate/create_roles.rb'
    migration_template 'create_assignments.rb', 'db/migrate/create_assignments.rb'
  end
end