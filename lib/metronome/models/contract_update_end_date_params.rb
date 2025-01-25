# frozen_string_literal: true

module Metronome
  module Models
    class ContractUpdateEndDateParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute contract_id
      #   ID of the contract to update
      #
      #   @return [String]
      required :contract_id, String

      # @!attribute customer_id
      #   ID of the customer whose contract is to be updated
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute [r] allow_ending_before_finalized_invoice
      #   If true, allows setting the contract end date earlier than the end_timestamp of
      #     existing finalized invoices. Finalized invoices will be unchanged; if you want
      #     to incorporate the new end date, you can void and regenerate finalized usage
      #     invoices. Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :allow_ending_before_finalized_invoice, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :allow_ending_before_finalized_invoice

      # @!attribute [r] ending_before
      #   RFC 3339 timestamp indicating when the contract will end (exclusive). If not
      #     provided, the contract will be updated to be open-ended.
      #
      #   @return [Time, nil]
      optional :ending_before, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :ending_before

      # @!parse
      #   # @param contract_id [String]
      #   # @param customer_id [String]
      #   # @param allow_ending_before_finalized_invoice [Boolean]
      #   # @param ending_before [String]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     contract_id:,
      #     customer_id:,
      #     allow_ending_before_finalized_invoice: nil,
      #     ending_before: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
