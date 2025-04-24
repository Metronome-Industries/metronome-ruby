# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class ContractAddManualBalanceEntryParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

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

        # @!attribute [r] contract_id
        #   ID of the contract to update. Leave blank to update a customer level balance.
        #
        #   @return [String, nil]
        optional :contract_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :contract_id

        # @!attribute [r] timestamp
        #   RFC 3339 timestamp indicating when the manual adjustment takes place. If not
        #     provided, it will default to the start of the segment.
        #
        #   @return [Time, nil]
        optional :timestamp, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :timestamp

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param customer_id [String]
        #   # @param reason [String]
        #   # @param segment_id [String]
        #   # @param contract_id [String]
        #   # @param timestamp [Time]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     customer_id:,
        #     reason:,
        #     segment_id:,
        #     contract_id: nil,
        #     timestamp: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
