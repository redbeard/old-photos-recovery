require 'rubygems'
require 'fix_photo'

task :default do

	fix_photo = FixPhoto.new	
	
	
	Dir['source-images/*.tif'].each do | source_file |
		fix_photo.process_file(source_file)
  	end	
end

