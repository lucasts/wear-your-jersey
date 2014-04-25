source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0'

gem 'puma'
gem 'pg'
gem 'foreman'
gem 'paperclip', '~> 4.1'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'active_admin_editor'
gem 'activeadmin-sortable'
gem 'acts_as_list' # activeadmin-sortable dependencie
gem 'draper'
gem 'active_model_serializers'
gem 'enumerate_it'

# Assets
gem 'sass-rails', '~> 4.0.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'neat'
gem 'uglifier', '>= 1.3.0'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "seedbank"
end

group :test do
  gem "faker"
  gem "shoulda-matchers"
  gem "codeclimate-test-reporter"
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
