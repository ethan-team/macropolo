source 'https://rubygems.org'

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

ruby '1.9.3'
#ruby '2.0.0'
gem 'rails', '3.2.13'

#database
#gem 'sqlite3'
gem 'mysql2'
#gem 'pg'      #for heroku

#plug-ins
gem 'activeadmin'
gem 'country_select'
gem 'kaminari'
#gem 'seedbank', github: 'james2m/seedbank'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer", :platform=>:ruby, :require => 'v8'
end


gem 'jquery-rails', '~> 2.3.0'
gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'figaro'
gem 'rolify'
gem 'simple_form'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :rbx]
  gem 'quiet_assets'
  gem 'debugger'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
end

# possible adapters
#  mysql      - MRI
#  jdbcmysql  - jruby
#  mysql2     - MRI
#  postgresql - MRI
