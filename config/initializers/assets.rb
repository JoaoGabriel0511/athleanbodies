# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( styles/bootstrap-4.1.2/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( plugins/font-awesome-4.7.0/css/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( plugins/OwlCarousel2-2.2.1/owl.carousel.css )
Rails.application.config.assets.precompile += %w( plugins/OwlCarousel2-2.2.1/owl.theme.css )
Rails.application.config.assets.precompile += %w( plugins/OwlCarousel2-2.2.1/animate.css )
Rails.application.config.assets.precompile += %w( plugins/colorbox/colorbox.css )
Rails.application.config.assets.precompile += %w( styles/main_styles.css )
Rails.application.config.assets.precompile += %w( styles/responsive.css )
Rails.application.config.assets.precompile += %w( js/jquery-3.2.1.min.js )
Rails.application.config.assets.precompile += %w( styles/bootstrap-4.1.2/popper.js )
Rails.application.config.assets.precompile += %w( styles/bootstrap-4.1.2/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( plugins/greensock/TweenMax.min.js )
Rails.application.config.assets.precompile += %w( plugins/greensock/TimelineMax.min.js )
Rails.application.config.assets.precompile += %w( plugins/scrollmagic/ScrollMagic.min.js )
Rails.application.config.assets.precompile += %w( plugins/greensock/animation.gsap.min.js )
Rails.application.config.assets.precompile += %w( plugins/greensock/ScrollToPlugin.min.js )
Rails.application.config.assets.precompile += %w( plugins/OwlCarousel2-2.2.1/owl.carousel.js )
Rails.application.config.assets.precompile += %w( plugins/easing/easing.js )
Rails.application.config.assets.precompile += %w( plugins/progressbar/progressbar.min.js )
Rails.application.config.assets.precompile += %w( plugins/parallax-js-master/parallax.min.js )
Rails.application.config.assets.precompile += %w( plugins/colorbox/jquery.colorbox-min.js )
Rails.application.config.assets.precompile += %w( js/custom.js )
Rails.application.config.assets.precompile += %w( *.jpg *.png)
Rails.application.config.assets.precompile += %w( timetable.jpg)
Rails.application.config.assets.precompile += %w( js/about.js )
Rails.application.config.assets.precompile += %w( js/services.js )
Rails.application.config.assets.precompile += %w( plugins/Isotope/isotope.pkgd.min.js )
Rails.application.config.assets.precompile += %w( js/blog.js )
Rails.application.config.assets.precompile += %w( js/contact.js )
Rails.application.config.assets.precompile += %w( index.jpg )
Rails.application.config.assets.precompile += %w( assets/vendor/fonts/circular-std/style.css )
Rails.application.config.assets.precompile += %w( assets/libs/css/style.css )
Rails.application.config.assets.precompile += %w( assets/vendor/fonts/fontawesome/css/fontawesome-all.css )
Rails.application.config.assets.precompile += %w( assets/vendor/charts/chartist-bundle/chartist.css )
Rails.application.config.assets.precompile += %w( assets/vendor/charts/morris-bundle/morris.css )
Rails.application.config.assets.precompile += %w( assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css )
Rails.application.config.assets.precompile += %w( assets/vendor/charts/c3charts/c3.css )
Rails.application.config.assets.precompile += %w( assets/vendor/fonts/flag-icon-css/flag-icon.min.css )