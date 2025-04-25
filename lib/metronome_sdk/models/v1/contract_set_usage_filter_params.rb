# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#set_usage_filter
      class ContractSetUsageFilterParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute contract_id
        #
        #   @return [String]
        required :contract_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute group_key
        #
        #   @return [String]
        required :group_key, String

        # @!attribute group_values
        #
        #   @return [Array<String>]
        required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute starting_at
        #
        #   @return [Time]
        required :starting_at, Time

        # @!method initialize(contract_id:, customer_id:, group_key:, group_values:, starting_at:, request_options: {})
        #   @param contract_id [String]
        #   @param customer_id [String]
        #   @param group_key [String]
        #   @param group_values [Array<String>]
        #   @param starting_at [Time]
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
