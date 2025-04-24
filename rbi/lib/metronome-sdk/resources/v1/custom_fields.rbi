# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class CustomFields
        sig do
          params(
            enforce_uniqueness: T::Boolean,
            entity: Symbol,
            key: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def add_key(enforce_uniqueness:, entity:, key:, request_options: {})
        end

        sig do
          params(
            entity: Symbol,
            entity_id: String,
            keys: T::Array[String],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def delete_values(entity:, entity_id:, keys:, request_options: {})
        end

        sig do
          params(
            next_page: String,
            entities: T::Array[Symbol],
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(MetronomeSDK::Models::V1::CustomFieldListKeysResponse)
        end
        def list_keys(next_page: nil, entities: nil, request_options: {})
        end

        sig do
          params(
            entity: Symbol,
            key: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def remove_key(entity:, key:, request_options: {})
        end

        sig do
          params(
            custom_fields: T::Hash[Symbol, String],
            entity: Symbol,
            entity_id: String,
            request_options: T.nilable(T.any(MetronomeSDK::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def set_values(custom_fields:, entity:, entity_id:, request_options: {})
        end

        sig { params(client: MetronomeSDK::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
