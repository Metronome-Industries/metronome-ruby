# typed: strong

module MetronomeSDK
  module Models
    module V2
      class NotificationListSystemResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V2::NotificationListSystemResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[MetronomeSDK::V2::LifecycleEventSystemNotificationConfig]
          )
        end
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :cursor

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::V2::LifecycleEventSystemNotificationConfig::OrHash
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
                  MetronomeSDK::V2::LifecycleEventSystemNotificationConfig
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
