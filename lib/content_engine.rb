require './lib/content_engine/version'

module ContentEngine
  require 'mechanize'

  class << self

    ACCOUNT = ['danil3@i.ua', 'ytrhbx']

    def work
      parse_articles
      vk_login
      parse_vk
      sort_articles
      publish_articles
    end

    def parse_articles
    end

    def vk_login
      login_url = 'https://vk.com/'
      agent = agent_session
      page = agent.get( login_url )
      login_form = page.form_with( method: 'POST' )
      login_form.email = ACCOUNT[0]
      login_form.pass = ACCOUNT[1]
      page = login_form.submit
    end

    def parse_vk
    end

    def sort_articles
    end

    def publish_articles
    end

  end
end
