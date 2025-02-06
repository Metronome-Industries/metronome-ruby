# frozen_string_literal: true

module Metronome
  module Resources
    class Dashboards
      # Retrieve an embeddable dashboard url for a customer. The dashboard can be
      #   embedded using an iframe in a website. This will show information such as usage
      #   data and customer invoices.
      #
      # @param params [Metronome::Models::DashboardGetEmbeddableURLParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :customer_id
      #
      #   @option params [Symbol, Metronome::Models::DashboardGetEmbeddableURLParams::Dashboard] :dashboard The type of dashboard to retrieve.
      #
      #   @option params [Array<Metronome::Models::DashboardGetEmbeddableURLParams::BmGroupKeyOverride>] :bm_group_key_overrides Optional list of billable metric group key overrides
      #
      #   @option params [Array<Metronome::Models::DashboardGetEmbeddableURLParams::ColorOverride>] :color_overrides Optional list of colors to override
      #
      #   @option params [Array<Metronome::Models::DashboardGetEmbeddableURLParams::DashboardOption>] :dashboard_options Optional dashboard specific options
      #
      #   @option params [Metronome::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Metronome::Models::DashboardGetEmbeddableURLResponse]
      #
      def get_embeddable_url(params)
        parsed, options = Metronome::Models::DashboardGetEmbeddableURLParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dashboards/getEmbeddableUrl",
          body: parsed,
          model: Metronome::Models::DashboardGetEmbeddableURLResponse,
          options: options
        )
      end

      # @param client [Metronome::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
