class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
  validates :slug,  presence: true, uniqueness: true

  before_validation :ensure_slug

  def to_param = slug

  def formatted_date
    published_at.strftime("%Y-%m-%d")
  end

  private

  def ensure_slug
    self.slug = title.to_s.parameterize if slug.blank? && title.present?
  end
end
