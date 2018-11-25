require "administrate/base_dashboard"

module ActsAsTaggableOn
  class TaggingDashboard < Administrate::BaseDashboard
    # ATTRIBUTE_TYPES
    # a hash that describes the type of each of the model's fields.
    #
    # Each different type represents an Administrate::Field object,
    # which determines how the attribute is displayed
    # on pages throughout the dashboard.
    ATTRIBUTE_TYPES = {
      tag: Field::BelongsTo.with_options(class_name: "::ActsAsTaggableOn::Tag"),
      taggable: Field::Polymorphic,
      tagger: Field::Polymorphic,
      id: Field::Number,
      tag_id: Field::Number,
      context: Field::String,
      created_at: Field::DateTime
    }.freeze

    # COLLECTION_ATTRIBUTES
    # an array of attributes that will be displayed on the model's index page.
    #
    # By default, it's limited to four items to reduce clutter on index pages.
    # Feel free to add, remove, or rearrange items.
    COLLECTION_ATTRIBUTES = %i[
      tag
      taggable
      tagger
      id
    ].freeze

    # SHOW_PAGE_ATTRIBUTES
    # an array of attributes that will be displayed on the model's show page.
    SHOW_PAGE_ATTRIBUTES = %i[
      tag
      taggable
      tagger
      id
      tag_id
      context
      created_at
    ].freeze

    # FORM_ATTRIBUTES
    # an array of attributes that will be displayed
    # on the model's form (`new` and `edit`) pages.
    FORM_ATTRIBUTES = %i[
      tag
      taggable
      tagger
      tag_id
      context
    ].freeze

    # Overwrite this method to customize how taggings are displayed
    # across all pages of the admin dashboard.
    #
    # def display_resource(tagging)
    #   "ActsAsTaggableOn::Tagging ##{tagging.id}"
    # end
    def display_resource(tag)
      tag.name
    end
  end
end
