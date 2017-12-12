class Photo < Base

  def images
    Nokogiri::HTML(self.content).xpath("//img").map do |img|
      img['src']
    end
  end

  def cover
    images = Nokogiri::HTML(self.content).xpath("//img")
    images[0]['src'] if images.present?
  end
end
