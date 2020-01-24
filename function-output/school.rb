require 'launchy'
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
def method_name
end

end
  ### 学校紹介動画ページを表示するインスタンスメソッドを定義
def introduction_video_url
  Launchy.open"#{a_school.introduction_video_url}"
end



a_school = School.new("A学校", "東京都新宿区..", 300, 100, "https://www.javadrive.jp/ruby/class/index5.html", "A学校は自然豊かな...")
# 以下でインスタンスメソッドを呼び出そう
puts(a_school.name)
a_school.introduction_video_url()
b_school = School.new("B学校", "東京都新宿区..", 500, 30, "任意のURL", "B学校は文武両立で...")
# 以下でインスタンスメソッドを呼び出そう
=begin
class School
  def name
    @greeting = "Hello!"
  end
  def name1
    puts @greeting
  end
end

school = School.new
school.name
school.name1


puts School.new.class

a_school = School.new
b_school = School.new
puts school.class
=end
