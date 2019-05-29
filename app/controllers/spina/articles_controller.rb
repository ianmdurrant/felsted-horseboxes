module Spina
  class ArticlesController < Spina::ApplicationController
    before_action :set_page

    layout "layouts/default/application"

    def index
      @articles = Spina::Article.live.newest_first
    end

    def show
      @article = Spina::Article.friendly.find(params[:id])
    end

    private

    def set_page
      @page = Spina::Page.find_or_create_by(name: 'newspage') do |page|
        page.link_url = '/news'
        page.title = 'News'
        page.view_template = 'news'
        page.deletable = false
      end
    end
  end
end
