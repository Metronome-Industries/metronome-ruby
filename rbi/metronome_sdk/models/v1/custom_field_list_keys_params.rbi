# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomFieldListKeysParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomFieldListKeysParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # Optional list of entity types to return keys for
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::CustomFieldListKeysParams::Entity::OrSymbol
              ]
            )
          )
        end
        attr_reader :entities

        sig do
          params(
            entities:
              T::Array[
                MetronomeSDK::V1::CustomFieldListKeysParams::Entity::OrSymbol
              ]
          ).void
        end
        attr_writer :entities

        sig do
          params(
            next_page: String,
            entities:
              T::Array[
                MetronomeSDK::V1::CustomFieldListKeysParams::Entity::OrSymbol
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # Optional list of entity types to return keys for
          entities: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              next_page: String,
              entities:
                T::Array[
                  MetronomeSDK::V1::CustomFieldListKeysParams::Entity::OrSymbol
                ],
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
              T.all(Symbol, MetronomeSDK::V1::CustomFieldListKeysParams::Entity)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ALERT =
            T.let(
              :alert,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          BILLABLE_METRIC =
            T.let(
              :billable_metric,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CHARGE =
            T.let(
              :charge,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          COMMIT =
            T.let(
              :commit,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CONTRACT_CREDIT =
            T.let(
              :contract_credit,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CONTRACT_PRODUCT =
            T.let(
              :contract_product,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CONTRACT =
            T.let(
              :contract,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CREDIT_GRANT =
            T.let(
              :credit_grant,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CUSTOMER_PLAN =
            T.let(
              :customer_plan,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          CUSTOMER =
            T.let(
              :customer,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          DISCOUNT =
            T.let(
              :discount,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PLAN =
            T.let(
              :plan,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PROFESSIONAL_SERVICE =
            T.let(
              :professional_service,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PRODUCT =
            T.let(
              :product,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          RATE_CARD =
            T.let(
              :rate_card,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          SCHEDULED_CHARGE =
            T.let(
              :scheduled_charge,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PACKAGE_COMMIT =
            T.let(
              :package_commit,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PACKAGE_CREDIT =
            T.let(
              :package_credit,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PACKAGE_SUBSCRIPTION =
            T.let(
              :package_subscription,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )
          PACKAGE_SCHEDULED_CHARGE =
            T.let(
              :package_scheduled_charge,
              MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                MetronomeSDK::V1::CustomFieldListKeysParams::Entity::TaggedSymbol
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
