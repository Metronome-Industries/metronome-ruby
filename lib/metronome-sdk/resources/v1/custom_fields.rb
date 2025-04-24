# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class CustomFields
        # Add a key to the allow list for a given entity. There is a 100 character limit
        #   on custom field keys.
        #
        # @param params [MetronomeSDK::Models::V1::CustomFieldAddKeyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Boolean] :enforce_uniqueness
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity] :entity
        #
        #   @option params [String] :key
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def add_key(params)
          parsed, options = MetronomeSDK::Models::V1::CustomFieldAddKeyParams.dump_request(params)
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
        # @param params [MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams::Entity] :entity
        #
        #   @option params [String] :entity_id
        #
        #   @option params [Array<String>] :keys
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def delete_values(params)
          parsed, options = MetronomeSDK::Models::V1::CustomFieldDeleteValuesParams.dump_request(params)
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
        # @param params [MetronomeSDK::Models::V1::CustomFieldListKeysParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
        #
        #   @option params [Array<Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity>] :entities Body param: Optional list of entity types to return keys for
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [MetronomeSDK::Models::V1::CustomFieldListKeysResponse]
        #
        def list_keys(params = {})
          parsed, options = MetronomeSDK::Models::V1::CustomFieldListKeysParams.dump_request(params)
          query_params = [:next_page]
          @client.request(
            method: :post,
            path: "v1/customFields/listKeys",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: MetronomeSDK::Models::V1::CustomFieldListKeysResponse,
            options: options
          )
        end

        # Remove a key from the allow list for a given entity.
        #
        # @param params [MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams::Entity] :entity
        #
        #   @option params [String] :key
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def remove_key(params)
          parsed, options = MetronomeSDK::Models::V1::CustomFieldRemoveKeyParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/removeKey",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Sets one or more custom fields on an instance of a Metronome entity. If a
        #   key/value pair passed in this request matches one already set on the entity, its
        #   value will be overwritten. Any key/value pairs that exist on the entity that do
        #   not match those passed in this request will remain untouched. This endpoint is
        #   transactional and will update all key/value pairs or no key/value pairs. Partial
        #   updates are not supported. There is a 200 character limit on custom field
        #   values.
        #
        # @param params [MetronomeSDK::Models::V1::CustomFieldSetValuesParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hash{Symbol=>String}] :custom_fields
        #
        #   @option params [Symbol, MetronomeSDK::Models::V1::CustomFieldSetValuesParams::Entity] :entity
        #
        #   @option params [String] :entity_id
        #
        #   @option params [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        #
        def set_values(params)
          parsed, options = MetronomeSDK::Models::V1::CustomFieldSetValuesParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/customFields/setValues",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @param client [MetronomeSDK::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
