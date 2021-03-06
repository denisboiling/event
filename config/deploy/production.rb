set :stage, 'production'

role :web, 'event.ru'
role :app, 'event.ru'
role :db,  'event.ru', :primary => true

set :user, 'event_production'
set :deploy_to, '/var/www/event_production'

set :rails_env, 'production'
set :branch, 'master'
set :unicorn_env, 'production'
set :keep_releases, 10
set :app_env, 'production'

set :rake, "#{File.join shared_path, 'scripts/rvm_wrapper.sh'} #{rake}"

after 'deploy:symlink_shared', 'deploy:symlink_sphinx_config'

#before 'sphinx:stop', 'sphinx:configure'
#before 'db:drop', 'unicorn:stop', 'sphinx:stop'

#before 'unicorn:restart', 'sphinx:rebuild'
before 'unicorn:restart', 'deploy:symlink_robots'
after 'unicorn:restart', 'weather:update'
after 'unicorn:restart', 'whenever:update'
