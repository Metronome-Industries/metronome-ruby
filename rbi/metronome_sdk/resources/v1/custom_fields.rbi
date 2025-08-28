# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class CustomFields
        # Creates a new custom field key for a given entity (e.g. billable metric,
        # contract, alert).
        #
        # Custom fields are properties that you can add to Metronome objects to store
        # metadata like foreign keys or other descriptors. This metadata can get
        # transferred to or accessed by other systems to contextualize Metronome data and
        # power business processes. For example, to service workflows like revenue
        # recognition, reconciliation, and invoicing, custom fields help Metronome know
        # the relationship between entities in the platform and third-party systems.
        #
        # ### Use this endpoint to:
        #
        # - Create a new custom field key for Customer objects in Metronome. You can then
        #   use the Set Custom Field Values endpoint to set the value of this key for a
        #   specific customer.
        # - Specify whether the key should enforce uniqueness. If the key is set to
        #   enforce uniqueness and you attempt to set a custom field value for the key
        #   that already exists, it will fail.
        #
        # ### Usage guidelines:
        #
        # - Custom fields set on commits, credits, and contracts can be used to scope
        #   alert evaluation. For example, you can create a spend threshold alert that
        #   only considers spend associated with contracts with custom field key
        #   contract_type and value paygo
        # - Custom fields set on products can be used in the Stripe integration to set
        #   metadata on invoices.
        # - Custom fields for customers, contracts, invoices, products, commits, scheduled
        #   charges, and subscriptions are passed down to the invoice.
        sig do
          params(
            enforce_uniqueness: T::Boolean,
            entity: MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
            key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def add_key(enforce_uniqueness:, entity:, key:, request_options: {})
        end

        # Remove specific custom field values from a Metronome entity instance by
        # specifying the field keys to delete. Use this endpoint to clean up unwanted
        # custom field data while preserving other fields on the same entity. Requires the
        # entity type, entity ID, and array of keys to remove.
        sig do
          params(
            entity:
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::OrSymbol,
            entity_id: String,
            keys: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def delete_values(entity:, entity_id:, keys:, request_options: {})
        end

        # Retrieve all your active custom field keys, with optional filtering by entity
        # type (customer, contract, product, etc.). Use this endpoint to discover what
        # custom field keys are available before setting values on entities or to audit
        # your custom field configuration across different entity types.
        sig do
          params(
            next_page: String,
            entities:
              T::Array[
                MetronomeSDK::V1::CustomFieldListKeysParams::Entity::OrSymbol
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(
            MetronomeSDK::Internal::CursorPageWithoutLimit[
              MetronomeSDK::Models::V1::CustomFieldListKeysResponse
            ]
          )
        end
        def list_keys(
          # Query param: Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Body param: Optional list of entity types to return keys for
          entities: nil,
          request_options: {}
        )
        end

        # Removes a custom field key from the allowlist for a specific entity type,
        # preventing future use of that key across all instances of the entity. Existing
        # values for this key on entity instances will no longer be accessible once the
        # key is removed.
        sig do
          params(
            entity:
              MetronomeSDK::V1::CustomFieldRemoveKeyParams::Entity::OrSymbol,
            key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def remove_key(entity:, key:, request_options: {})
        end

        # Sets custom field values on a specific Metronome entity instance. Overwrites
        # existing values for matching keys while preserving other fields. All updates are
        # transactional—either all values are set or none are. Custom field values are
        # limited to 200 characters each.
        sig do
          params(
            custom_fields: T::Hash[Symbol, String],
            entity:
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::OrSymbol,
            entity_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).void
        end
        def set_values(
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields:,
          entity:,
          entity_id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
