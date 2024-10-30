# frozen_string_literal: true

module Metronome
  module Resources
    class CustomFields
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Add a key to the allow list for a given entity. There is a 100 character limit
      #   on custom field keys.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Boolean] :enforce_uniqueness
      #   @option params [Symbol, Entity] :entity
      #   @option params [String] :key
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def add_key(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customFields/addKey",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Deletes one or more custom fields on an instance of a Metronome entity.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Entity] :entity
      #   @option params [String] :entity_id
      #   @option params [Array<String>] :keys
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def delete_values(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customFields/deleteValues",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: NilClass
        }
        @client.request(req, opts)
      end

      # List all active custom field keys, optionally filtered by entity type.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String, nil] :next_page Query param: Cursor that indicates where the next page of results should start.
      #   @option params [Array<Symbol, Entity>, nil] :entities Body param: Optional list of entity types to return keys for
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::CustomFieldListKeysResponse]
      def list_keys(params = {}, opts = {})
        query_params = [:next_page]
        req = {
          method: :post,
          path: "/customFields/listKeys",
          query: params.slice(*query_params),
          body: params.except(*query_params),
          headers: {"Content-Type" => "application/json"},
          model: Metronome::Models::CustomFieldListKeysResponse
        }
        @client.request(req, opts)
      end

      # Remove a key from the allow list for a given entity.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Symbol, Entity] :entity
      #   @option params [String] :key
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def remove_key(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customFields/removeKey",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: NilClass
        }
        @client.request(req, opts)
      end

      # Sets one or more custom fields on an instance of a Metronome entity. If a
      #   key/value pair passed in this request matches one already set on the entity, its
      #   value will be overwritten. Any key/value pairs that exist on the entity that do
      #   not match those passed in this request will remain untouched. This endpoint is
      #   transactional and will update all key/value pairs or no key/value pairs. Partial
      #   updates are not supported. There is a 200 character limit on custom field
      #   values.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [Hash] :custom_fields
      #   @option params [Symbol, Entity] :entity
      #   @option params [String] :entity_id
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [nil]
      def set_values(params = {}, opts = {})
        req = {
          method: :post,
          path: "/customFields/setValues",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: NilClass
        }
        @client.request(req, opts)
      end
    end
  end
end
