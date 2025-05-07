# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldAddKeyParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig { returns(T::Boolean) }
        attr_accessor :enforce_uniqueness

        sig do
          returns(MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::OrSymbol)
        end
        attr_accessor :entity

        sig { returns(String) }
        attr_accessor :key

        sig do
          params(
            enforce_uniqueness: T::Boolean,
            entity: MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
            key: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(enforce_uniqueness:, entity:, key:, request_options: {})
        end

        sig do
          override.returns(
            {
              enforce_uniqueness: T::Boolean,
              entity:
                MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::OrSymbol,
              key: String,
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Entity
          extend MetronomeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, MetronomeSDK::V1::CustomFieldAddKeyParams::Entity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT =
            T.let(
              :alert,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          BILLABLE_METRIC =
            T.let(
              :billable_metric,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CHARGE =
            T.let(
              :charge,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          COMMIT =
            T.let(
              :commit,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CONTRACT_CREDIT =
            T.let(
              :contract_credit,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CONTRACT_PRODUCT =
            T.let(
              :contract_product,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CONTRACT =
            T.let(
              :contract,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CREDIT_GRANT =
            T.let(
              :credit_grant,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CUSTOMER_PLAN =
            T.let(
              :customer_plan,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :discount,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          PLAN =
            T.let(
              :plan,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          PROFESSIONAL_SERVICE =
            T.let(
              :professional_service,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :product,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          RATE_CARD =
            T.let(
              :rate_card,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          SCHEDULED_CHARGE =
            T.let(
              :scheduled_charge,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::CustomFieldAddKeyParams::Entity::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
