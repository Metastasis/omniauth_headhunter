require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class HeadHunter < OmniAuth::Strategies::OAuth2

      USERINFO_ENDPOINT = "https://api.hh.ru/me"

      option :client_options, {
        :site => "https://hh.ru",
        :token_url => "/oauth/token",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"].to_s }

      info do
        {
          name: raw_info["first_name"],
          email: raw_info["email"]
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get(USERINFO_ENDPOINT).parsed
      end

    end
  end
end

OmniAuth.config.add_camelization "headhunter", "HeadHunter"
