# frozen_string_literal: true

module Api
  module V1
    class ProductsController < BaseApiController
      include ProductsHelper
      before_action :set_product, only: %i[show update destroy]

      # GET /products
      def index
        @products = Product.all
        # @products.each do |product|
        #   product.image_url = url_for(product.image)
        #   product.save
        # end
        render json: @products.to_json(include: { ingredients: { include: %i[ingredient_types tags] } })
        # product_with_ingredients_and_image(@products).to_camelback_keys
      end

      # GET /products/1
      def show
        render json: @product.to_json(include: :ingredients)
      end

      # POST /products
      def create
        @product = Product.new(product_params)

        if @product.save
          render json: @product, status: :created, location: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /products/1
      def update
        if @product.update(product_params)
          render json: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      # DELETE /products/1
      def destroy
        @product.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Product.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def product_params
        params.fetch(:product, {}).permit(:name, :description, :servingWeight)
      end
    end
  end
end
