# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V1
      class UsageListResponse < MetronomeSDK::BaseModel
        # @!attribute data
        #
        #   @return [Array<MetronomeSDK::Models::V1::UsageListResponse::Data>]
        required :data, -> { MetronomeSDK::ArrayOf[MetronomeSDK::Models::V1::UsageListResponse::Data] }

        # @!attribute next_page
        #
        #   @return [String, nil]
        required :next_page, String, nil?: true

        # @!parse
        #   # @param data [Array<MetronomeSDK::Models::V1::UsageListResponse::Data>]
        #   # @param next_page [String, nil]
        #   #
        #   def initialize(data:, next_page:, **) = super

        # def initialize: (Hash | MetronomeSDK::BaseModel) -> void

        class Data < MetronomeSDK::BaseModel
          # @!attribute billable_metric_id
          #
          #   @return [String]
          required :billable_metric_id, String

          # @!attribute billable_metric_name
          #
          #   @return [String]
          required :billable_metric_name, String

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute end_timestamp
          #
          #   @return [Time]
          required :end_timestamp, Time

          # @!attribute start_timestamp
          #
          #   @return [Time]
          required :start_timestamp, Time

          # @!attribute value
          #
          #   @return [Float, nil]
          required :value, Float, nil?: true

          # @!attribute [r] groups
          #   Values will be either a number or null. Null indicates that there were no
          #     matches for the group_by value.
          #
          #   @return [Hash{Symbol=>Float, nil}, nil]
          optional :groups, MetronomeSDK::HashOf[Float, nil?: true]

          # @!parse
          #   # @return [Hash{Symbol=>Float, nil}]
          #   attr_writer :groups

          # @!parse
          #   # @param billable_metric_id [String]
          #   # @param billable_metric_name [String]
          #   # @param customer_id [String]
          #   # @param end_timestamp [Time]
          #   # @param start_timestamp [Time]
          #   # @param value [Float, nil]
          #   # @param groups [Hash{Symbol=>Float, nil}]
          #   #
          #   def initialize(
          #     billable_metric_id:,
          #     billable_metric_name:,
          #     customer_id:,
          #     end_timestamp:,
          #     start_timestamp:,
          #     value:,
          #     groups: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | MetronomeSDK::BaseModel) -> void
        end
      end
    end
  end
end
