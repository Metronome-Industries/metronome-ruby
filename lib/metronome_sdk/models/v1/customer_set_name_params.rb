# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Customers#set_name
      class CustomerSetNameParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute name
        #   The new name for the customer. This will be truncated to 160 characters if the
        #   provided name is longer.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(customer_id:, name:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CustomerSetNameParams} for more details.
        #
        #   @param customer_id [String]
        #
        #   @param name [String] The new name for the customer. This will be truncated to 160 characters if the p
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
