class Post < ActiveRecord::Base
  validates :title, presence: true
  def to_s
    title
  end
  def to_param
    "#{id}-#{title.parameterize}"
  end
end
