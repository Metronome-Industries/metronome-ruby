# frozen_string_literal: true

module Metronome
  module Models
    class BaseUsageFilter < Metronome::BaseModel
      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_values
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf.new(String)

      # @!attribute [rw] starting_at
      #   @return [Time]
      optional :starting_at, Time

      # @!parse
      #   # Create a new instance of BaseUsageFilter from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :group_key
      #   #   @option data [Array<String>] :group_values
      #   #   @option data [String, nil] :starting_at
      #   def initialize(data = {}) = super
    end
  end
end
