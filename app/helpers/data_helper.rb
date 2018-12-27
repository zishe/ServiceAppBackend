require 'ostruct'

module DataHelper
  def with_images(collection)
    collection.map do |entity|
      # byebug
      if entity.image_attachment.nil?
        OpenStruct.new entity.attributes
      else
        image_url = Rails.application.routes.url_helpers.rails_blob_path(entity.image, host: 'http://localhost:3000/')
        OpenStruct.new entity.attributes.merge(
            image: "http://localhost:3000#{ image_url || '' }"
        )
        # "http://localhost:3000/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--08ae7a852354ccd079c178e18c31f9b18967b615/Screen%20Shot%202018-06-16%20at%2010.58.09.png")
        # entity.as_json.merge(image: url_for(entity.image))
      end
    end
  end
end
