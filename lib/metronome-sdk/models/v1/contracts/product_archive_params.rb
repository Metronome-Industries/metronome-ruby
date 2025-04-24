# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class ProductArchiveParams < MetronomeSDK::BaseModel
          # @!parse
          #   extend MetronomeSDK::RequestParameters::Converter
          include MetronomeSDK::RequestParameters

          # @!attribute product_id
          #   ID of the product to be archived
          #
          #   @return [String]
          required :product_id, String

          # @!parse
          #   # @param product_id [String]
          #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(product_id:, request_options: {}, **) = super

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
