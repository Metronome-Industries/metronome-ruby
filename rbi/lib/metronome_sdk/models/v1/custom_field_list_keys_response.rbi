# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysResponse < MetronomeSDK::Internal::Type::BaseModel
        sig { returns(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data]) }
        attr_accessor :data

        sig { returns(T.nilable(String)) }
        attr_accessor :next_page

        sig do
          params(
            data: T::Array[T.any(MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data, MetronomeSDK::Internal::AnyHash)],
            next_page: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(data:, next_page:); end

        sig do
          override
            .returns(
              {data: T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data], next_page: T.nilable(String)}
            )
        end
        def to_hash; end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :enforce_uniqueness

          sig { returns(MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol) }
          attr_accessor :entity

          sig { returns(String) }
          attr_accessor :key

          sig do
            params(
              enforce_uniqueness: T::Boolean,
              entity: MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::OrSymbol,
              key: String
            )
              .returns(T.attached_class)
          end
          def self.new(enforce_uniqueness:, entity:, key:); end

          sig do
            override
              .returns(
                {
                  enforce_uniqueness: T::Boolean,
                  entity: MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol,
                  key: String
                }
              )
          end
          def to_hash; end

          module Entity
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity) }
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALERT = T.let(:alert, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            BILLABLE_METRIC =
              T.let(:billable_metric, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CHARGE =
              T.let(:charge, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            COMMIT =
              T.let(:commit, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CONTRACT_CREDIT =
              T.let(:contract_credit, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CONTRACT_PRODUCT =
              T.let(
                :contract_product,
                MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol
              )
            CONTRACT =
              T.let(:contract, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CREDIT_GRANT =
              T.let(:credit_grant, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CUSTOMER_PLAN =
              T.let(:customer_plan, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            CUSTOMER =
              T.let(:customer, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            DISCOUNT =
              T.let(:discount, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            INVOICE =
              T.let(:invoice, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            PLAN = T.let(:plan, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            PROFESSIONAL_SERVICE =
              T.let(
                :professional_service,
                MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol
              )
            PRODUCT =
              T.let(:product, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            RATE_CARD =
              T.let(:rate_card, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)
            SCHEDULED_CHARGE =
              T.let(
                :scheduled_charge,
                MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(:subscription, MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol)

            sig do
              override
                .returns(T::Array[MetronomeSDK::Models::V1::CustomFieldListKeysResponse::Data::Entity::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
