class Blog < ActiveRecord::Base

  after_destroy -> { Tag.cleanup }

	mount_uploader :banner, ImageUploader

  default_scope { order('created_at DESC') }


  has_many :blog_tags, dependent: :destroy
  has_many :tags, through: :blog_tags

  validates :name, presence: true


  def machine_name
    self.name.parameterize
  end

  def self.published
    Blog.where(published: true)
  end

  def self.by_tag tag
    Tag.find_by(machine_name: tag).blogs
  end

  def self.by_date date
    Blog.by_month[date]
  end

  def self.by_month
    Blog.published.group_by { |m| m.created_at.beginning_of_month.strftime("%B %y") }
  end

  def self.amount_by_month
    Blog.by_month.map { |date, blogs| [date, blogs.count] }
  end
end
