class Article < Base
  scope :pushed, -> { where(draft: false) }

  def push
    self.update(draft: !self.draft)
  end
end
