# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class Customer < MetronomeSDK::BaseModel
        # @!attribute id
        #   the Metronome ID of the customer
        #
        #   @return [String]
        required :id, String

        # @!attribute external_id
        #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
        #     alias) that can be used in usage events
        #
        #   @return [String]
        required :external_id, String

        # @!attribute ingest_aliases
        #   aliases for this customer that can be used instead of the Metronome customer ID
        #     in usage events
        #
        #   @return [Array<String>]
        required :ingest_aliases, MetronomeSDK::ArrayOf[String]

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute [r] custom_fields
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :custom_fields, MetronomeSDK::HashOf[String]

        # @!parse
        #   # @return [Hash{Symbol=>String}]
        #   attr_writer :custom_fields

        # @!parse
        #   # @param id [String]
        #   # @param external_id [String]
        #   # @param ingest_aliases [Array<String>]
        #   # @param name [String]
        #   # @param custom_fields [Hash{Symbol=>String}]
        #   #
        #   def initialize(id:, external_id:, ingest_aliases:, name:, custom_fields: nil, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
      end
    end
  end
end
