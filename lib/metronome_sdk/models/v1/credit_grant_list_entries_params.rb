# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::CreditGrants#list_entries
      class CreditGrantListEntriesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute next_page
        #   Cursor that indicates where the next page of results should start.
        #
        #   @return [String, nil]
        optional :next_page, String

        # @!attribute credit_type_ids
        #   A list of Metronome credit type IDs to fetch ledger entries for. If absent,
        #   ledger entries for all credit types will be returned.
        #
        #   @return [Array<String>, nil]
        optional :credit_type_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute customer_ids
        #   A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
        #   entries for all customers will be returned.
        #
        #   @return [Array<String>, nil]
        optional :customer_ids, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute ending_before
        #   If supplied, ledger entries will only be returned with an effective_at before
        #   this time. This timestamp must not be in the future. If no timestamp is
        #   supplied, all entries up to the start of the customer's next billing period will
        #   be returned.
        #
        #   @return [Time, nil]
        optional :ending_before, Time

        # @!attribute starting_on
        #   If supplied, only ledger entries effective at or after this time will be
        #   returned.
        #
        #   @return [Time, nil]
        optional :starting_on, Time

        # @!method initialize(next_page: nil, credit_type_ids: nil, customer_ids: nil, ending_before: nil, starting_on: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::CreditGrantListEntriesParams} for more details.
        #
        #   @param next_page [String] Cursor that indicates where the next page of results should start.
        #
        #   @param credit_type_ids [Array<String>] A list of Metronome credit type IDs to fetch ledger entries for. If absent, ledg
        #   ...
        #
        #   @param customer_ids [Array<String>] A list of Metronome customer IDs to fetch ledger entries for. If absent, ledger
        #   ...
        #
        #   @param ending_before [Time] If supplied, ledger entries will only be returned with an effective_at before th
        #   ...
        #
        #   @param starting_on [Time] If supplied, only ledger entries effective at or after this time will be returne
        #   ...
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
