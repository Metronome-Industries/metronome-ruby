# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Payments#list
      class PaymentListParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute invoice_id
        #
        #   @return [String]
        required :invoice_id, String

        # @!attribute limit
        #   The maximum number of payments to return. Defaults to 25.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute next_page
        #   The next page token from a previous response.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute statuses
        #
        #   @return [Array<Symbol, MetronomeSDK::Models::V1::PaymentStatus>, nil]
        optional :statuses, -> { MetronomeSDK::Internal::Type::ArrayOf[enum: MetronomeSDK::V1::PaymentStatus] }

        # @!method initialize(customer_id:, invoice_id:, limit: nil, next_page: nil, statuses: nil, request_options: {})
        #   @param customer_id [String]
        #
        #   @param invoice_id [String]
        #
        #   @param limit [Integer] The maximum number of payments to return. Defaults to 25.
        #
        #   @param next_page [String] The next page token from a previous response.
        #
        #   @param statuses [Array<Symbol, MetronomeSDK::Models::V1::PaymentStatus>]
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
