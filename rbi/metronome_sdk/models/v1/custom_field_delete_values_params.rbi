# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldDeleteValuesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias { T.any(T.self_type, MetronomeSDK::Internal::AnyHash) }

        sig do
          returns(
            MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::OrSymbol
          )
        end
        attr_accessor :entity

        sig { returns(String) }
        attr_accessor :entity_id

        sig { returns(T::Array[String]) }
        attr_accessor :keys

        sig do
          params(
            entity:
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::OrSymbol,
            entity_id: String,
            keys: T::Array[String],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entity:, entity_id:, keys:, request_options: {})
        end

        sig do
          override.returns(
            {
              entity:
                MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::OrSymbol,
              entity_id: String,
              keys: T::Array[String],
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
              T.all(
                Symbol,
                MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT =
            T.let(
              :alert,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          BILLABLE_METRIC =
            T.let(
              :billable_metric,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CHARGE =
            T.let(
              :charge,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          COMMIT =
            T.let(
              :commit,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CONTRACT_CREDIT =
            T.let(
              :contract_credit,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CONTRACT_PRODUCT =
            T.let(
              :contract_product,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CONTRACT =
            T.let(
              :contract,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CREDIT_GRANT =
            T.let(
              :credit_grant,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CUSTOMER_PLAN =
            T.let(
              :customer_plan,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :discount,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          PLAN =
            T.let(
              :plan,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          PROFESSIONAL_SERVICE =
            T.let(
              :professional_service,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :product,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          RATE_CARD =
            T.let(
              :rate_card,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          SCHEDULED_CHARGE =
            T.let(
              :scheduled_charge,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::CustomFieldDeleteValuesParams::Entity::TaggedSymbol
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
