# frozen_string_literal: true

module Metronome
  module Models
    class ContractAddManualBalanceEntryParams < Metronome::BaseModel
      # @!attribute id
      #   ID of the balance (commit or credit) to update.
      #   @return [String]
      required :id, String

      # @!attribute amount
      #   Amount to add to the segment. A negative number will draw down from the balance.
      #   @return [Float]
      required :amount, Float

      # @!attribute customer_id
      #   ID of the customer whose balance is to be updated.
      #   @return [String]
      required :customer_id, String

      # @!attribute reason
      #   Reason for the manual adjustment. This will be displayed in the ledger.
      #   @return [String]
      required :reason, String

      # @!attribute segment_id
      #   ID of the segment to update.
      #   @return [String]
      required :segment_id, String

      # @!attribute contract_id
      #   ID of the contract to update. Leave blank to update a customer level balance.
      #   @return [String]
      optional :contract_id, String

      # @!attribute timestamp
      #   RFC 3339 timestamp indicating when the manual adjustment takes place. If not provided, it will default to the start of the segment.
      #   @return [Time]
      optional :timestamp, Time
    end
  end
end
