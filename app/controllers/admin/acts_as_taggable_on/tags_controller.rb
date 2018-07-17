module Admin
  module ActsAsTaggableOn
    class TagsController < Admin::ApplicationController
      # To customize the behavior of this controller,
      # you can overwrite any of the RESTful actions. For example:
      #
      # def index
      #   super
      #   @resources = ActsAsTaggableOn::Tag.
      #     page(params[:page]).
      #     per(10)
      # end

      # Define a custom finder by overriding the `find_resource` method:
      # def find_resource(param)
      #   ActsAsTaggableOn::Tag.find_by!(slug: param)
      # end

      # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
      # for more information
    end
  end
end
