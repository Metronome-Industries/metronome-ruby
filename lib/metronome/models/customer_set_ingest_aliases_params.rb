# frozen_string_literal: true

module Metronome
  module Models
    class CustomerSetIngestAliasesParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute ingest_aliases
      #
      #   @return [Array<String>]
      required :ingest_aliases, Metronome::ArrayOf.new(String)
    end
  end
end
