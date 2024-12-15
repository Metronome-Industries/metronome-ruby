# frozen_string_literal: true

module Metronome
  module Models
    class ContractListParams < Metronome::BaseModel
      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute covering_date
      #   Optional RFC 3339 timestamp. If provided, the response will include only contracts effective on the provided date.  This cannot be provided if the starting_at filter is provided.
      #
      #   @return [Time]
      optional :covering_date, Time

      # @!attribute include_archived
      #   Include archived contracts in the response
      #
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute include_ledgers
      #   Include commit ledgers in the response. Setting this flag may cause the query to be slower.
      #
      #   @return [Boolean]
      optional :include_ledgers, Metronome::BooleanModel

      # @!attribute starting_at
      #   Optional RFC 3339 timestamp. If provided, the response will include only contracts where effective_at is on or after the provided date.  This cannot be provided if the covering_date filter is provided.
      #
      #   @return [Time]
      optional :starting_at, Time

      # @!parse
      #   # @param customer_id [String]
      #   #
      #   # @param covering_date [String, nil] Optional RFC 3339 timestamp. If provided, the response will include only
      #   #   contracts effective on the provided date. This cannot be provided if the
      #   #   starting_at filter is provided.
      #   #
      #   # @param include_archived [Boolean, nil] Include archived contracts in the response
      #   #
      #   # @param include_ledgers [Boolean, nil] Include commit ledgers in the response. Setting this flag may cause the query to
      #   #   be slower.
      #   #
      #   # @param starting_at [String, nil] Optional RFC 3339 timestamp. If provided, the response will include only
      #   #   contracts where effective_at is on or after the provided date. This cannot be
      #   #   provided if the covering_date filter is provided.
      #   #
      #   def initialize(customer_id:, covering_date: nil, include_archived: nil, include_ledgers: nil, starting_at: nil) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
