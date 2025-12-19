# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldSetValuesParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomFieldSetValuesParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :custom_fields

        sig do
          returns(
            MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::OrSymbol
          )
        end
        attr_accessor :entity

        sig { returns(String) }
        attr_accessor :entity_id

        sig do
          params(
            custom_fields: T::Hash[Symbol, String],
            entity:
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::OrSymbol,
            entity_id: String,
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          custom_fields:,
          entity:,
          entity_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              custom_fields: T::Hash[Symbol, String],
              entity:
                MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::OrSymbol,
              entity_id: String,
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
                MetronomeSDK::V1::CustomFieldSetValuesParams::Entity
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT =
            T.let(
              :alert,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          BILLABLE_METRIC =
            T.let(
              :billable_metric,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CHARGE =
            T.let(
              :charge,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          COMMIT =
            T.let(
              :commit,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CONTRACT_CREDIT =
            T.let(
              :contract_credit,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CONTRACT_PRODUCT =
            T.let(
              :contract_product,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CONTRACT =
            T.let(
              :contract,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CREDIT_GRANT =
            T.let(
              :credit_grant,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CUSTOMER_PLAN =
            T.let(
              :customer_plan,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :discount,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PLAN =
            T.let(
              :plan,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PROFESSIONAL_SERVICE =
            T.let(
              :professional_service,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :product,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          RATE_CARD =
            T.let(
              :rate_card,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          SCHEDULED_CHARGE =
            T.let(
              :scheduled_charge,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PACKAGE_COMMIT =
            T.let(
              :package_commit,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PACKAGE_CREDIT =
            T.let(
              :package_credit,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PACKAGE_SUBSCRIPTION =
            T.let(
              :package_subscription,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )
          PACKAGE_SCHEDULED_CHARGE =
            T.let(
              :package_scheduled_charge,
              MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::CustomFieldSetValuesParams::Entity::TaggedSymbol
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
