class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def poster
    return self.image.variant(resize: '700x700')
  end

  def thumbnailbig
    return self.image.variant(resize: '500x500')
  end

  def thumbnail
    return self.image.variant(resize: '300x300')
  end

  def logo
    return self.image.variant(resize: '200x200')
  end

  def icon
    return self.image.variant(resize: '100x100')
  end
end
