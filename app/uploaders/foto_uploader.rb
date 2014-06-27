# encoding: utf-8

class FotoUploader < CarrierWave::Uploader::Base
  version :producto, :if => :is_producto?
  version :usuario, :if => :is_usuario?

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  version :producto do
    process resize_to_fill: [300, 273]
  end

  version :usuario do
    process resize_to_fill: [50, 50]
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:


  def cache_dir
    '/tmp/smarket-cache'
  end

  def extension_white_list
     %w(jpg jpeg png)
  end

  protected

    def is_producto? picture
      model.class.name.split('::').last.tolower = "producto"
    end

    def is_usuario? picture
      model.class.name.split('::').last.tolower  = "usuario"
    end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
