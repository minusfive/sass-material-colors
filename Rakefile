require "bundler/gem_tasks"

namespace :sass_material_colors do

  desc "Updates version number in bower and package json files"
  task :update_version do
    require_relative "lib/sass-material-colors/version"
    version = ::SassMaterialColors::VERSION
    Dir.glob('lib/templates/*.template').each do |template|
      content     = File.read(template).gsub(/VERSION_PLACEHOLDER/, version)
      output_file = File.basename template, '.template'
      File.write output_file, content
    end
    system "git add lib/sass-material-colors/version.rb bower.json package.json"
    system "git commit -m \"Version bumped to #{version}\""
  end

  desc "Publishes new version to bower + npm registries"
  task :npm_publish do
    system 'npm publish .'
  end

end

# Make the sass_material_colors:update_version a pre-requisite
# for :release, and publish to npm after :release
task :release => "sass_material_colors:update_version" do
  Rake::Task['sass_material_colors:npm_publish'].execute
end
