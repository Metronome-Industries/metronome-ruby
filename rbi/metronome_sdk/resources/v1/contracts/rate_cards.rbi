# typed: strong

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          sig do
            returns(
              MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders
            )
          end
          attr_reader :product_orders

          sig do
            returns(MetronomeSDK::Resources::V1::Contracts::RateCards::Rates)
          end
          attr_reader :rates

          sig do
            returns(
              MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules
            )
          end
          attr_reader :named_schedules

          # In Metronome, the rate card is the central location for your pricing. Rate cards
          # were built with new product launches and pricing changes in mind - you can
          # update your products and pricing in one place, and that change will be
          # automatically propagated across your customer cohorts. Most clients need only
          # maintain one or a few rate cards within Metronome.
          #
          # ### Use this endpoint to:
          #
          # - Create a rate card with a name and description
          # - Define the rate card's single underlying fiat currency, and any number of
          #   conversion rates between that fiat currency and custom pricing units. You can
          #   then add products and associated rates in the fiat currency or custom pricing
          #   unit for which you have defined a conversion rate.
          # - Set aliases for the rate card. Aliases are human-readable names that you can
          #   use in the place of the id of the rate card when provisioning a customer's
          #   contract. By using an alias, you can easily create a contract and provision a
          #   customer by choosing the paygo rate card, without storing the rate card id in
          #   your internal systems. This is helpful when launching a new rate card for
          #   paygo customers, you can update the alias for paygo to be scheduled to be
          #   assigned to the new rate card without updating your code.
          #
          # ### Key response fields:
          #
          # - The ID of the rate card you just created
          #
          # ### Usage guidelines:
          #
          # - After creating a rate card, you can now use the addRate or addRates endpoints
          #   to add products and their prices to it
          # - A rate card alias can only be used by one rate card at a time. If you create a
          #   contract with a rate card alias that is already in use by another rate card,
          #   the original rate card's alias schedule will be updated. The alias will
          #   reference the rate card to which it was most recently assigned.
          sig do
            params(
              name: String,
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::Alias::OrHash
                ],
              credit_type_conversions:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardCreateParams::CreditTypeConversion::OrHash
                ],
              custom_fields: T::Hash[Symbol, String],
              description: String,
              fiat_credit_type_id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse
            )
          end
          def create(
            # Used only in UI/API. It is not exposed to end customers.
            name:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            # Required when using custom pricing units in rates.
            credit_type_conversions: nil,
            # Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
            custom_fields: nil,
            description: nil,
            # The Metronome ID of the credit type to associate with the rate card, defaults to
            # USD (cents) if not passed.
            fiat_credit_type_id: nil,
            request_options: {}
          )
          end

          # Return details for a specific rate card including name, description, and
          # aliases. This endpoint does not return rates - use the dedicated getRates or
          # getRateSchedule endpoints to understand the rates on a rate card.
          sig do
            params(
              id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse
            )
          end
          def retrieve(id:, request_options: {})
          end

          # Update the metadata properties of an existing rate card, including its name,
          # description, and aliases. This endpoint is designed for managing rate card
          # identity and reference aliases rather than modifying pricing rates.
          #
          # Modifies the descriptive properties and alias configuration of a rate card
          # without affecting the underlying pricing rates or schedules. This allows you to
          # update how a rate card is identified and referenced throughout your system.
          #
          # ### Use this endpoint to:
          #
          # - Rate card renaming: Update display names or descriptions for organizational
          #   clarity
          # - Alias management: Add, modify, or schedule alias transitions for seamless rate
          #   card migrations
          # - Documentation updates: Keep rate card descriptions current with business
          #   context
          # - Self-serve provisioning setup: Configure aliases to enable code-free rate card
          #   transitions
          #
          # #### Active contract impact:
          #
          # - Alias changes: Already-created contracts continue using their originally
          #   assigned rate cards.
          # - Other changes made using this endpoint will only impact the Metronome UI.
          #
          # #### Grandfathering existing PLG customer pricing:
          #
          # - Rate card aliases support scheduled transitions, enabling seamless rate card
          #   migrations for new customers, allowing existing customers to be grandfathered
          #   into their existing prices without code. Note that there are multiple
          #   mechanisms to support grandfathering in Metronome.
          #
          # #### How scheduled aliases work for PLG grandfathering:
          #
          # Initial setup:
          #
          # - Add alias to current rate card: Assign a stable alias (e.g.,
          #   "standard-pricing") to your active rate card
          # - Reference alias during contract creation: Configure your self-serve workflow
          #   to create contracts using `rate_card_alias` instead of direct `rate_card_id`
          # - Automatic resolution: New contracts referencing the alias automatically
          #   resolve to the rate card associated with the alias at the point in time of
          #   provisioning
          #
          # #### Grandfathering process:
          #
          # - Create new rate card: Build your new rate card with updated pricing structure
          # - Schedule alias transition: Add the same alias to the new rate card with a
          #   `starting_at` timestamp
          # - Automatic cutover: Starting at the scheduled time, new contracts created in
          #   your PLG workflow using that alias will automatically reference the new rate
          #   card
          sig do
            params(
              rate_card_id: String,
              aliases:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardUpdateParams::Alias::OrHash
                ],
              description: String,
              name: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse
            )
          end
          def update(
            # ID of the rate card to update
            rate_card_id:,
            # Reference this alias when creating a contract. If the same alias is assigned to
            # multiple rate cards, it will reference the rate card to which it was most
            # recently assigned. It is not exposed to end customers.
            aliases: nil,
            description: nil,
            # Used only in UI/API. It is not exposed to end customers.
            name: nil,
            request_options: {}
          )
          end

          # List all rate cards. Returns rate card IDs, names, descriptions, aliases, and
          # other details. To view the rates associated with a given rate card, use the
          # getRates or getRateSchedule endpoints.
          sig do
            params(
              limit: Integer,
              next_page: String,
              body: T.anything,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Internal::CursorPage[
                MetronomeSDK::Models::V1::Contracts::RateCardListResponse
              ]
            )
          end
          def list(
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param
            body: nil,
            request_options: {}
          )
          end

          # Permanently disable a rate card by archiving it, preventing use in new contracts
          # while preserving existing contract pricing. Use this when retiring old pricing
          # models, consolidating rate cards, or removing outdated pricing structures.
          # Returns the archived rate card ID and stops the rate card from appearing in
          # contract creation workflows.
          sig do
            params(
              id: String,
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse
            )
          end
          def archive(id:, request_options: {})
          end

          # A rate card defines the prices that you charge for your products. Rate cards
          # support scheduled changes over time, to allow you to easily roll out pricing
          # changes and new product launches across your customer base. Use this endpoint to
          # understand the rate schedule `starting_at` a given date, optionally filtering
          # the list of rates returned based on product id or pricing group values. For
          # example, you may want to display a schedule of upcoming price changes for a
          # given product in your product experience - use this endpoint to fetch that
          # information from its source of truth in Metronome.
          #
          # If you want to understand the rates for a specific customer's contract,
          # inclusive of contract-level overrides, use the `getContractRateSchedule`
          # endpoint.
          sig do
            params(
              rate_card_id: String,
              starting_at: Time,
              limit: Integer,
              next_page: String,
              ending_before: Time,
              selectors:
                T::Array[
                  MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector::OrHash
                ],
              request_options: MetronomeSDK::RequestOptions::OrHash
            ).returns(
              MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse
            )
          end
          def retrieve_rate_schedule(
            # Body param: ID of the rate card to get the schedule for
            rate_card_id:,
            # Body param: inclusive starting point for the rates schedule
            starting_at:,
            # Query param: Max number of results that should be returned
            limit: nil,
            # Query param: Cursor that indicates where the next page of results should start.
            next_page: nil,
            # Body param: optional exclusive end date for the rates schedule. When not
            # specified rates will show all future schedule segments.
            ending_before: nil,
            # Body param: List of rate selectors, rates matching ANY of the selector will be
            # included in the response Passing no selectors will result in all rates being
            # returned.
            selectors: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: MetronomeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
