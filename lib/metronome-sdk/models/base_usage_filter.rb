# frozen_string_literal: true

module MetronomeSDK
  module Models
    class BaseUsageFilter < MetronomeSDK::BaseModel
      # @!attribute group_key
      #
      #   @return [String]
      required :group_key, String

      # @!attribute group_values
      #
      #   @return [Array<String>]
      required :group_values, MetronomeSDK::ArrayOf[String]

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
      #   # @param starting_at [Time]
      #   #
      #   def initialize(group_key:, group_values:, starting_at: nil, **) = super

      # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
    end
  end
end
