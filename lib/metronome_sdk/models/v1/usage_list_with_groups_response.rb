# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      # @see MetronomeSDK::Resources::V1::Usage#list_with_groups
      class UsageListWithGroupsResponse < MetronomeSDK::Internal::Type::BaseModel
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

        # @!method initialize(ending_before:, group_key:, group_value:, starting_on:, value:)
        #   @param ending_before [Time]
        #   @param group_key [String, nil]
        #   @param group_value [String, nil]
        #   @param starting_on [Time]
        #   @param value [Float, nil]
      end
    end
  end
end
