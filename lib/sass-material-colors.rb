require "sass-material-colors/version"

module SassMaterialColors
  class << self
    # Inspired by Bootstrap Sass, inspired in turn by Kaminari
    def load!
      configure_sass
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def sass_path
      File.join gem_path, 'sass'
    end

    private

    def configure_sass
      require 'sass'

      ::Sass.load_paths << sass_path
    end
  end
end

::SassMaterialColors.load!
