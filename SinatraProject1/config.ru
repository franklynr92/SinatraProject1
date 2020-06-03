require_relative './config/environment'

require './config/environment'
=begin
if ActiveRecord::Migrator.needs_migration?
    raise 'Migrations are pending. Run 'rake db:migrate' to resolve the issue.'
end
=end #issues with this method
use Rack::MethodOverride
run ApplicationController
#use Rack::Session::Cookie deletes at 26:00
use SessionsController
use PostsController
use UsersController

#mounted?