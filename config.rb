# Require any additional compass plugins here.
add_import_path "../bower_components/foundation/scss"

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "assets"
sass_dir = "assets"
images_dir = "assets"
javascripts_dir = "javascripts"


# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass


# Shopify Custopm Asset Helper
# As per http://stackoverflow.com/questions/11237792/shopify-theme-with-compass-and-sass
# shopify_image_url('image.png');

module Sass::Script::Functions
  def shopify_image_url(string)
    assert_type string, :String
    Sass::Script::String.new("url({{'#{string.value}' | asset_url}})")
  end
end

# Save For Shopify Liquid
# As per http://stackoverflow.com/questions/11237792/shopify-theme-with-compass-and-sass
on_stylesheet_saved do |filename|
  s = filename + ".liquid"
  puts "copying to: " + s
  FileUtils.cp(filename, s)
  puts "removing: " + filename
  FileUtils.remove_file(filename)
end

preferred_syntax = :scss
