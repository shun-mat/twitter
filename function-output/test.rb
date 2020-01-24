class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement

  def initialize(name, address, number_of_students,founding_years,
                 introduction_video_url, introduction_statement)
    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_statement = introduction_statement
  end
end

# A学校用のインスタンスを作成
a_school = School.new("A学校", "東京都渋谷区..", 300, 100, "https://hoge.com", "A学校は自然豊かな...")
puts(a_school.name)
puts(a_school.address)
puts(a_school.number_of_students)
puts(a_school.founding_years)
puts(a_school.introduction_video_url)
puts(a_school.introduction_statement)

puts(a_school.instance_variables)


=begin
class School
  attr_accessor :name, :address
  # 引数をカンマ区切りで複数指定
  def initialize(name, address)
    @name = name
    @address = address
  end
end

# A学校用のインスタンスを作成
# 引数をカンマ区切りで複数指定
a_school = School.new("A学校", "渋谷区")
puts(a_school.name)
puts(a_school.address)
puts(a_school.instance_variables)


b_school = School.new("b学校")
puts(b_school.name)
  # nameというインスタンスメソッドを定義する
=begin  def name=(word)
    @school_name = word
  end

  def name1
     @school_name
  end

  def address=(word)
    @school_address = word

  def address1
    @school_address
  end

  def phone_number = (word)
    @school_tel = word
  end

  def phone_number1
    @school_tel
  end
end

school = School.new
school.name("A学校")
school.name1
=end
