# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < BaseApiController
      before_action :set_category, only: %i[show update destroy]

      # GET /categories
      def index
        categories = Category.all.with_attached_image

        render json: with_images(categories)
      end

      # GET /categories/1
      def show
        render json: @category
      end

      # POST /categories
      def create
        @category = category.new(category_params)

        if @category.save
          render json: @category, status: :created, location: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /categories/1
      def update
        if @category.update(category_params)
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /categories/1
      def destroy
        @category.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = category.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def category_params
        params.fetch(:category, {}).permit(:name, :description)
      end
    end
  end
end
