# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # usage_list_with_groups_response => {
    #   ending_before: Time,
    #   group_key: String,
    #   group_value: String,
    #   starting_on: Time,
    #   value: Float
    # }
    # ```
    class UsageListWithGroupsResponse < Metronome::BaseModel
      # @!attribute ending_before
      #
      #   @return [Time]
      required :ending_before, Time

      # @!attribute group_key
      #
      #   @return [String, nil]
      required :group_key, String, nil?: true

      # @!attribute group_value
      #
      #   @return [String, nil]
      required :group_value, String, nil?: true

      # @!attribute starting_on
      #
      #   @return [Time]
      required :starting_on, Time

      # @!attribute value
      #
      #   @return [Float, nil]
      required :value, Float, nil?: true

      # @!parse
      #   # @param ending_before [Time]
      #   # @param group_key [String, nil]
      #   # @param group_value [String, nil]
      #   # @param starting_on [Time]
      #   # @param value [Float, nil]
      #   #
      #   def initialize(ending_before:, group_key:, group_value:, starting_on:, value:, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
