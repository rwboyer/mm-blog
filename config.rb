###
# Compass
###

# Change Compass configuration
compass_config do |config|
 config.output_style = :compact
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/feed.xml", :layout => false

#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Ported Liquid tags

require "image_tag"


# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

activate :blog do |blog|
  #blog.prefix = "blog"
  blog.paginate = true
  blog.page_link = "page/:num"
  blog.summary_separator = /<!--more-->/
  blog.permalink = "/:year/:month/:day/:title.html"
  blog.sources = "blog/:year-:month-:day-:title.html"
end

activate :directory_indexes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


set :js_dir, 'js'
set :css_dir, 'css'

foundation_path = Gem::Specification.find_by_name('zurb-foundation').gem_dir

sprockets.append_path (foundation_path + '/js/vendor/')
sprockets.append_path (foundation_path + '/js/foundation/')

# print foundation_path + '/js/vendor/' + "\n"

#set :js_assets_paths, [File.join(foundation_path, 'js')]
#set :sass_assets_paths, [File.join(foundation_path, '_scss')]

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
