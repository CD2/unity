class Tag < ActiveRecord::Base

  before_save :set_machine_name

  has_many :blog_tags
  has_many :blogs, through: :blog_tags

  def self.cleanup
    Tag.where.not(id: BlogTag.pluck(:tag_id)).destroy_all
  end

  def set_machine_name
    self.machine_name = Tag.to_machine_name name
  end

  def for_blog blog
    blog.tags.where(id: id).count == 1 ? true : false
  end

  def self.to_machine_name name
    name.squish.downcase.tr(" ","_")
  end

  def amount_of_blogs
    self.blogs.where(published: true).count
  end

  def self.sorted_by_amount_of_blogs
    Tag.all.sort_by { |tag| tag.amount_of_blogs }.reverse
  end

end
