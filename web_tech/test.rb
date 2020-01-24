require 'webrick'
# r天秤座市webrickがrubyファイル内で使えるようになる
server = WEBrick::HTTPServer.new({
  # ローカル変数serverにwebrickのインスタンスを代入
  :DocumentRoot => '.',
  # 個々の記述がwebアプリケーションのドメインになる
  :CGIInterpreter => WEBrick::HTTPServlet::CGIHandler::Ruby,
  # プログラムを実行できるプログラムrubyの居場所の指定
  :Port => '3000',
  # 出入り口
})
['INT', 'TERM'].each {|signal|
  Signal.trap(signal){ server.shutdown }
}

server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
#サーバーが起動した状態でdocumentrootの値 /testを送信すると同じディレクトリ階層にある
# 'test.html.erb'ファイルを表示する
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
# test.html.erb内の<form action='indicate.cgi'> 〜 </form>の内部にある値を
# indicate.rbに送信することができるようになります。
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')

server.mount('/', WEBrick::HTTPServlet::ERBHandler, 'exam.html.erb')


server.start
