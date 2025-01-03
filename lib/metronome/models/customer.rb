# frozen_string_literal: true

module Metronome
  module Models
    class Customer < Metronome::BaseModel
      # @!attribute id
      #   the Metronome ID of the customer
      #
      #   @return [String]
      required :id, String

      # @!attribute external_id
      #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events
      #
      #   @return [String]
      required :external_id, String

      # @!attribute ingest_aliases
      #   aliases for this customer that can be used instead of the Metronome customer ID in usage events
      #
      #   @return [Array<String>]
      required :ingest_aliases, Metronome::ArrayOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute custom_fields
      #
      #   @return [Hash{Symbol => String}]
      optional :custom_fields, Metronome::HashOf[String]

      # @!parse
      #   # @param id [String] the Metronome ID of the customer
      #   #
      #   # @param external_id [String] (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
      #   #   alias) that can be used in usage events
      #   #
      #   # @param ingest_aliases [Array<String>] aliases for this customer that can be used instead of the Metronome customer ID
      #   #   in usage events
      #   #
      #   # @param name [String]
      #   #
      #   # @param custom_fields [Hash{Symbol => String}]
      #   #
      #   def initialize(id:, external_id:, ingest_aliases:, name:, custom_fields: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
