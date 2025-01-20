# frozen_string_literal: true

module Metronome
  module Models
    # @example
    # ```ruby
    # base_usage_filter => {
    #   group_key: String,
    #   group_values: -> { Metronome::ArrayOf[String] === _1 },
    #   starting_at: Time
    # }
    # ```
    class BaseUsageFilter < Metronome::BaseModel
      # @!attribute group_key
      #
      #   @return [String]
      required :group_key, String

      # @!attribute group_values
      #
      #   @return [Array<String>]
      required :group_values, Metronome::ArrayOf[String]

      # @!attribute [r] starting_at
      #
      #   @return [Time, nil]
      optional :starting_at, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :starting_at

      # @!parse
      #   # @param group_key [String]
      #   # @param group_values [Array<String>]
      #   # @param starting_at [String]
      #   #
      #   def initialize(group_key:, group_values:, starting_at: nil, **) = super

      # def initialize: (Hash | Metronome::BaseModel) -> void
    end
  end
end
