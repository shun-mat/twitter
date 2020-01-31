class BlogsController < ApplicationController
  # protect_from_forgery
  protect_from_forgery
  before_action :set_blog, only:[:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    # viewに渡すインスタンスを定義
  end

  def confirm
    @blog = Blog.new(blog_params)
     render :new if @blog.invalid?
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      # Blog.create(title: params[:blog][:title], content: params[:blog][:content])
      #  new_blog_pathというPrefixを書くことで、"/blogs/new"というURLの指定をします、という意味になる。
      # modelにDB操作の命令を出す
        redirect_to blogs_path, notice: "ブログを作成しました！"
      # リダイレクトを行う
      # new_blog_pathが急にblogs_pathに変化していた
    else
    render :new
    # デフォルトだとcreate.html.erbが呼び出されるが
    # 処理終了後に呼び出されるビューがnew.html.erbに変更される
    end
  end

  def show
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  def destroy
   @blog.destroy
   redirect_to blogs_path, notice:"ブログを削除しました！"
  end

  private
  #private配下のメソッドはprivatemethodになり、そのクラス内からしか呼び出せなくなる

  def blog_params
   params.require(:blog).permit(:title, :content)
# def createの中でBlog.create(params.require(:blog).permit(:title, :content))と定義してあったが抜き出し
# 個別でメソッドにする
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
