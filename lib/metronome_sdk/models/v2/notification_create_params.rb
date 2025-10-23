# frozen_string_literal: true

module MetronomeSDK
  module Models
    module V2
      # @see MetronomeSDK::Resources::V2::Notifications#create
      class NotificationCreateParams < MetronomeSDK::Internal::Type::BaseModel
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
        #   @return [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy]
        required :policy, -> { MetronomeSDK::V2::LifecycleEventOffsetPolicy }

        # @!attribute uniqueness_key
        #   Optional uniqueness key to prevent duplicate notification configurations.
        #
        #   @return [String, nil]
        optional :uniqueness_key, String

        # @!method initialize(name:, policy:, uniqueness_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {MetronomeSDK::Models::V2::NotificationCreateParams} for more details.
        #
        #   @param name [String] The name for this offset notification configuration.
        #
        #   @param policy [MetronomeSDK::Models::V2::LifecycleEventOffsetPolicy] The offset lifecycle event policy that defines when and how this notification sh
        #
        #   @param uniqueness_key [String] Optional uniqueness key to prevent duplicate notification configurations.
        #
        #   @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
