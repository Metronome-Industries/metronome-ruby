# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldAddKeyParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        sig { returns(T::Boolean) }
        attr_accessor :enforce_uniqueness

        sig { returns(MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::OrSymbol) }
        attr_accessor :entity

        sig { returns(String) }
        attr_accessor :key

        sig do
          params(
            enforce_uniqueness: T::Boolean,
            entity: MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
            key: String,
            request_options: T.any(MetronomeSDK::RequestOptions, MetronomeSDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(enforce_uniqueness:, entity:, key:, request_options: {}); end

        sig do
          override
            .returns(
              {
                enforce_uniqueness: T::Boolean,
                entity: MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
                key: String,
                request_options: MetronomeSDK::RequestOptions
              }
            )
        end
        def to_hash; end

        module Entity
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT = T.let(:alert, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          BILLABLE_METRIC =
            T.let(:billable_metric, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CHARGE = T.let(:charge, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          COMMIT = T.let(:commit, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CONTRACT_CREDIT =
            T.let(:contract_credit, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CONTRACT_PRODUCT =
            T.let(:contract_product, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CONTRACT = T.let(:contract, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CREDIT_GRANT =
            T.let(:credit_grant, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CUSTOMER_PLAN =
            T.let(:customer_plan, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          CUSTOMER = T.let(:customer, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          DISCOUNT = T.let(:discount, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          INVOICE = T.let(:invoice, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          PLAN = T.let(:plan, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          PROFESSIONAL_SERVICE =
            T.let(:professional_service, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          PRODUCT = T.let(:product, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          RATE_CARD = T.let(:rate_card, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          SCHEDULED_CHARGE =
            T.let(:scheduled_charge, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)
          SUBSCRIPTION =
            T.let(:subscription, MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol)

          sig { override.returns(T::Array[MetronomeSDK::Models::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
