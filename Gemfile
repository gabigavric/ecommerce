source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4', '>= 5.0.0.1'
gem 'jquery-rails'
gem 'pg', '~> 0.21'
gem 'puma', '~> 3.0'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'faker'
gem 'capybara'
gem 'rest-client'
# gem 'devise', '~> 4.3'
# gem "paperclip", "~> 5.0.0"
# gem 'rails_admin', '~> 1.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'capybara'
  # gem 'factory_bot_rails'
  # gem 'simplecov', require: false
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
