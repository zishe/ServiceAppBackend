# frozen_string_literal: true

require "administrate/base_dashboard"

class IngredientDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    description: Field::String,
    ingredient_types: Field::HasMany.with_options(label: :name),
    tags: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tag", label: :name),
    # tags: Field::HasMany,
    # tags: SelectField.with_options(
    #   choices: ActsAsTaggableOn::Tag.all.map { |tag| tag.name }
    # ),
    # tag_list: SelectField.with_options(
    #     choices: ActsAsTaggableOn::Tag.all.map { |tag| tag.name }
    #   ),
    tag_list: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    name
    description
    created_at
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    name
    description
    ingredient_types
    tags
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    description
    ingredient_types
    tag_list
  ].freeze

  # Overwrite this method to customize how products are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(product)
    product.try(:name) || "#{product.class} ##{product.id}"
  end

  def default_order
    resources.order(name: :desc)
  end
end
