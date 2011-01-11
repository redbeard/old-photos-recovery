require 'RMagick'
require 'pathname'

class FixPhoto

	def process_file(source_filename)
		image = Magick::Image.read(source_filename).first
		cols, rows = image.columns, image.rows

		destination_image = image.equalize().enhance().gaussian_blur(4.0, 25.0)		
		
		destination_image.write(destination_filename(source_filename))	
	end
	
	private
	
	def destination_filename(source_filename)
		source_pathname = Pathname.new(source_filename)
		
		"destination-images/#{source_pathname.basename}.png"
	end
	
end

