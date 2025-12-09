# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data
                ]
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of the created configuration
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The billing provider set for this configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            )
          end
          attr_reader :billing_provider

          sig do
            params(
              billing_provider:
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::OrSymbol
            ).void
          end
          attr_writer :billing_provider

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider and delivery method combination.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :configuration

          sig { params(configuration: T::Hash[Symbol, T.anything]).void }
          attr_writer :configuration

          # ID of the customer this configuration is associated with.
          sig { returns(T.nilable(String)) }
          attr_reader :customer_id

          sig { params(customer_id: String).void }
          attr_writer :customer_id

          # ID of the delivery method used for this customer configuration.
          sig { returns(T.nilable(String)) }
          attr_reader :delivery_method_id

          sig { params(delivery_method_id: String).void }
          attr_writer :delivery_method_id

          # The tax provider set for this configuration.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
              )
            )
          end
          attr_reader :tax_provider

          sig do
            params(
              tax_provider:
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::OrSymbol
            ).void
          end
          attr_writer :tax_provider

          sig do
            params(
              id: String,
              billing_provider:
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              customer_id: String,
              delivery_method_id: String,
              tax_provider:
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the created configuration
            id: nil,
            # The billing provider set for this configuration.
            billing_provider: nil,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider and delivery method combination.
            configuration: nil,
            # ID of the customer this configuration is associated with.
            customer_id: nil,
            # ID of the delivery method used for this customer configuration.
            delivery_method_id: nil,
            # The tax provider set for this configuration.
            tax_provider: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_provider:
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol,
                configuration: T::Hash[Symbol, T.anything],
                customer_id: String,
                delivery_method_id: String,
                tax_provider:
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The billing provider set for this configuration.
          module BillingProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            METRONOME =
              T.let(
                :metronome,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The tax provider set for this configuration.
          module TaxProvider
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANROK =
              T.let(
                :anrok,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
              )
            AVALARA =
              T.let(
                :avalara,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerSetBillingConfigurationsResponse::Data::TaxProvider::TaggedSymbol
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
end
