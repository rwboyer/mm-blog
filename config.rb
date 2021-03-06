
# Compass

# Change Compass configuration
compass_config do |config|
 config.output_style = :compact
 config.add_import_path File.join "#{root}", "bower_components/foundation/scss"
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page "/atom.xml", :layout => false
page "/recent-posts.html", :layout => false
ignore "/test.html"
ignore "/bower_components/"

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

# Helpers

# Ported Liquid tags

require "image_tag"


# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change

activate :blog do |blog|
  #blog.prefix = "blog"
  blog.paginate = true
  blog.page_link = "page/:num"
  blog.summary_separator = /<!--more-->/
  blog.permalink = "/:year/:month/:day/:title.html"
  blog.sources = "blog/:year-:month-:day-:title.html"
  blog.tag_template = "tag.html"
end

activate :directory_indexes
activate :livereload

page "googleb3e869d9c79d4a69.html", :directory_index => false

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end


set :js_dir, 'js'
set :css_dir, 'css'

# foundation 5
# sprockets.append_path ('bower_components/foundation/js')
# sprockets.append_path ('bower_components/foundation/js/vendor')

sprockets.append_path File.join "#{root}", "bower_components"

ready do
  sprockets.append_path File.join "#{root}", "bower_components"
  #sprockets.append_path File.join root, 'bower_components'
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = 'photo.rwboyer.com' # The name of the S3 bucket you are targetting. This is globally unique.
  s3_sync.region                     = 'us-east-1'     # The AWS region for your bucket.
  s3_sync.aws_access_key_id          = ENV['AMAZON_ACCESS_KEY_ID'] #'AWS KEY ID'
  s3_sync.aws_secret_access_key      = ENV['AMAZON_SECRET_ACCESS_KEY'] #'AWS SECRET KEY'
  s3_sync.delete                     = false # We delete stray files by default.
  s3_sync.after_build                = false # We chain after the build step by default. This may not be your desired behavior...
  s3_sync.prefer_gzip                = false
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = true
end

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
