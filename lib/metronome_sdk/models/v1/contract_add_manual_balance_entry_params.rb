# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Contracts#add_manual_balance_entry
      class ContractAddManualBalanceEntryParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   ID of the balance (commit or credit) to update.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Amount to add to the segment. A negative number will draw down from the balance.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute customer_id
        #   ID of the customer whose balance is to be updated.
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute reason
        #   Reason for the manual adjustment. This will be displayed in the ledger.
        #
        #   @return [String]
        required :reason, String

        # @!attribute segment_id
        #   ID of the segment to update.
        #
        #   @return [String]
        required :segment_id, String

        # @!attribute contract_id
        #   ID of the contract to update. Leave blank to update a customer level balance.
        #
        #   @return [String, nil]
        optional :contract_id, String

        # @!attribute timestamp
        #   RFC 3339 timestamp indicating when the manual adjustment takes place. If not
        #   provided, it will default to the start of the segment.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!method initialize(id:, amount:, customer_id:, reason:, segment_id:, contract_id: nil, timestamp: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::ContractAddManualBalanceEntryParams} for more
        #   details.
        #
        #   @param id [String] ID of the balance (commit or credit) to update.
        #
        #   @param amount [Float] Amount to add to the segment. A negative number will draw down from the balance.
        #
        #   @param customer_id [String] ID of the customer whose balance is to be updated.
        #
        #   @param reason [String] Reason for the manual adjustment. This will be displayed in the ledger.
        #
        #   @param segment_id [String] ID of the segment to update.
        #
        #   @param contract_id [String] ID of the contract to update. Leave blank to update a customer level balance.
        #
        #   @param timestamp [Time] RFC 3339 timestamp indicating when the manual adjustment takes place. If not pro
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
