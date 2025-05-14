# typed: strong

module MetronomeSDK
  module Models
    module V1
      class ContractRetrieveRateScheduleParams < MetronomeSDK::Internal::Type::BaseModel
        extend MetronomeSDK::Internal::Type::RequestParameters::Converter
        include MetronomeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              MetronomeSDK::V1::ContractRetrieveRateScheduleParams,
              MetronomeSDK::Internal::AnyHash
            )
          end

        # ID of the contract to get the rate schedule for.
        sig { returns(String) }
        attr_accessor :contract_id

        # ID of the customer for whose contract to get the rate schedule for.
        sig { returns(String) }
        attr_accessor :customer_id

        # Max number of results that should be returned
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # Cursor that indicates where the next page of results should start.
        sig { returns(T.nilable(String)) }
        attr_reader :next_page

        sig { params(next_page: String).void }
        attr_writer :next_page

        # optional timestamp which overlaps with the returned rate schedule segments. When
        # not specified, the current timestamp will be used.
        sig { returns(T.nilable(Time)) }
        attr_reader :at

        sig { params(at: Time).void }
        attr_writer :at

        # List of rate selectors, rates matching ANY of the selectors will be included in
        # the response. Passing no selectors will result in all rates being returned.
        sig do
          returns(
            T.nilable(
              T::Array[
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector
              ]
            )
          )
        end
        attr_reader :selectors

        sig do
          params(
            selectors:
              T::Array[
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector::OrHash
              ]
          ).void
        end
        attr_writer :selectors

        sig do
          params(
            contract_id: String,
            customer_id: String,
            limit: Integer,
            next_page: String,
            at: Time,
            selectors:
              T::Array[
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector::OrHash
              ],
            request_options: MetronomeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the contract to get the rate schedule for.
          contract_id:,
          # ID of the customer for whose contract to get the rate schedule for.
          customer_id:,
          # Max number of results that should be returned
          limit: nil,
          # Cursor that indicates where the next page of results should start.
          next_page: nil,
          # optional timestamp which overlaps with the returned rate schedule segments. When
          # not specified, the current timestamp will be used.
          at: nil,
          # List of rate selectors, rates matching ANY of the selectors will be included in
          # the response. Passing no selectors will result in all rates being returned.
          selectors: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              contract_id: String,
              customer_id: String,
              limit: Integer,
              next_page: String,
              at: Time,
              selectors:
                T::Array[
                  MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector
                ],
              request_options: MetronomeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Selector < MetronomeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                MetronomeSDK::V1::ContractRetrieveRateScheduleParams::Selector,
                MetronomeSDK::Internal::AnyHash
              )
            end

          # List of pricing group key value pairs, rates containing the matching key / value
          # pairs will be included in the response.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :partial_pricing_group_values

          sig do
            params(partial_pricing_group_values: T::Hash[Symbol, String]).void
          end
          attr_writer :partial_pricing_group_values

          # List of pricing group key value pairs, rates matching all of the key / value
          # pairs will be included in the response.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :pricing_group_values

          sig { params(pricing_group_values: T::Hash[Symbol, String]).void }
          attr_writer :pricing_group_values

          # Rates matching the product id will be included in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :product_id

          sig { params(product_id: String).void }
          attr_writer :product_id

          # List of product tags, rates matching any of the tags will be included in the
          # response.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :product_tags

          sig { params(product_tags: T::Array[String]).void }
          attr_writer :product_tags

          sig do
            params(
              partial_pricing_group_values: T::Hash[Symbol, String],
              pricing_group_values: T::Hash[Symbol, String],
              product_id: String,
              product_tags: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # List of pricing group key value pairs, rates containing the matching key / value
            # pairs will be included in the response.
            partial_pricing_group_values: nil,
            # List of pricing group key value pairs, rates matching all of the key / value
            # pairs will be included in the response.
            pricing_group_values: nil,
            # Rates matching the product id will be included in the response.
            product_id: nil,
            # List of product tags, rates matching any of the tags will be included in the
            # response.
            product_tags: nil
          )
          end

          sig do
            override.returns(
              {
                partial_pricing_group_values: T::Hash[Symbol, String],
                pricing_group_values: T::Hash[Symbol, String],
                product_id: String,
                product_tags: T::Array[String]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
