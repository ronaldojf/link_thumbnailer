require 'fastimage'

module LinkThumbnailer
  module ImageParsers
    class Type

      def self.perform(image)
        ::FastImage.type(image.src, raise_on_failure: true)
      rescue ::FastImage::FastImageException
        :jpg
      end

    end
  end
end
