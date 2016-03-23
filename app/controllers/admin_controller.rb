class AdminController < ApplicationController
  layout 'admin_application'

  before_action :admin_only

  def initialize
    class_vars = self.class.instance_variables - self.class.superclass.instance_variables
    class_vars.each { |var| self.instance_variable_set(var, self.class.instance_variable_get(var)) }
    super
  end

  def render *args
    set_friendly_vars
    super
  end

  def index
    @resources = @resource_driver.all
  end

  def show
    @resource = @resource_driver.find(params[:id])
  end

  def new
    @resource = @resource_driver.new
  end

  def create
    @resource = @resource_driver.new(resource_params)
    if @resource.save
      flash[:success] = "#{@resource_name.camelize} Created"
      if @create_redirect.nil?
        redirect_to [:admin, @resource_name.pluralize]
      else
        render @create_redirect
      end
    else
      render 'new'
    end
  end

  def edit
    @resource = @resource_driver.find(params[:id])
  end

  def update
    @resource = @resource_driver.find(params[:id])
    @resource.assign_attributes(resource_params)
    changed = @resource.changed?
    if @resource.save
      flash[:success] = "#{@resource_name.camelize} Updated" if changed
      if @edit_redirect.nil?
        redirect_to [:admin, @resource_name.pluralize]
      else
        render @edit_redirect
      end
    else
      flash[:error] = 'Sorry, an error occured'
      render :edit
    end

  end

  def destroy
    @resource = @resource_driver.find(params[:id])
    if @resource.destroy
      flash[:success] = "#{@resource_name.camelize} Destroyed"
    else
      flash[:error] = 'Sorry, an error occured'
    end
    redirect_to [:admin, @resource_name.pluralize]
  end



  private

    def admin_only
      redirect_to login_path unless logged_in?
    end

    def resource_params
      params.require(@resource_name.to_sym).permit(*@resource_fields.map { |rf| rf.field }, *@resource_hidden_fields)
    end

    def set_friendly_vars
      instance_variable_set("@#{@resource_name.pluralize}", @resources) if @resources
      instance_variable_set("@#{@resource_name}", @resource) if @resource
    end

    def self.add_fields *fields
      @resource_fields ||= []
      @resource_fields += Array(fields).map { |field| Field.new field }
    end

    def self.add_field field, options={}
      @resource_fields ||= []
      @resource_fields << Field.new(field, options)
    end

    def self.add_hidden_field field
      @resource_hidden_fields ||= []
      @resource_hidden_fields << field
    end

    def self.set_resource driver
      @resource_driver = driver
      @resource_name = driver.to_s.downcase
    end

    def self.add_index_columns *column_names
      @index_columns ||= []
      @index_columns += column_names.map{ |column_name| [column_name, column_name.to_s.humanize, nil] }
    end

    def self.add_index_column column_name, column_title=nil, &display_block
      @index_columns ||= []
      column_title = column_name.to_s.humanize unless column_title
      @index_columns << [column_name, column_title, display_block]
    end

    def self.show_index_view &block
      @index_show_view = block || true
    end

    def self.add_action text, action, options={}
      @index_actions ||= []
      @index_actions << [text, action, options]
    end

    def self.set_create_redirect redirect
      @create_redirect = redirect
    end

    def self.set_edit_redirect redirect
      @edit_redirect = redirect
    end

    class Field

      def initialize field, options={}
        @field = field
        @column_name = field.to_s
        @name = options[:name] || field.to_s.humanize
        @type = options[:type]
      end

      def field; @field end
      def column_name; @column_name end
      def name; @name end
      def type; @type end

    end

end