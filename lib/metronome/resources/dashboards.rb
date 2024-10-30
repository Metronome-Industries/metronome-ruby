# frozen_string_literal: true

module Metronome
  module Resources
    class Dashboards
      # @param client [Metronome::Client]
      def initialize(client:)
        @client = client
      end

      # Retrieve an embeddable dashboard url for a customer. The dashboard can be
      #   embedded using an iframe in a website. This will show information such as usage
      #   data and customer invoices.
      #
      # @param params [Hash{Symbol => Object}] Attributes to send in this request.
      #   @option params [String] :customer_id
      #   @option params [Symbol, Dashboard] :dashboard The type of dashboard to retrieve.
      #   @option params [Array<BmGroupKeyOverride>, nil] :bm_group_key_overrides Optional list of billable metric group key overrides
      #   @option params [Array<ColorOverride>, nil] :color_overrides Optional list of colors to override
      #   @option params [Array<DashboardOption>, nil] :dashboard_options Optional dashboard specific options
      #
      # @param opts [Hash{Symbol => Object}, Metronome::RequestOptions] Options to specify HTTP behaviour for this request.
      #
      # @return [Metronome::Models::DashboardGetEmbeddableURLResponse]
      def get_embeddable_url(params = {}, opts = {})
        req = {
          method: :post,
          path: "/dashboards/getEmbeddableUrl",
          body: params,
          headers: {"Content-Type" => "application/json"},
          model: Metronome::Models::DashboardGetEmbeddableURLResponse
        }
        @client.request(req, opts)
      end
    end
  end
end
