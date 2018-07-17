module ApiHelper
  def with_images(collection)
    collection.map do |entity|
      if entity.image_attachment.nil?
        entity.as_json
      else
        entity.as_json.merge(image: url_for(entity.image))
      end
    end
  end

end
