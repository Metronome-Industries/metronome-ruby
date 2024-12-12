# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveParams < Metronome::BaseModel
      # @!attribute [rw] contract_id
      #   @return [String]
      required :contract_id, String

      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] include_ledgers
      #   Include commit ledgers in the response. Setting this flag may cause the query to be slower.
      #   @return [Boolean]
      optional :include_ledgers, Metronome::BooleanModel
    end
  end
end
