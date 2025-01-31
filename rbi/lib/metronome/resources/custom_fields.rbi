# typed: strong

module Metronome
  module Resources
    class CustomFields
      sig do
        params(
          enforce_uniqueness: T::Boolean,
          entity: Symbol,
          key: String,
          request_options: Metronome::RequestOpts
        ).void
      end
      def add_key(enforce_uniqueness:, entity:, key:, request_options: {}); end

      sig do
        params(
          entity: Symbol,
          entity_id: String,
          keys: T::Array[String],
          request_options: Metronome::RequestOpts
        ).void
      end
      def delete_values(entity:, entity_id:, keys:, request_options: {}); end

      sig do
        params(
          next_page: String,
          entities: T::Array[Symbol],
          request_options: Metronome::RequestOpts
        ).returns(Metronome::Models::CustomFieldListKeysResponse)
      end
      def list_keys(next_page:, entities:, request_options: {}); end

      sig { params(entity: Symbol, key: String, request_options: Metronome::RequestOpts).void }
      def remove_key(entity:, key:, request_options: {}); end

      sig do
        params(
          custom_fields: T::Hash[Symbol, String],
          entity: Symbol,
          entity_id: String,
          request_options: Metronome::RequestOpts
        ).void
      end
      def set_values(custom_fields:, entity:, entity_id:, request_options: {}); end

      sig { params(client: Metronome::Client).void }
      def initialize(client:); end
    end
  end
end
