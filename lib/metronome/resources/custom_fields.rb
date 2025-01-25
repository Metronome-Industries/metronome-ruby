# frozen_string_literal: true

module Metronome
  module Resources
    class CustomFields
      # Add a key to the allow list for a given entity. There is a 100 character limit
      #   on custom field keys.
      #
      # @param params [Metronome::Models::CustomFieldAddKeyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :enforce_uniqueness
      #
      #   @option params [Symbol, Metronome::Models::CustomFieldAddKeyParams::Entity] :entity
      #
      #   @option params [String] :key
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def add_key(params)
        parsed, options = Metronome::Models::CustomFieldAddKeyParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customFields/addKey",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Deletes one or more custom fields on an instance of a Metronome entity.
      #
      # @param params [Metronome::Models::CustomFieldDeleteValuesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Metronome::Models::CustomFieldDeleteValuesParams::Entity] :entity
      #
      #   @option params [String] :entity_id
      #
      #   @option params [Array<String>] :keys
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def delete_values(params)
        parsed, options = Metronome::Models::CustomFieldDeleteValuesParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customFields/deleteValues",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # List all active custom field keys, optionally filtered by entity type.
      #
      # @param params [Metronome::Models::CustomFieldListKeysParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :next_page Query param: Cursor that indicates where the next page of results should start.
      #
      #   @option params [Array<Symbol, Metronome::Models::CustomFieldListKeysParams::Entity>] :entities Body param: Optional list of entity types to return keys for
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [Metronome::Models::CustomFieldListKeysResponse]
      #
      def list_keys(params = {})
        parsed, options = Metronome::Models::CustomFieldListKeysParams.dump_request(params)
        query_params = [:next_page]
        @client.request(
          method: :post,
          path: "customFields/listKeys",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Metronome::Models::CustomFieldListKeysResponse,
          options: options
        )
      end

      # Remove a key from the allow list for a given entity.
      #
      # @param params [Metronome::Models::CustomFieldRemoveKeyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Metronome::Models::CustomFieldRemoveKeyParams::Entity] :entity
      #
      #   @option params [String] :key
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def remove_key(params)
        parsed, options = Metronome::Models::CustomFieldRemoveKeyParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customFields/removeKey",
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
      # @param params [Metronome::Models::CustomFieldSetValuesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hash{Symbol=>String}] :custom_fields
      #
      #   @option params [Symbol, Metronome::Models::CustomFieldSetValuesParams::Entity] :entity
      #
      #   @option params [String] :entity_id
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}] :request_options
      #
      # @return [nil]
      #
      def set_values(params)
        parsed, options = Metronome::Models::CustomFieldSetValuesParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customFields/setValues",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
