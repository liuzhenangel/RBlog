class Photo < Base
  scope :pushed, -> { where(draft: false) }

  def images
    Nokogiri::HTML(self.content).xpath("//img").map do |img|
      img['src']
    end
  end

  def push
    self.update(draft: !self.draft)
  end

  def cover
    images = Nokogiri::HTML(self.content).xpath("//img")
    images[0]['src'] if images.present?
  end
end
