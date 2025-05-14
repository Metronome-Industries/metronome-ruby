# typed: strong

module MetronomeSDK
  module Models
    module V1
      class UsageListWithGroupsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::UsageListWithGroupsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :ending_before

        sig { returns(T.nilable(String)) }
        attr_accessor :group_key

        sig { returns(T.nilable(String)) }
        attr_accessor :group_value

        sig { returns(Time) }
        attr_accessor :starting_on

        sig { returns(T.nilable(Float)) }
        attr_accessor :value

        sig do
          params(
            ending_before: Time,
            group_key: T.nilable(String),
            group_value: T.nilable(String),
            starting_on: Time,
            value: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          ending_before:,
          group_key:,
          group_value:,
          starting_on:,
          value:
        )
        end

        sig do
          override.returns(
            {
              ending_before: Time,
              group_key: T.nilable(String),
              group_value: T.nilable(String),
              starting_on: Time,
              value: T.nilable(Float)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
