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

        # Use `group` instead. The group key for single-key grouping.
        sig { returns(T.nilable(String)) }
        attr_accessor :group_key

        # Use `group` instead. The group value for single-key grouping.
        sig { returns(T.nilable(String)) }
        attr_accessor :group_value

        sig { returns(Time) }
        attr_accessor :starting_on

        sig { returns(T.nilable(Float)) }
        attr_accessor :value

        # Map of group key to their value for this usage aggregate. For simple group keys,
        # this should be a single key e.g. `{"region": "US-East"}` For compound group
        # keys, this should contain the values of each group key that forms the compound
        # e.g. `{"region": "US-East", "team": "engineering"}`
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :group

        sig { params(group: T::Hash[Symbol, String]).void }
        attr_writer :group

        sig do
          params(
            ending_before: Time,
            group_key: T.nilable(String),
            group_value: T.nilable(String),
            starting_on: Time,
            value: T.nilable(Float),
            group: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          ending_before:,
          # Use `group` instead. The group key for single-key grouping.
          group_key:,
          # Use `group` instead. The group value for single-key grouping.
          group_value:,
          starting_on:,
          value:,
          # Map of group key to their value for this usage aggregate. For simple group keys,
          # this should be a single key e.g. `{"region": "US-East"}` For compound group
          # keys, this should contain the values of each group key that forms the compound
          # e.g. `{"region": "US-East", "team": "engineering"}`
          group: nil
        )
        end

        sig do
          override.returns(
            {
              ending_before: Time,
              group_key: T.nilable(String),
              group_value: T.nilable(String),
              starting_on: Time,
              value: T.nilable(Float),
              group: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
