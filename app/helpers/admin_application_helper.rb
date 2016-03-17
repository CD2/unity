module AdminApplicationHelper

  def form_fields
    @resource_fields.map do |rf|
      byebug
      column_type = @resource_driver.columns_hash[rf.column_name].type
      field_type = rf.type || case column_type
      when :string
        'text_field'
      when :text
        'cktext_area'
      when :boolean
        'check_box'
      end
      [rf.name, field_type.to_sym, rf.field, column_type]
    end
  end

  def index_actions
    if @index_actions
      @index_actions.map { | text, action, options | link_to(text, [action, :admin, @resource_name], options)}.join('').html_safe
    end
  end

end
