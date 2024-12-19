# frozen_string_literal: true

module Metronome
  module Models
    class ContractSetUsageFilterParams < Metronome::BaseModel
      # @!attribute contract_id
      #
      #   @return [String]
      required :contract_id, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute group_key
      #
      #   @return [String]
      required :group_key, String

      # @!attribute group_values
      #
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf[String]

      # @!attribute starting_at
      #
      #   @return [Time]
      required :starting_at, Time

      # @!parse
      #   # @param contract_id [String]
      #   # @param customer_id [String]
      #   # @param group_key [String]
      #   # @param group_values [Array<String>]
      #   # @param starting_at [String]
      #   #
      #   def initialize(contract_id:, customer_id:, group_key:, group_values:, starting_at:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
