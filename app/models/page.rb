class Page < ActiveRecord::Base

  after_create :create_blocks

  has_many :blocks, as: :page

  def path=(val)
    val = '/' + val unless val[0,1] == '/'
    write_attribute(:path, val.downcase)
  end

  private

    def create_blocks
      Rails.configuration.x.layout_blocks[layout].each do |block_name, block_type|
        self.blocks.create_specialised block_name, block_type
      end
    end

end
