# frozen_string_literal: true

module Metronome
  module Models
    class CustomerCreateResponse < BaseModel
      # @!attribute [rw] data
      #   @return [Metronome::Models::CustomerCreateResponse::Data]
      required :data, -> { Metronome::Models::CustomerCreateResponse::Data }

      class Data < BaseModel
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

        # @!attribute [rw] name_
        #   @return [String]
        required :name_, String

        # @!attribute [rw] custom_fields
        #   @return [Hash]
        optional :custom_fields, Hash
      end
    end
  end
end
