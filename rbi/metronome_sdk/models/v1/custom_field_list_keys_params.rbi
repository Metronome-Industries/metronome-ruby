# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # Optional list of entity types to return keys for
        sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::OrSymbol])) }
        attr_reader :entities

        sig { params(entities: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::OrSymbol]).void }
        attr_writer :entities

        sig do
          params(
            next_page: String,
            entities: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::OrSymbol],
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Optional list of entity types to return keys for
          entities: nil,
          request_options: {}
        ); end
        sig do
          override
            .returns(
              {
                next_page: String,
                entities: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::OrSymbol],
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        module Entity
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT = T.let(:alert, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          BILLABLE_METRIC =
            T.let(:billable_metric, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CHARGE = T.let(:charge, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          COMMIT = T.let(:commit, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CONTRACT_CREDIT =
            T.let(:contract_credit, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CONTRACT_PRODUCT =
            T.let(:contract_product, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CONTRACT = T.let(:contract, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CREDIT_GRANT =
            T.let(:credit_grant, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CUSTOMER_PLAN =
            T.let(:customer_plan, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          CUSTOMER = T.let(:customer, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          DISCOUNT = T.let(:discount, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          INVOICE = T.let(:invoice, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          PLAN = T.let(:plan, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          PROFESSIONAL_SERVICE =
            T.let(:professional_service, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          PRODUCT = T.let(:product, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          RATE_CARD = T.let(:rate_card, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          SCHEDULED_CHARGE =
            T.let(:scheduled_charge, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)
          SUBSCRIPTION =
            T.let(:subscription, MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysParams::Entity::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
