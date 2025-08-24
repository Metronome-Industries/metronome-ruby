# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class CustomFields
        # Add a key to the allow list for a given entity. There is a 100 character limit
        # on custom field keys.
        #
        # @overload add_key(enforce_uniqueness:, entity:, key:, request_options: {})
        #
        # @param enforce_uniqueness [Boolean]
        # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity]
        # @param key [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomFieldAddKeyParams
        def add_key(params)
          parsed, options = MetronomeSDK::V1::CustomFieldAddKeyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/addKey",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Deletes one or more custom fields on an instance of a Metronome entity.
        #
        # @overload delete_values(entity:, entity_id:, keys:, request_options: {})
        #
        # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams::Entity]
        # @param entity_id [String]
        # @param keys [Array<String>]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams
        def delete_values(params)
          parsed, options = MetronomeSDK::V1::CustomFieldDeleteValuesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/deleteValues",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # List all active custom field keys, optionally filtered by entity type.
        #
        # @overload list_keys(next_page: nil, entities: nil, request_options: {})
        #
        # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
        #
        # @param entities [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>] Body param: Optional list of entity types to return keys for
        #
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [MetronomeSDK::Internal::CursorPageWithoutLimit<MetronomeSDK::Models::V1::CustomFieldListKeysResponse>]
        #
        # @see MetronomeSDK::Models::V1::CustomFieldListKeysParams
        def list_keys(params = {})
          parsed, options = MetronomeSDK::V1::CustomFieldListKeysParams.dump_request(params)
          query_params = [:next_page]
          @client.request(
            method: :post,
            path: "v1/customFields/listKeys",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            page: MetronomeSDK::Internal::CursorPageWithoutLimit,
            model: MetronomeSDK::Models::V1::CustomFieldListKeysResponse,
            options: options
          )
        end

        # Remove a key from the allow list for a given entity.
        #
        # @overload remove_key(entity:, key:, request_options: {})
        #
        # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity]
        # @param key [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams
        def remove_key(params)
          parsed, options = MetronomeSDK::V1::CustomFieldRemoveKeyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/removeKey",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Sets one or more custom fields on an instance of a Metronome entity. If a
        # key/value pair passed in this request matches one already set on the entity, its
        # value will be overwritten. Any key/value pairs that exist on the entity that do
        # not match those passed in this request will remain untouched. This endpoint is
        # transactional and will update all key/value pairs or no key/value pairs. Partial
        # updates are not supported. There is a 200 character limit on custom field
        # values.
        #
        # @overload set_values(custom_fields:, entity:, entity_id:, request_options: {})
        #
        # @param custom_fields [Hash{Symbol=>String}]
        # @param entity [Symbol, MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity]
        # @param entity_id [String]
        # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see MetronomeSDK::Models::V1::CustomFieldSetValuesParams
        def set_values(params)
          parsed, options = MetronomeSDK::V1::CustomFieldSetValuesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/setValues",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [MetronomeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
