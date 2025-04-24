# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          class ProductOrderSetParams < MetronomeSDK::BaseModel
            # @!parse
            #   extend MetronomeSDK::RequestParameters::Converter
            include MetronomeSDK::RequestParameters

            # @!attribute product_order
            #
            #   @return [Array<String>]
            required :product_order, MetronomeSDK::ArrayOf[String]

            # @!attribute rate_card_id
            #   ID of the rate card to update
            #
            #   @return [String]
            required :rate_card_id, String

            # @!parse
            #   # @param product_order [Array<String>]
            #   # @param rate_card_id [String]
            #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
            #   #
            #   def initialize(product_order:, rate_card_id:, request_options: {}, **) = super

            # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
          end
        end
      end
    end
  end
end
