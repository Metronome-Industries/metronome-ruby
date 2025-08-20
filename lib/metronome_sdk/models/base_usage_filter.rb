# frozen_string_literal: true

module MetronomeSDK
  module Models
    class BaseUsageFilter < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute group_key
      #
      #   @return [String]
      required :group_key, String

      # @!attribute group_values
      #
      #   @return [Array<String>]
      required :group_values, MetronomeSDK::Internal::Type::ArrayOf[String]

      # @!attribute starting_at
      #
      #   @return [Time, nil]
      optional :starting_at, Time

      # @!method initialize(group_key:, group_values:, starting_at: nil)
      #   @param group_key [String]
      #   @param group_values [Array<String>]
      #   @param starting_at [Time]
    end
  end
end
