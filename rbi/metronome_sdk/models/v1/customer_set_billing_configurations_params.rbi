# typed: strong

module MetronomeSDK
  module Models
    module V1
      class CustomerSetBillingConfigurationsParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          params(
            data:
              T::Array[
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, request_options: {})
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data
                ],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Data < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # The billing provider set for this configuration.
          sig do
            returns(
              MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol
            )
          end
          attr_accessor :billing_provider

          sig { returns(String) }
          attr_accessor :customer_id

          # Configuration for the billing provider. The structure of this object is specific
          # to the billing provider and delivery method combination. Defaults to an empty
          # object, however, for most billing provider + delivery method combinations, it
          # will not be a valid configuration. For AWS marketplace configurations, the
          # aws_is_subscription_product flag can be used to indicate a product with
          # usage-based pricing. More information can be found
          # [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome).
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :configuration

          sig { params(configuration: T::Hash[Symbol, T.anything]).void }
          attr_writer :configuration

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          sig do
            returns(
              T.nilable(
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol
              )
            )
          end
          attr_reader :delivery_method

          sig do
            params(
              delivery_method:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol
            ).void
          end
          attr_writer :delivery_method

          # ID of the delivery method to use for this customer. If not provided, the
          # `delivery_method` must be provided.
          sig { returns(T.nilable(String)) }
          attr_reader :delivery_method_id

          sig { params(delivery_method_id: String).void }
          attr_writer :delivery_method_id

          sig do
            params(
              billing_provider:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol,
              customer_id: String,
              configuration: T::Hash[Symbol, T.anything],
              delivery_method:
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol,
              delivery_method_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The billing provider set for this configuration.
            billing_provider:,
            customer_id:,
            # Configuration for the billing provider. The structure of this object is specific
            # to the billing provider and delivery method combination. Defaults to an empty
            # object, however, for most billing provider + delivery method combinations, it
            # will not be a valid configuration. For AWS marketplace configurations, the
            # aws_is_subscription_product flag can be used to indicate a product with
            # usage-based pricing. More information can be found
            # [here](https://docs.metronome.com/invoice-customers/solutions/marketplaces/invoice-aws/#provision-aws-marketplace-customers-in-metronome).
            configuration: nil,
            # The method to use for delivering invoices to this customer. If not provided, the
            # `delivery_method_id` must be provided.
            delivery_method: nil,
            # ID of the delivery method to use for this customer. If not provided, the
            # `delivery_method` must be provided.
            delivery_method_id: nil
          )
          end

          sig do
            override.returns(
              {
                billing_provider:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::OrSymbol,
                customer_id: String,
                configuration: T::Hash[Symbol, T.anything],
                delivery_method:
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::OrSymbol,
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
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AWS_MARKETPLACE =
              T.let(
                :aws_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            STRIPE =
              T.let(
                :stripe,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            NETSUITE =
              T.let(
                :netsuite,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            AZURE_MARKETPLACE =
              T.let(
                :azure_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            QUICKBOOKS_ONLINE =
              T.let(
                :quickbooks_online,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            WORKDAY =
              T.let(
                :workday,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )
            GCP_MARKETPLACE =
              T.let(
                :gcp_marketplace,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::BillingProvider::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The method to use for delivering invoices to this customer. If not provided, the
          # `delivery_method_id` must be provided.
          module DeliveryMethod
            extend MetronomeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIRECT_TO_BILLING_PROVIDER =
              T.let(
                :direct_to_billing_provider,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SQS =
              T.let(
                :aws_sqs,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            TACKLE =
              T.let(
                :tackle,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )
            AWS_SNS =
              T.let(
                :aws_sns,
                MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  MetronomeSDK::V1::CustomerSetBillingConfigurationsParams::Data::DeliveryMethod::TaggedSymbol
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
