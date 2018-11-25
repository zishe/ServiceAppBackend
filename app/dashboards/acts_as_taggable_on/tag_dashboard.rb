require "administrate/base_dashboard"

module ActsAsTaggableOn
  class TagDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
    # a hash that describes the type of each of the model's fields.
    #
    # Each different type represents an Administrate::Field object,
    # which determines how the attribute is displayed
    # on pages throughout the dashboard.
    ATTRIBUTE_TYPES = {
      taggings: Field::HasMany.with_options(class_name: "::ActsAsTaggableOn::Tagging"),
      id: Field::Number,
      name: Field::String,
      taggings_count: Field::Number
    }.freeze

    # COLLECTION_ATTRIBUTES
    # an array of attributes that will be displayed on the model's index page.
    #
    # By default, it's limited to four items to reduce clutter on index pages.
    # Feel free to add, remove, or rearrange items.
    COLLECTION_ATTRIBUTES = %i[
      taggings
      id
      name
      taggings_count
    ].freeze

    # SHOW_PAGE_ATTRIBUTES
    # an array of attributes that will be displayed on the model's show page.
    SHOW_PAGE_ATTRIBUTES = %i[
      taggings
      id
      name
      taggings_count
    ].freeze

    # FORM_ATTRIBUTES
    # an array of attributes that will be displayed
    # on the model's form (`new` and `edit`) pages.
    FORM_ATTRIBUTES = %i[
      taggings
      name
      taggings_count
    ].freeze

    # Overwrite this method to customize how tags are displayed
    # across all pages of the admin dashboard.
    #
    # def display_resource(tag)
    #   "ActsAsTaggableOn::Tag ##{tag.id}"
    # end
    def display_resource(tag)
      tag.name
    end
  end
end
