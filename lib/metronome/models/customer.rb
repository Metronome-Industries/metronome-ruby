# frozen_string_literal: true

module Metronome
  module Models
    class Customer < Metronome::BaseModel
      # @!attribute [rw] id
      #   the Metronome ID of the customer
      #   @return [String]
      required :id, String

      # @!attribute [rw] external_id
      #   (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest alias) that can be used in usage events
      #   @return [String]
      required :external_id, String

      # @!attribute [rw] ingest_aliases
      #   aliases for this customer that can be used instead of the Metronome customer ID in usage events
      #   @return [Array<String>]
      required :ingest_aliases, Metronome::ArrayOf.new(String)

      # @!attribute [rw] name
      #   @return [String]
      required :name, String

      # @!attribute [rw] custom_fields
      #   @return [Hash]
      optional :custom_fields, Hash

      # @!parse
      #   # Create a new instance of Customer from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :id the Metronome ID of the customer
      #   #   @option data [String] :external_id (deprecated, use ingest_aliases instead) the first ID (Metronome or ingest
      #   #     alias) that can be used in usage events
      #   #   @option data [Array<String>] :ingest_aliases aliases for this customer that can be used instead of the Metronome customer ID
      #   #     in usage events
      #   #   @option data [String] :name
      #   #   @option data [Hash, nil] :custom_fields
      #   def initialize(data = {}) = super
    end
  end
end
