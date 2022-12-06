source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Sytem Dependencies
gem "rails", "~> 7.0.4"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "jbuilder"
gem "bootsnap", require: false
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Client Side
gem "turbo-rails"
gem "importmap-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "sassc-rails"

# User Authentication
gem "devise"
gem "bcrypt", "~> 3.1.7"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "rspec-rails", "~> 5.1", ">= 5.1.2"
  gem "pry-rails"
  
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "factory_bot_rails"
  gem "foreman"
  gem "byebug"
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "factory_bot"
end

