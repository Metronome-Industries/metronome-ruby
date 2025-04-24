# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class CreditGrantListEntriesParams < MetronomeSDK::BaseModel
        # @!parse
        #   extend MetronomeSDK::RequestParameters::Converter
        include MetronomeSDK::RequestParameters

        # @!attribute [r] next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!parse
        #   # @return [String]
        #   attr_writer :next_page

        # @!attribute [r] credit_type_ids
        #   A list of Metronome credit type IDs to fetch ledger entries for. If absent,
        #     ledger entries for all credit types will be returned.
        #
        #   @return [Array<String>, nil]
        optional :credit_type_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :credit_type_ids

        # @!attribute [r] customer_ids
        #   A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
        #     entries for all customers will be returned.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :customer_ids

        # @!attribute [r] ending_before
        #   If supplied, ledger entries will only be returned with an effective_at before
        #     this time. This timestamp must not be in the future. If no timestamp is
        #     supplied, all entries up to the start of the customer's next billing period will
        #     be returned.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :ending_before

        # @!attribute [r] starting_on
        #   If supplied, only ledger entries effective at or after this time will be
        #     returned.
        #
        #   @return [Time, nil]
        optional :starting_on, Time

        # @!parse
        #   # @return [Time]
        #   attr_writer :starting_on

        # @!parse
        #   # @param next_page [String]
        #   # @param credit_type_ids [Array<String>]
        #   # @param customer_ids [Array<String>]
        #   # @param ending_before [Time]
        #   # @param starting_on [Time]
        #   # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     next_page: nil,
        #     credit_type_ids: nil,
        #     customer_ids: nil,
        #     ending_before: nil,
        #     starting_on: nil,
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
