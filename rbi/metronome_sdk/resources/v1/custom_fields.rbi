# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class CustomFields
        # Add a key to the allow list for a given entity. There is a 100 character limit
        # on custom field keys.
        sig do
          params(
            enforce_uniqueness: T::Boolean,
            entity: MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
            key: String,
            request_options: MetronomeSDK::RequestOpts
          )
            .void
        end
        def add_key(enforce_uniqueness:, entity:, key:, request_options: {}); end

        # Deletes one or more custom fields on an instance of a Metronome entity.
        sig do
          params(
            entity: MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams::Entity::OrSymbol,
            entity_id: String,
            keys: T::Array[String],
            request_options: MetronomeSDK::RequestOpts
          )
            .void
        end
        def delete_values(entity:, entity_id:, keys:, request_options: {}); end

        # List all active custom field keys, optionally filtered by entity type.
        sig do
          params(
            next_page: String,
            entities: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::OrSymbol],
            request_options: MetronomeSDK::RequestOpts
          )
            .returns(MetronomeSDK::Models::V1::CustomFieldListKeysResponse)
        end
        def list_keys(
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: Optional list of entity types to return keys for
          entities: nil,
          request_options: {}
        ); end
        # Remove a key from the allow list for a given entity.
        sig do
          params(
            entity: MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity::OrSymbol,
            key: String,
            request_options: MetronomeSDK::RequestOpts
          )
            .void
        end
        def remove_key(entity:, key:, request_options: {}); end

        # Sets one or more custom fields on an instance of a Metronome entity. If a
        # key/value pair passed in this request matches one already set on the entity, its
        # value will be overwritten. Any key/value pairs that exist on the entity that do
        # not match those passed in this request will remain untouched. This endpoint is
        # transactional and will update all key/value pairs or no key/value pairs. Partial
        # updates are not supported. There is a 200 character limit on custom field
        # values.
        sig do
          params(
            custom_fields: T::Hash[Symbol, String],
            entity: MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity::OrSymbol,
            entity_id: String,
            request_options: MetronomeSDK::RequestOpts
          )
            .void
        end
        def set_values(custom_fields:, entity:, entity_id:, request_options: {}); end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
