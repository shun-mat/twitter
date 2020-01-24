#puts "DIVE INTO CODE"
#puts "私は受講生です"
#age = 30
#puts "#{age}歳です"

#name = "山田太郎"
#age = 18

#puts "私の名前は#{name}です。年齢は#{age}です。"

#seasons = ["春","夏","秋"]
#seasons << "冬"


##puts seasons[2]
#house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]

##p house[1][:location]
#num = 45
#if num == 30
#  puts "30ジャストだよ"
#elsif num  >= 50
#  puts "50以上だよ"
#else
#  puts "50未満だよ"
#end

#num =11
#if num % 2 == 0
#  puts "numは偶数"
#else
#  puts "numは奇数"
#end
#i = 0
#while i < 10
#  puts "おはよう"
#  i += 1
#end
#number = 0
#for number in 1..10 do
#  puts "おはよう"
#end

#10.times do
#  puts "おはよう"
#end

#numbers = [1,2,3,4,5,6,7,8,9,10]
#numbers.each do |number|
#  puts number
#end
#def addition(x,y,z)
#  puts (x + y + z) /3
#end

#addition(2,3,7)
#def divisoin(x,y)
#  puts x/y
#end
#divisoin(10,5)
#def divisoin(x,y)
#  if y == 0
#    return "エラーです"
#  end
#  x/y
#end

#
#puts divisoin(6,0)
#def doing(date, place, food)
#  puts "#{date}は#{place}で#{food}を食べる"
#end

#puts doing("今日","渋谷","カレー")
#puts doing("明日","池袋","オムライス")
#def compare(x,y)
  #if (x > y)
  #  puts "xのほうが大きいです"
  #elsif (x < y)
  #  puts "yのほうが大きいです"
  #else
  #  puts "xとyは等しいです"
  #end
#end
#compare(7,7)

=begin
def bigger(a,b)
  if a > b
    a
  else
    b
  end
end

def biggest (a,b,c)
    bigger_one = bigger(a,b)
  if bigger_one == a
    biggest = bigger(a,c)
  elsif bigger_one == b
    biggest = bigger(b,c)
  end
  biggest
end


  # 最大値を返却する処理を記述する

def median(a, b, c)
  # 最大値を代入する
  biggest_number =biggest(a,b,c)

  # 最小値をみつけ、最小値でなかった方を返却する
  if biggest_number == a
    median_number = bigger(b,c)
  elsif biggest_number == b
    median_number = bigger(a,c)
  elsif biggest_number == c
    median_number = bigger(a,b)
  end
  median_number
end

puts(median(5,7,2))
=end
=begin
def count_letter(str)
  str.split ("")
end
p count_letter("abcdef")
array = []
array.push(count_letter)
for count_letter
end
=end
=begin
def count_letter(str)
  count = 0
  str.split("").each do
    count += 1
  end
  count
end
p count_letter("abcdef")
=end
=begin
def repeat_string(str)
  length = str.length
  if length <= 4
    put str * 3
  else
    shorten = str.slice(0,3)
    puts shorten *3
  end
end

 repeat_string('python')
=end
=begin
def puts_hoge(number)
    number.each do|x|
      if x % 3 == 0 || x.to_s.include?("3")
        puts "hoge"
    else
      puts "#{x}"
    end
  end
end
puts_hoge(1..40)
=end
def switch_letters(origin_str)
    change_str = []
    p change_str
    strs = origin_str.split("")
    p strs
    strs.each do |str|
    if str == str.upcase
      change_str << str.downcase
    else
      change_str << str.upcase
    end

  end
  change_str.join
  p change_str
  end

  puts switch_letters("abCD")
