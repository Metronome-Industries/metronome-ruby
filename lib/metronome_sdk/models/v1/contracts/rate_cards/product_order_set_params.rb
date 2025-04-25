# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Contracts
        module RateCards
          # @see MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders#set
          class ProductOrderSetParams < MetronomeSDK::Internal::Type::BaseModel
            extend MetronomeSDK::Internal::Type::RequestParameters::Converter
            include MetronomeSDK::Internal::Type::RequestParameters

            # @!attribute product_order
            #
            #   @return [Array<String>]
            required :product_order, MetronomeSDK::Internal::Type::ArrayOf[String]

            # @!attribute rate_card_id
            #   ID of the rate card to update
            #
            #   @return [String]
            required :rate_card_id, String

            # @!method initialize(product_order:, rate_card_id:, request_options: {})
            #   @param product_order [Array<String>]
            #
            #   @param rate_card_id [String] ID of the rate card to update
            #
            #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
