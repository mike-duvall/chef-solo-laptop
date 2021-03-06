actions :set, :reset

begin
  default_action :set
rescue NoMethodError
  # Covers 0.10.8 and earlier
  def initialize(*args)
    super
    @action = :set
  end
end

attribute :schema, :kind_of => String, :name_attribute => true
attribute :option, :kind_of => String, :required => true
attribute :value,  :required => true
attribute :user, :kind_of => String, :required => true
attribute :recursive, :kind_of => [TrueClass, FalseClass], :default => false
