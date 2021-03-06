require "administrate/base_dashboard"

class ProductDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    categories_products: Field::HasMany,
    categories: Field::HasMany,
    id: Field::Number,
    product_name: Field::String,
    sku: Field::String,
    is_available: Field::Boolean,
    hotdeal: Field::Boolean,
    taxable_class: Field::Boolean,
    product_description: Field::Text,
    price: Field::String.with_options(searchable: false),
    cost: Field::String.with_options(searchable: false),
    sale_price: Field::String.with_options(searchable: false),
    notes: Field::Text,
    stock_quantity: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    product_image_file_name: Field::String,
    product_image_content_type: Field::String,
    product_image_file_size: Field::Number,
    product_image_updated_at: Field::DateTime,
    product_image:PaperclipField
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :categories_products,
    :categories,
    :id,
    :product_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
      :product_name, :sku,
      :categories,
      :is_available, :taxable_class, :hotdeal,
      :price, :cost, :sale_price,
      :notes,
      :product_description,
      :stock_quantity,
      :product_image,
      :created_at,
      :updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
      :product_name, :sku,
      :categories,
      :is_available, :taxable_class, :hotdeal,
      :price, :cost, :sale_price,
      :notes,
      :product_description,
      :stock_quantity,
      :product_image
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
   def display_resource(product)
     "Product #{product.product_name}"
   end
end
