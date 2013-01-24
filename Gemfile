source :rubygems

gem 'rails', '3.2.11'
gem 'pg'

gem 'jquery-rails'
gem 'chosen-rails'
gem 'formtastic', '~> 2.2.1'
gem 'kaminari', '~> 0.14.1'

gem 'activeadmin', '~> 0.5.1'
gem 'active_admin_editor', github: 'vladimir-vg/active_admin_editor', branch: 'custom-toolbar'

gem 'russian'
gem 'mini_magick'
gem 'carrierwave'
gem 'sorcery', github: 'Fodoj/sorcery', ref: 'f4c22e6a8c995d3498606736d05bab64dd6bc18a'
gem 'cancan'
gem 'state_machine'
gem 'ancestry'
gem 'simple_enum'
gem 'rmagick'
gem 'easy_captcha'
gem 'unicorn'
gem 'activemerchant', require: 'active_merchant'

gem 'acts-as-taggable-on', '~> 2.3.1'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # use latest code with fixes for input-placeholder
  # when newer version comes (0.12.3) might be turned back to stable
  gem 'compass', github: 'chriseppstein/compass', branch: 'css3'
  
  gem 'compass-rails', '~> 1.0.3'
  gem 'therubyracer', :platforms => :ruby
  gem 'libv8', '~> 3.11.8'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'thin'

  gem 'capistrano'
  gem 'capistrano-unicorn'
  gem 'rvm-capistrano'

  # for RailsPanel Chrome extension
  gem 'meta_request', '0.2.0'
end

group :test, :development do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'capybara'
  gem 'debugger'
end
