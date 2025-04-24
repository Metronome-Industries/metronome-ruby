# typed: strong

module MetronomeSDK
  module Models
    module V1
      module Contracts
        class RateCardRetrieveResponse < MetronomeSDK::BaseModel
          sig { returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data) }
          def data
          end

          sig do
            params(_: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data)
              .returns(MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data)
          end
          def data=(_)
          end

          sig { params(data: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data).void }
          def initialize(data:)
          end

          sig { override.returns({data: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data}) }
          def to_hash
          end

          class Data < MetronomeSDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Time) }
            def created_at
            end

            sig { params(_: Time).returns(Time) }
            def created_at=(_)
            end

            sig { returns(String) }
            def created_by
            end

            sig { params(_: String).returns(String) }
            def created_by=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias])) }
            def aliases
            end

            sig do
              params(_: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias])
                .returns(T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias])
            end
            def aliases=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion]
                )
              )
            end
            def credit_type_conversions
            end

            sig do
              params(
                _: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion]
              )
                .returns(
                  T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion]
                )
            end
            def credit_type_conversions=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, String])) }
            def custom_fields
            end

            sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
            def custom_fields=(_)
            end

            sig { returns(T.nilable(String)) }
            def description
            end

            sig { params(_: String).returns(String) }
            def description=(_)
            end

            sig { returns(T.nilable(MetronomeSDK::Models::CreditTypeData)) }
            def fiat_credit_type
            end

            sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
            def fiat_credit_type=(_)
            end

            sig do
              params(
                id: String,
                created_at: Time,
                created_by: String,
                name: String,
                aliases: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias],
                credit_type_conversions: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion],
                custom_fields: T::Hash[Symbol, String],
                description: String,
                fiat_credit_type: MetronomeSDK::Models::CreditTypeData
              )
                .void
            end
            def initialize(
              id:,
              created_at:,
              created_by:,
              name:,
              aliases: nil,
              credit_type_conversions: nil,
              custom_fields: nil,
              description: nil,
              fiat_credit_type: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    created_at: Time,
                    created_by: String,
                    name: String,
                    aliases: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::Alias],
                    credit_type_conversions: T::Array[MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse::Data::CreditTypeConversion],
                    custom_fields: T::Hash[Symbol, String],
                    description: String,
                    fiat_credit_type: MetronomeSDK::Models::CreditTypeData
                  }
                )
            end
            def to_hash
            end

            class Alias < MetronomeSDK::BaseModel
              sig { returns(String) }
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { returns(T.nilable(Time)) }
              def ending_before
              end

              sig { params(_: Time).returns(Time) }
              def ending_before=(_)
              end

              sig { returns(T.nilable(Time)) }
              def starting_at
              end

              sig { params(_: Time).returns(Time) }
              def starting_at=(_)
              end

              sig { params(name: String, ending_before: Time, starting_at: Time).void }
              def initialize(name:, ending_before: nil, starting_at: nil)
              end

              sig { override.returns({name: String, ending_before: Time, starting_at: Time}) }
              def to_hash
              end
            end

            class CreditTypeConversion < MetronomeSDK::BaseModel
              sig { returns(MetronomeSDK::Models::CreditTypeData) }
              def custom_credit_type
              end

              sig { params(_: MetronomeSDK::Models::CreditTypeData).returns(MetronomeSDK::Models::CreditTypeData) }
              def custom_credit_type=(_)
              end

              sig { returns(String) }
              def fiat_per_custom_credit
              end

              sig { params(_: String).returns(String) }
              def fiat_per_custom_credit=(_)
              end

              sig { params(custom_credit_type: MetronomeSDK::Models::CreditTypeData, fiat_per_custom_credit: String).void }
              def initialize(custom_credit_type:, fiat_per_custom_credit:)
              end

              sig do
                override
                  .returns({custom_credit_type: MetronomeSDK::Models::CreditTypeData, fiat_per_custom_credit: String})
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
