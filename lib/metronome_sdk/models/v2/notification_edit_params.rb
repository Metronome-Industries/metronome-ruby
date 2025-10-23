# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Notifications#edit
      class NotificationEditParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # @!attribute policy
        #
        #   @return [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        required :policy, -> { MetronomeSDK::V2::LifecycleEventOffsetPolicy }

        # @!attribute type
        #   Indicates this is an offset lifecycle event notification
        #
        #   @return [Symbol, MetronomeSDK::Models::V2::NotificationEditParams::Type]
        required :type, enum: -> { MetronomeSDK::V2::NotificationEditParams::Type }

        # @!attribute is_enabled
        #   Set to true to enable webhook messages for the notification indicated in the
        #   policy, false to disable. Only supported by system lifecycle events.
        #
        #   @return [Boolean, nil]
        optional :is_enabled, MetronomeSDK::Internal::Type::Boolean

        # @!attribute id
        #   The ID of the notification configuration to edit.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(policy:, type:, id:, is_enabled: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::NotificationEditParams} for more details.
        #
        #   @param policy [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        #
        #   @param type [Symbol, MetronomeSDK::Models::V2::NotificationEditParams::Type] Indicates this is an offset lifecycle event notification
        #
        #   @param id [String] The ID of the notification configuration to edit.
        #
        #   @param is_enabled [Boolean] Set to true to enable webhook messages for the notification indicated in the pol
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]

        # Indicates this is an offset lifecycle event notification
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
