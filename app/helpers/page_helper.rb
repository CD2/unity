module PageHelper

  def render_block name
    block = @page.blocks.find_by(name: name)
    block.render.html_safe if block
  end

end