=begin
class House
end
5.times do
  p House.new
end
=end

=begin
def add(n,y)
  sum = n + y
  if sum < 50
    return "50より小さい"
  else
    return "50より大きい"
  end
end

puts add(10,20)

num = 0
while num <10
  puts "ohayou"
  num +=1
end

for num in 1..10
  puts "konnitiha"
end
10.times do
  puts "konnbanha"
end
=end
=begin
def bigger(a,b)
  if a > b
    puts a
  else
    puts b
  end
end

def biggest(a,b,c)
  bigger_one = bigger_one(a,b)
 if bigger_one == a
   biggest = bigger(a,c)
 elsif bigger_one == b
   biggest = bigger(b,c)
 end
   biggest
 end
end
 def median(a, b, c)
   # 最大値を代入する
  if biggest_number == a
   median_number = bigger(b,c)

   # 最小値をみつけ、最小値でなかった方を返却する
   if biggest_number == a

   elsif biggest_number == b

   elsif biggest_number == c

   end
 end

def linear_search(numbers,value)
  # この部分を記述してください
i = 0
while i < numbers.length
  if numbers[i] == value
    return i
  end
  i+= 1
end
"none"
end

  numbers.each do |value|
    value == target_number
    if value == target_number
      return value
    else
    return "None"
  end
end
end

# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts("numbers" + numbers.to_s) # 配列の値をターミナルに表示
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers, target_number))



def binary_search(numbers, value)
  # この部分に記述してください
  head = 0
  tail = numbers.length-1
  while head<= tail do
  center = ((head + tail)/2.0).round
  if (numbers[center] == value)
    return center
  elsif (numbers[center] < value)
    head = center  + 1
  else
    tail = center - 1

end
end
"none"
end
# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts("numbers" + numbers.to_s) # 配列の値をターミナルに表示
puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をbinary_searchメソッドで探し、探した結果をputsで出力する
puts(binary_search(numbers,target_number))



def selection_sort(numbers)
  # 「まだ調べていない中で、一番左にある値のインデックス番号」を表す変数iを定義する
  i = 0
  # iの値が、配列の個数を超えるまで繰り返す
  while i < (numbers.length) -1 do
    # 配列の移動を目で確認するためのp(number)
    p(numbers)
    # 「一番小さい値が入っている配列のindex番号である」ということを
    # 表すための、indexMinという変数を定義しておく
    indexMin = i
    # numbers[i]の中身に入っている数字と、見比べるための
    # 右隣の数字を引っ張り出すためのインデックスの数字kを定義する
    k = i + 1
    # kの値が、配列の個数を超えるまで繰り返す
    while k < (numbers.length) do
      # numbers[indexMin]の値（一番左の値）が、numbers[k]より大きければ
      if numbers[k] < numbers[indexMin]
        # numbers[k]の中に入っている値が、最小の値ということになる
        # なので、kの値（index番号）をindexMinに移す
        indexMin = k
      end
      k += 1
    end
    # すべてのループが終わったあと、numbers[indexMin]に入っている値が、
    # すべて調べた中で最小の値、ということになるので、それを一番左に移す
    numbers[indexMin], numbers[i] = numbers[i], numbers[indexMin]
    i += 1
  end
  p(numbers)
end

selection_sort([12, 13, 11, 14, 10])
=end

def quick_sort(numbers)
  return numbers if numbers.size < 2
  target = numbers.shift
  smallers = []
  biggers = []
  numbers.each do |sort_number|
      if sort_number < target
          smallers << sort_number
      else
          biggers << sort_number
      end
  end
  quick_sort(smallers) + [target] + quick_sort(biggers)
end

numbers = [4, 8, 6, 5, 2, 1, 3, 9, 7]

p quick_sort(numbers)
