class TopPagesController < ApplicationController
  def index
    @articles = Article.all.page(params[:page]).per Settings.article.top_page.per
    @top_page = TopPage.new
  end
end
