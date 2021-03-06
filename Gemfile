source 'https://rubygems.org'

gem 'rails', '3.2.11'

group :production, :staging do
  gem 'pg'
  gem 'whenever'
  gem 'exception_notification'
end

gem 'jquery-rails'
gem 'remotipart', '~> 1.0'
gem 'chosen-rails'
gem 'formtastic', '~> 2.2.1'
gem 'kaminari', github: 'vladimir-vg/kaminari', branch: 'padding-pages-count-fix'

gem 'activeadmin', '~> 0.5.1'
gem 'active_admin_editor', github: 'vladimir-vg/active_admin_editor', branch: 'custom-toolbar'

gem 'russian'
gem 'mini_magick'

gem 'carrierwave'

gem 'sorcery', '~> 0.8.1'
gem 'cancan'
gem 'state_machine'
gem 'ancestry'
gem 'simple_enum'
gem 'rmagick'
gem 'easy_captcha'
gem 'unicorn'

gem 'mysql2'
gem 'thinking-sphinx', '~> 3.0.1'
gem 'activemerchant', require: 'active_merchant'

gem 'friendly_id', '~> 4.0.9'

gem 'acts-as-taggable-on', '~> 2.3.1'

gem 'jquery-ui-themes'
gem 'delayed_job_active_record'

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
  gem 'sqlite3'
  gem 'sextant'
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-unicorn'
  gem 'rvm-capistrano'
  gem 'debugger'

  gem 'rb-inotify', '~> 0.8.8'
end

group :test, :development do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'capybara'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'ffaker'
  gem 'timecop'
  gem 'email_spec'
  gem 'rspec-mocks'
end
