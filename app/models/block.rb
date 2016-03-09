class Block < ActiveRecord::Base

  before_save :set_machine_name

  belongs_to :page, polymorphic: true
  belongs_to :specialised_block, polymorphic: true, dependent: :destroy


  validates :name, presence: true

  def self.create_specialised block_name, block_type, *args
    block_type = block_type.to_s.camelize.constantize
    block = block_type.create!(*args).build_block(name: block_name)
    block.save!
    block
  end

  def self.find_block block_name
    block = find_by(machine_name: block_name.underscore.squish.tr(' ', '_'))
  end

  private
    def set_machine_name
      self.machine_name = self.name.underscore.squish.tr(' ','_')
    end

    def method_missing(name, *args, &block)
      self.specialised_block.send name, *args, &block
    end

end

