# encoding: utf-8

require 'faraday'

module Github
  # Contains methods and attributes that act on the response returned from the 
  # request
  class Response < Faraday::Response::Middleware

    class << self
      attr_accessor :parser
    end

    def self.define_parser(&block)
      @parser = block
    end

    def response_type(env)
      env[:response_headers][CONTENT_TYPE].to_s
    end

  end # Response
end # Github
