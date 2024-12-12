# frozen_string_literal: true

module Metronome
  module Models
    class ContractListParams < Metronome::BaseModel
      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] covering_date
      #   Optional RFC 3339 timestamp. If provided, the response will include only contracts effective on the provided date.  This cannot be provided if the starting_at filter is provided.
      #   @return [Time]
      optional :covering_date, Time

      # @!attribute [rw] include_archived
      #   Include archived contracts in the response
      #   @return [Boolean]
      optional :include_archived, Metronome::BooleanModel

      # @!attribute [rw] include_ledgers
      #   Include commit ledgers in the response. Setting this flag may cause the query to be slower.
      #   @return [Boolean]
      optional :include_ledgers, Metronome::BooleanModel

      # @!attribute [rw] starting_at
      #   Optional RFC 3339 timestamp. If provided, the response will include only contracts where effective_at is on or after the provided date.  This cannot be provided if the covering_date filter is provided.
      #   @return [Time]
      optional :starting_at, Time
    end
  end
end
