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
page "/atom.xml", :layout => false
page "/recent-posts.html", :layout => false
ignore "/test.html"

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

foundation_path = Gem::Specification.find_by_name('zurb-foundation').gem_dir

sprockets.append_path (foundation_path + '/js/vendor/')
sprockets.append_path (foundation_path + '/js/foundation/')

# print foundation_path + '/js/vendor/' + "\n"

#set :js_assets_paths, [File.join(foundation_path, 'js')]
#set :sass_assets_paths, [File.join(foundation_path, '_scss')]

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

# Fog.credentials = { :path_style => true }
# 
# activate :sync do |sync|
#   sync.fog_provider = 'AWS' # Your storage provider
#   sync.fog_directory = 'typkit.rwboyer.com' # Your bucket name
#   sync.fog_region = 'us-east-1' # The region your storage bucket is in (eg us-east-1, us-west-1, eu-west-1, ap-southeast-1 )
#   sync.aws_access_key_id = 'AKIAJKY3IKU2UPVE6XEQ' # Your Amazon S3 access key
#   sync.aws_secret_access_key = '1MsBvX+SH8CNfFTVrqE7nf1GBXI7MO/21SYPIUep' # Your Amazon S3 access secret
#   sync.existing_remote_files = 'keep' # What to do with your existing remote files? ( keep or delete )
#   # sync.gzip_compression = false # Automatically replace files with their equivalent gzip compressed version
#   # sync.after_build = false # Disable sync to run after Middleman build ( defaults to true )
# end

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
