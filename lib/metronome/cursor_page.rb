# frozen_string_literal: true

module Metronome
  class CursorPage
    # @return [String]
    attr_accessor :next_page

    # @return [Array<Object>]
    attr_accessor :data

    # @!visibility private
    #
    # @return [Metronome::Client]
    attr_accessor :client

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :req

    # @!visibility private
    #
    # @return [Hash{Symbol => Object}]
    attr_accessor :opts

    # @!visibility private
    #
    # @param model [Object]
    # @param raw_data [Hash{Symbol => Object}]
    # @param response [Net::HTTPResponse]
    # @param client [Metronome::Client]
    # @param req [Hash{Symbol => Object}]
    # @param opts [Hash{Symbol => Object}]
    def initialize(model, raw_data, _response, client, req, opts)
      self.next_page = raw_data[:next_page]
      self.data = (raw_data[:data] || []).map { |e| model.convert(e) }
      self.client = client
      self.req = req
      self.opts = opts
    end

    # @return [Boolean]
    def next_page?
      !next_page.nil?
    end

    # @raise [Metronome::HTTP::Error]
    # @return [Metronome::CursorPage]
    def next_page
      unless next_page?
        raise "No more pages available; please check #next_page? before calling #next_page"
      end
      client.request(Metronome::Util.deep_merge(req, {query: {next_page: next_page}}), opts)
    end

    # @param blk [Proc]
    #
    # @return [nil]
    def auto_paging_each(&blk)
      unless block_given?
        raise "A block must be given to #auto_paging_each"
      end
      page = self
      loop do
        page.data.each { |e| blk.call(e) }
        break unless page.next_page?
        page = page.next_page
      end
    end

    # @return [String]
    def inspect
      "#<#{selfl.class}:0x#{object_id.to_s(16)} next_page=#{next_page.inspect} data=#{data.inspect}>"
    end
  end
end
