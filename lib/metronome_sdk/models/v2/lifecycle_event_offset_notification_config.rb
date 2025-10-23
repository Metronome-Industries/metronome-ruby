# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      class LifecycleEventOffsetNotificationConfig < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID for this offset notification configuration
        #
        #   @return [String]
        required :id, String

        # @!attribute archived_at
        #   When this notification configuration was archived
        #
        #   @return [Time, nil]
        required :archived_at, Time, nil?: true

        # @!attribute created_at
        #   RFC 3339 timestamp when this notification configuration was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute created_by
        #   Who created this notification configuration
        #
        #   @return [String]
        required :created_by, String

        # @!attribute environment_type
        #   The environment type where this notification configuration was created.
        #
        #   @return [String]
        required :environment_type, String

        # @!attribute name
        #   The name for this offset notification configuration.
        #
        #   @return [String]
        required :name, String

        # @!attribute policy
        #
        #   @return [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        required :policy, -> { MetronomeSDK::V2::LifecycleEventOffsetPolicy }

        # @!attribute type
        #   Indicates this is an offset lifecycle event notification
        #
        #   @return [Symbol, MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig::Type]
        required :type, enum: -> { MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::Type }

        # @!method initialize(id:, archived_at:, created_at:, created_by:, environment_type:, name:, policy:, type:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig} for more
        #   details.
        #
        #   @param id [String] ID for this offset notification configuration
        #
        #   @param archived_at [Time, nil] When this notification configuration was archived
        #
        #   @param created_at [Time] RFC 3339 timestamp when this notification configuration was created.
        #
        #   @param created_by [String] Who created this notification configuration
        #
        #   @param environment_type [String] The environment type where this notification configuration was created.
        #
        #   @param name [String] The name for this offset notification configuration.
        #
        #   @param policy [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        #
        #   @param type [Symbol, MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig::Type] Indicates this is an offset lifecycle event notification

        # Indicates this is an offset lifecycle event notification
        #
        # @see MetronomeSDK::Models::V2::LifecycleEventOffsetNotificationConfig#type
        module Type
          extend MetronomeSDK::Internal::Type::Enum

          OFFSET_LIFECYCLE_EVENT = :OFFSET_LIFECYCLE_EVENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
