# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerRetrieveCustomerBillingConfigurationsResponse < MetronomeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::OrHash
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
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data
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
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # ID of this configuration; can be provided as the
          # billing_provider_configuration_id when creating a contract.
          sig { returns(String) }
          attr_accessor :id

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
            )
          end
          attr_accessor :billing_provider

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :configuration

          sig { returns(String) }
          attr_accessor :customer_id

          # The method to use for delivering invoices to this customer.
          sig do
            returns(
              MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
            )
          end
          attr_accessor :delivery_method

          # Configuration for the delivery method. The structure of this object is specific
          # to the delivery method.
          sig { returns(T::Hash[Symbol, T.anything]) }
          attr_accessor :delivery_method_configuration

          # ID of the delivery method to use for this customer.
          sig { returns(String) }
          attr_accessor :delivery_method_id

          sig do
            params(
              id: String,
              billing_provider:
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::OrSymbol,
              configuration: T::Hash[Symbol, T.anything],
              customer_id: String,
              delivery_method:
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::OrSymbol,
              delivery_method_configuration: T::Hash[Symbol, T.anything],
              delivery_method_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of this configuration; can be provided as the
            # billing_provider_configuration_id when creating a contract.
            id:,
            # The billing provider set for this configuration.
            billing_provider:,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider.
            configuration:,
            customer_id:,
            # The method to use for delivering invoices to this customer.
            delivery_method:,
            # Configuration for the delivery method. The structure of this object is specific
            # to the delivery method.
            delivery_method_configuration:,
            # ID of the delivery method to use for this customer.
            delivery_method_id:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                billing_provider:
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol,
                configuration: T::Hash[Symbol, T.anything],
                customer_id: String,
                delivery_method:
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol,
                delivery_method_configuration: T::Hash[Symbol, T.anything],
                delivery_method_id: String
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
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices to this customer.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::Models::V1::CustomerRetrieveCustomerBillingConfigurationsResponse::Data::DeliveryMethod::TaggedSymbol
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
