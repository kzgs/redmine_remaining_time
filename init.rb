require 'redmine'

Redmine::Plugin.register :redmine_remaining_time do
  name 'Redmine Remaining Time plugin'
  author 'Kazuyuki Ohgushi'
  description 'This is a plugin for managing remaining time'
  version '0.0.1'
  url 'https://github.com/kzgs/redmine_remaining_time'
  author_url 'https://github.com/kzgs'
end

require_dependency 'redmine_remaining_time/hooks'
