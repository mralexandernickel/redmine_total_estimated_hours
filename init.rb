require 'redmine'
require_dependency 'redmine_total_estimated_hours/hooks'

Redmine::Plugin.register :redmine_total_estimated_hours do
  name 'Redmine Total Estimated Hours'
  author 'Alexander Nickel'
  description 'This is a plugin to show the Total Estimated Hours in the Projects Overview Sidebar'
  version '0.1.0'
  url 'http://mralexandernickel.github.com'
  author_url 'http://mralexandernickel.github.com'
end
