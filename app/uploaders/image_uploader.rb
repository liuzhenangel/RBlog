class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    if super.present?
      @prefix ||= SecureRandom.uuid.gsub("-","")
      "#{@prefix}.#{file.extension.downcase}"
    end
  end
end
