# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationListOffsetResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::NotificationListOffsetResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig::OrHash
              ],
            cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(data:, cursor: nil)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::V2::LifecycleEventOffsetNotificationConfig
                ],
              cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
