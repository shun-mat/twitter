blogs =  []

while true
  index = ["以下より行う操作を選んでください","1:ブログを作成する","2:作成されたブログを見る","3:ブログアプリを終了する"]
index.each do|menu|
  #puts "以下より行う操作を選んでください"
  #uts "1:ブログを作成する"
  #puts "2:作成されたブログを見る"
  #puts "3:ブログアプリを終了する"
  puts menu
end
  number = gets.to_i

  if number == 1
    blog = {}
    puts "1:ブログを作成する"
    puts "ブログのタイトルを入力してください"
    blog[:title] = gets #blog_title = gets
    #blog_titles << blog_title
    puts "ブログの本文を入力してください"
    blog[:content] = gets#blog_content = gets
    blogs << blog#blog_contents << blog_content
    puts "------入力確認------"
    puts  "タイトル#{blog[:title]}"#"タイトル：#{blog_title}"
    puts "本文#{blog[:content]}"#"本文：#{blog_content}"
  elsif number == 2
    puts "2:作成されたブログを見る"
    blogs.each do |blog|
      puts "タイトル：#{blog[:title]}"
      puts "本文：#{blog[:content]}"
      puts "-----------"
    end
  elsif number ==3
    puts "3:ブログアプリを終了する"
    break
  else
    puts "1~3の番号を入力してください"
  end
end
