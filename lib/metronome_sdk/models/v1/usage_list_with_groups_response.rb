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
        #   @deprecated
        #
        #   Use `group` instead. The group key for single-key grouping.
        #
        #   @return [String, nil]
        required :group_key, String, nil?: true

        # @!attribute group_value
        #   @deprecated
        #
        #   Use `group` instead. The group value for single-key grouping.
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

        # @!attribute group
        #   Map of group key to their value for this usage aggregate. For simple group keys,
        #   this should be a single key e.g. `{"region": "US-East"}` For compound group
        #   keys, this should contain the values of each group key that forms the compound
        #   e.g. `{"region": "US-East", "team": "engineering"}`
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :group, MetronomeSDK::Internal::Type::HashOf[String]

        # @!method initialize(ending_before:, group_key:, group_value:, starting_on:, value:, group: nil)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V1::UsageListWithGroupsResponse} for more details.
        #
        #   @param ending_before [Time]
        #
        #   @param group_key [String, nil] Use `group` instead. The group key for single-key grouping.
        #
        #   @param group_value [String, nil] Use `group` instead. The group value for single-key grouping.
        #
        #   @param starting_on [Time]
        #
        #   @param value [Float, nil]
        #
        #   @param group [Hash{Symbol=>String}] Map of group key to their value for this usage aggregate.
      end
    end
  end
end
