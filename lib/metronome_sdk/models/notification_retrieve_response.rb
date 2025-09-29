# frozen_string_literal: true

module MetronomeSDK
  module Models
    # @see MetronomeSDK::Resources::Notifications#retrieve
    class NotificationRetrieveResponse < MetronomeSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [MetronomeSDK::Models::NotificationRetrieveResponse::Data]
      required :data, -> { MetronomeSDK::Models::NotificationRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [MetronomeSDK::Models::NotificationRetrieveResponse::Data]

      # @see MetronomeSDK::Models::NotificationRetrieveResponse#data
      class Data < MetronomeSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID for this offset notification configuration
        #
        #   @return [String]
        required :id, String

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
        #   @return [MetronomeSDK::Models::NotificationRetrieveResponse::Data::Policy]
        required :policy, -> { MetronomeSDK::Models::NotificationRetrieveResponse::Data::Policy }

        # @!attribute type
        #   Indicates this is an offset lifecycle event notification
        #
        #   @return [String]
        required :type, String

        # @!method initialize(id:, created_at:, created_by:, environment_type:, name:, policy:, type:)
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::NotificationRetrieveResponse::Data} for more details.
        #
        #   @param id [String] ID for this offset notification configuration
        #
        #   @param created_at [Time] RFC 3339 timestamp when this notification configuration was created.
        #
        #   @param created_by [String] Who created this notification configuration
        #
        #   @param environment_type [String] The environment type where this notification configuration was created.
        #
        #   @param name [String] The name for this offset notification configuration.
        #
        #   @param policy [MetronomeSDK::Models::NotificationRetrieveResponse::Data::Policy]
        #
        #   @param type [String] Indicates this is an offset lifecycle event notification

        # @see MetronomeSDK::Models::NotificationRetrieveResponse::Data#policy
        class Policy < MetronomeSDK::Internal::Type::BaseModel
          # @!attribute offset
          #   ISO-8601 duration string indicating how much time before or after the base event
          #   this notification should be sent. Positive values indicate notifications after
          #   the event, negative values indicate notifications before the event. Examples:
          #   "P1D" (1 day after), "-PT2H" (2 hours before)
          #
          #   @return [String]
          required :offset, String

          # @!attribute type
          #   The type of lifecycle event that this offset is based on.
          #
          #   @return [String]
          required :type, String

          # @!method initialize(offset:, type:)
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::NotificationRetrieveResponse::Data::Policy} for more
          #   details.
          #
          #   @param offset [String] ISO-8601 duration string indicating how much time before or after the base event
          #
          #   @param type [String] The type of lifecycle event that this offset is based on.
        end
      end
    end
  end
end
