# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      module Notifications
        # @see MetronomeSDK::Resources::V2::Notifications::Offset#create
        class OffsetCreateParams < MetronomeSDK::Internal::Type::BaseModel
          extend MetronomeSDK::Internal::Type::RequestParameters::Converter
          include MetronomeSDK::Internal::Type::RequestParameters

          # @!attribute name
          #   The name for this offset notification configuration.
          #
          #   @return [String]
          required :name, String

          # @!attribute policy
          #   The offset lifecycle event policy that defines when and how this notification
          #   should be triggered. The lifecycle event type is inferred from the policy.type
          #   field.
          #
          #   @return [MetronomeSDK::Models::V2::Notifications::OffsetCreateParams::Policy]
          required :policy, -> { MetronomeSDK::V2::Notifications::OffsetCreateParams::Policy }

          # @!attribute uniqueness_key
          #   Optional uniqueness key to prevent duplicate notification configurations.
          #
          #   @return [String, nil]
          optional :uniqueness_key, String

          # @!method initialize(name:, policy:, uniqueness_key: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {MetronomeSDK::Models::V2::Notifications::OffsetCreateParams} for more details.
          #
          #   @param name [String] The name for this offset notification configuration.
          #
          #   @param policy [MetronomeSDK::Models::V2::Notifications::OffsetCreateParams::Policy] The offset lifecycle event policy that defines when and how this notification sh
          #
          #   @param uniqueness_key [String] Optional uniqueness key to prevent duplicate notification configurations.
          #
          #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

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
            #   {MetronomeSDK::Models::V2::Notifications::OffsetCreateParams::Policy} for more
            #   details.
            #
            #   The offset lifecycle event policy that defines when and how this notification
            #   should be triggered. The lifecycle event type is inferred from the policy.type
            #   field.
            #
            #   @param offset [String] ISO-8601 duration string indicating how much time before or after the base event
            #
            #   @param type [String] The type of lifecycle event that this offset is based on.
          end
        end
      end
    end
  end
end
