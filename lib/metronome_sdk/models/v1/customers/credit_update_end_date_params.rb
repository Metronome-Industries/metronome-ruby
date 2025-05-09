# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      module Customers
        # @see MetronomeSDK::Resources::V1::Customers::Credits#update_end_date
        class CreditUpdateEndDateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute access_ending_before
          #   RFC 3339 timestamp indicating when access to the credit will end and it will no
          #   longer be possible to draw it down (exclusive).
          #
          #   @return [Time]
          required :access_ending_before, Time

          # @!attribute credit_id
          #   ID of the commit to update
          #
          #   @return [String]
          required :credit_id, String

          # @!attribute customer_id
          #   ID of the customer whose credit is to be updated
          #
          #   @return [String]
          required :customer_id, String

          # @!method initialize(access_ending_before:, credit_id:, customer_id:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V1::Customers::CreditUpdateEndDateParams} for more
          #   details.
          #
          #   @param access_ending_before [Time] RFC 3339 timestamp indicating when access to the credit will end and it will no
          #
          #   @param credit_id [String] ID of the commit to update
          #
          #   @param customer_id [String] ID of the customer whose credit is to be updated
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
