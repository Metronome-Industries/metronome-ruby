# frozen_string_literal: true

module MetronomeSDK
  module Resources
    class V1
      class Contracts
        class RateCards
          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders]
          attr_reader :product_orders

          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::Rates]
          attr_reader :rates

          # @return [MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules]
          attr_reader :named_schedules

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardCreateParams} for more details.
          #
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
          #
          # @overload create(name:, aliases: nil, credit_type_conversions: nil, custom_fields: nil, description: nil, fiat_credit_type_id: nil, request_options: {})
          #
          # @param name [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          #
          # @param credit_type_conversions [Array<MetronomeSDK::Models::V1::Contracts::RateCardCreateParams::CreditTypeConversion>] Required when using custom pricing units in rates.
          #
          # @param custom_fields [Hash{Symbol=>String}] Custom fields to be added eg. { "key1": "value1", "key2": "value2" }
          #
          # @param description [String]
          #
          # @param fiat_credit_type_id [String] The Metronome ID of the credit type to associate with the rate card, defaults to
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardCreateParams
          def create(params)
            parsed, options = MetronomeSDK::V1::Contracts::RateCardCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/create",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardCreateResponse,
              options: options
            )
          end

          # Return details for a specific rate card including name, description, and
          # aliases. This endpoint does not return rates - use the dedicated getRates or
          # getRateSchedule endpoints to understand the rates on a rate card.
          #
          # @overload retrieve(id:, request_options: {})
          #
          # @param id [String]
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveParams
          def retrieve(params)
            parsed, options = MetronomeSDK::V1::Contracts::RateCardRetrieveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/get",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams} for more details.
          #
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
          #
          # @overload update(rate_card_id:, aliases: nil, description: nil, name: nil, request_options: {})
          #
          # @param rate_card_id [String] ID of the rate card to update
          #
          # @param aliases [Array<MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams::Alias>] Reference this alias when creating a contract. If the same alias is assigned to
          #
          # @param description [String]
          #
          # @param name [String] Used only in UI/API. It is not exposed to end customers.
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardUpdateParams
          def update(params)
            parsed, options = MetronomeSDK::V1::Contracts::RateCardUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/update",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardUpdateResponse,
              options: options
            )
          end

          # List all rate cards. Returns rate card IDs, names, descriptions, aliases, and
          # other details. To view the rates associated with a given rate card, use the
          # getRates or getRateSchedule endpoints.
          #
          # @overload list(limit: nil, next_page: nil, body: nil, request_options: {})
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param body [Object] Body param
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Internal::CursorPage<MetronomeSDK::Models::V1::Contracts::RateCardListResponse>]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardListParams
          def list(params = {})
            parsed, options = MetronomeSDK::V1::Contracts::RateCardListParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/list",
              query: parsed.except(:body),
              body: parsed[:body],
              page: MetronomeSDK::Internal::CursorPage,
              model: MetronomeSDK::Models::V1::Contracts::RateCardListResponse,
              options: options
            )
          end

          # Permanently disable a rate card by archiving it, preventing use in new contracts
          # while preserving existing contract pricing. Use this when retiring old pricing
          # models, consolidating rate cards, or removing outdated pricing structures.
          # Returns the archived rate card ID and stops the rate card from appearing in
          # contract creation workflows.
          #
          # @overload archive(id:, request_options: {})
          #
          # @param id [String]
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardArchiveParams
          def archive(params)
            parsed, options = MetronomeSDK::V1::Contracts::RateCardArchiveParams.dump_request(params)
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/archive",
              body: parsed,
              model: MetronomeSDK::Models::V1::Contracts::RateCardArchiveResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams} for
          # more details.
          #
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
          #
          # @overload retrieve_rate_schedule(rate_card_id:, starting_at:, limit: nil, next_page: nil, ending_before: nil, selectors: nil, request_options: {})
          #
          # @param rate_card_id [String] Body param: ID of the rate card to get the schedule for
          #
          # @param starting_at [Time] Body param: inclusive starting point for the rates schedule
          #
          # @param limit [Integer] Query param: Max number of results that should be returned
          #
          # @param next_page [String] Query param: Cursor that indicates where the next page of results should start.
          #
          # @param ending_before [Time] Body param: optional exclusive end date for the rates schedule. When not specifi
          #
          # @param selectors [Array<MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams::Selector>] Body param: List of rate selectors, rates matching ANY of the selector will be i
          #
          # @param request_options [MetronomeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse]
          #
          # @see MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleParams
          def retrieve_rate_schedule(params)
            parsed, options = MetronomeSDK::V1::Contracts::RateCardRetrieveRateScheduleParams.dump_request(params)
            query_params = [:limit, :next_page]
            @client.request(
              method: :post,
              path: "v1/contract-pricing/rate-cards/getRateSchedule",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: MetronomeSDK::Models::V1::Contracts::RateCardRetrieveRateScheduleResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [MetronomeSDK::Client]
          def initialize(client:)
            @client = client
            @product_orders = MetronomeSDK::Resources::V1::Contracts::RateCards::ProductOrders.new(client: client)
            @rates = MetronomeSDK::Resources::V1::Contracts::RateCards::Rates.new(client: client)
            @named_schedules = MetronomeSDK::Resources::V1::Contracts::RateCards::NamedSchedules.new(client: client)
          end
        end
      end
    end
  end
end
