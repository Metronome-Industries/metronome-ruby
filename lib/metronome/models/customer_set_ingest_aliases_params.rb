# frozen_string_literal: true

module Metronome
  module Models
    class CustomerSetIngestAliasesParams < Metronome::BaseModel
      # @!parse
      #   extend Metronome::RequestParameters::Converter
      include Metronome::RequestParameters

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute ingest_aliases
      #
      #   @return [Array<String>]
      required :ingest_aliases, Metronome::ArrayOf[String]

      # @!parse
      #   # @param customer_id [String]
      #   # @param ingest_aliases [Array<String>]
      #   # @param request_options [Metronome::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(customer_id:, ingest_aliases:, request_options: {}, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
