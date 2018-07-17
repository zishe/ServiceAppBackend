module Admin
  module ActsAsTaggableOn
    class TaggingsController < Admin::ApplicationController
      # To customize the behavior of this controller,
      # you can overwrite any of the RESTful actions. For example:
      #
      # def index
      #   super
      #   @resources = ActsAsTaggableOn::Tagging.
      #     page(params[:page]).
      #     per(10)
      # end

      # Define a custom finder by overriding the `find_resource` method:
      # def find_resource(param)
      #   ActsAsTaggableOn::Tagging.find_by!(slug: param)
      # end

      # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
      # for more information
    end
  end
end
