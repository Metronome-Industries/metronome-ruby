# frozen_string_literal: true

module Metronome
  module Models
    class ContractRetrieveParams < Metronome::BaseModel
      # @!attribute contract_id
      #
      #   @return [String]
      required :contract_id, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute [r] include_balance
      #   Include the balance of credits and commits in the response. Setting this flag may cause the query to be slower.
      #
      #   @return [Boolean, nil]
      optional :include_balance, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_balance

      # @!attribute [r] include_ledgers
      #   Include commit ledgers in the response. Setting this flag may cause the query to be slower.
      #
      #   @return [Boolean, nil]
      optional :include_ledgers, Metronome::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_ledgers

      # @!parse
      #   # @param contract_id [String]
      #   #
      #   # @param customer_id [String]
      #   #
      #   # @param include_balance [Boolean] Include the balance of credits and commits in the response. Setting this flag
      #   #   may cause the query to be slower.
      #   #
      #   # @param include_ledgers [Boolean] Include commit ledgers in the response. Setting this flag may cause the query to
      #   #   be slower.
      #   #
      #   def initialize(contract_id:, customer_id:, include_balance: nil, include_ledgers: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
