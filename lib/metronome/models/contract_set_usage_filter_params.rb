# frozen_string_literal: true

module Metronome
  module Models
    class ContractSetUsageFilterParams < Metronome::BaseModel
      # @!attribute [rw] contract_id
      #   @return [String]
      required :contract_id, String

      # @!attribute [rw] customer_id
      #   @return [String]
      required :customer_id, String

      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_values
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf.new(String)

      # @!attribute [rw] starting_at
      #   @return [Time]
      required :starting_at, Time
    end
  end
end
