CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider => 'AWS',
		:aws_access_key_id => 'AKIAJBS7LZFDEXKGBMCA',
		:aws_secret_access_key => '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'
	}

	config.fog_directory = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}" 
end