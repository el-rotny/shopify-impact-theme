Shopify Skeleton and Foundation 5
============

The Skeleton theme is a simplified Shopify theme, to be used as a "blank slate" starting point for theme designers.

<b>Features:</b>
- Check

Requirements
---------------------
Foundation 5

SCSS & Foundation
---------------------
This project uses compass and imports Foundation 5 to help bootstrap grids and basic elements. Other SCSS files will be dependant on having the foundation varaibles available to them. At the same time, we want to have control of what actually gets compiled and SCSS with compass is a great way to do this. 

We will first want to make sure compass is installed.
In command line run 
			gem install compass

Foundation now uses bower to install the foundation dependancies. To keep dependacies outside of the shopify theme directory, make sure your theme directory is contained in a empty dir which will be your root. 

Install the CLI
			gem install foundation
			foundation version #=> should say v1.0.3 or higher

In the root of your Compass project create a file called bower.json with this content:

		{
		  "name": "PROJECT_NAME",
		  "dependencies": {
		    "foundation": "~5.1.0"
		  }
		}

When making changes, your SCSS files will be automatically compiled to CSS. 

Run compass to compile locally
---------------------

In command line, cd to your projecy root and run
			compass watch

Thats it!. 

Notes:
In command line cd to your project root (not your theme root) & run 
			bower install.

Our config.rb file already has the correct  import path

			add_import_path "../bower_components/foundation/scss"

We placed a minified version of the foundation js files within the theme assets directory so you dont have to worry about the rest of the dependances.

If you have have been using Foundation 4 in the past, see http://foundation.zurb.com/docs/upgrading.html for documented changes.

Additional resources (Shopify)
---------------------
- <a href="http://meetup.shopify.com/">Free workshops</a>: Sign up for a free Shopify For Designers workshop in a city near you.
- <a href="http://docs.shopify.com/themes">Theme Documentation</a>: Learn more about Liquid and theme templates.
- <a href="http://apps.shopify.com/desktop-theme-editor">Desktop Theme Editor</a>: For Mac OS X users, we recommend our free app to sync theme files in development. 
- Need more help? Ask a question in our <a href="http://ecommerce.shopify.com/c/ecommerce-design"> Design Forums</a>.
