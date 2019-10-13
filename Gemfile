source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.6.1"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff
gem 'rails-i18n'
# Pg is the Ruby interface to the PostgreSQL RDBMS
# gem 'pg'
# heroku dependencies
gem 'rails_12factor'
# A library for generating fake data such as names, addresses, and phone numbers.
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
# O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
gem 'lerolero_generator'
# Flexible authentication solution for Rails with Warden
gem 'devise'
# Translations for the devise gem
gem 'devise-i18n'
# FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for Active Record. It lets you create pretty URLs and work with human-friendly strings as if they were numeric ids.
gem 'friendly_id'
# Turbolinks makes navigating your web application faster
gem 'turbolinks', '~> 5.0.0'
# Pundit provides a set of helpers which guide you in leveraging regular Ruby classes and object oriented design patterns to build a simple, robust and scaleable authorization system
gem 'pundit'
# Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Translations for the kaminari gem
gem 'kaminari-i18n'
# The safe Markdown parser, reloaded.
gem 'redcarpet'
#Markdown Lorem Ipsum generator
gem 'doctor_ipsum'
# Integration of RubyMoney - Money with Rails
gem 'money-rails'
# Easy file attachment management for ActiveRecord https://thoughtbot.com/open-source
gem 'paperclip', '~> 5.0.0'
# Prawn Handler for Rails. Handles and registers pdf formats.
gem 'prawn-rails'
# PDF generator (from HTML) plugin for Ruby on Rails http://mileszs.com/blog/2009/06/17/wi…
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
#jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# The most popular front-end framework for developing responsive, mobile first projects on the web.
gem 'rails-assets-bootstrap'
# jquery for rails
gem 'jquery-rails'
# A Ruby Gem that wraps the functionality of jQuery Raty library, and provides optional IMDB style rating.
gem 'ratyrate'
# Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
# BootBox js for pretty notifications in rails applications
gem 'rails-assets-bootbox', source: 'https://rails-assets.org'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Bootstrap Notify
gem 'rails-assets-bootstrap.growl', source: 'https://rails-assets.org'
# A cross-browser library of CSS animations
gem 'rails-assets-animate-css', source: 'https://rails-assets.org'
# Bootstrap-markdown
gem 'rails-assets-bootstrap-markdown', source: 'https://rails-assets.org'
# A markdown parser built for speed
gem 'rails-assets-marked', source: 'https://rails-assets.org'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Better error page for Rack apps
  gem "better_errors"
  # Generate Entity-Relationship Diagrams for Rails applications
  gem "rails-erd"
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
