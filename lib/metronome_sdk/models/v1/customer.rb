# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class Customer < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   the Metronome ID of the customer
        #
        #   @return [String]
        required :id, String

        # @!attribute external_id
        #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
        #   alias) that can be used in usage events
        #
        #   @return [String]
        required :external_id, String

        # @!attribute ingest_aliases
        #   aliases for this customer that can be used instead of the Metronome customer ID
        #   in usage events
        #
        #   @return [Array<String>]
        required :ingest_aliases, MetronomeSDK::Internal::Type::ArrayOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute custom_fields
        #   Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, external_id:, ingest_aliases:, name:, custom_fields: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::Customer} for more details.
        #
        #   @param id [String] the Metronome ID of the customer
        #
        #   @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias
        #
        #   @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
        #
        #   @param name [String]
        #
        #   @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
      end
    end
  end
end
