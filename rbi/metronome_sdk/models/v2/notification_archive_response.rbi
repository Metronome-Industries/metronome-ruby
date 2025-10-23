# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationArchiveResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::NotificationArchiveResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig)
        end
        attr_reader :data

        sig do
          params(
            data:
              MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            { data: MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig }
          )
        end
        def to_hash
        end
      end
    end
  end
end
