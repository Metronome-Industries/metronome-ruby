# frozen_string_literal: true

module Metronome
  module Models
    class UsageListWithGroupsResponse < Metronome::BaseModel
      # @!attribute [rw] ending_before
      #   @return [Time]
      required :ending_before, Time

      # @!attribute [rw] group_key
      #   @return [String]
      required :group_key, String

      # @!attribute [rw] group_value
      #   @return [String]
      required :group_value, String

      # @!attribute [rw] starting_on
      #   @return [Time]
      required :starting_on, Time

      # @!attribute [rw] value
      #   @return [Float]
      required :value, Float

      # @!parse
      #   # Create a new instance of UsageListWithGroupsResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String] :ending_before
      #   #   @option data [String] :group_key
      #   #   @option data [String] :group_value
      #   #   @option data [String] :starting_on
      #   #   @option data [Float] :value
      #   def initialize(data = {}) = super
    end
  end
end
