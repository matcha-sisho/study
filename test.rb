=begin
コメント
=end

#テストの成績を評価する
score = 99

if score > 90
  puts "めっちゃ凄い"
elsif score > 80
  puts "凄い"
elsif score > 60
  puts "良い感じ"
else
  puts "頑張れ"
end

list = [1, 2, 3, 4, 5]
for item in list #item = listの各要素
  puts item
end

=begin
a = 1
while a < 10
  puts a
  a += 1 # a = a + 1と同じ意味
end
=end

#円についての処理をするクラスを宣言
class Circle #クラス名の最初は大文字

  def area_circle
    puts @radius * @radius * 3.14
  end

  #関数などが連続するときは間に空行を１行入れること
  def circumference
    puts @radius * 2 * 3.14
  end

  def radius=(radius)
    @radius = radius
  end

  def radius
    @radius
  end

end

#インスタンスを生成
circle1 = Circle.new

#半径を入力
circle1.radius = 3

#関数を呼び出す
circle1.area_circle
circle1.circumference
puts circle1.radius

module Aaa
  def calcDouble(bbb)
    bbb * 2
  end
end

class Counter
  @@cnt = 0

  def initialize(counter_name)
    @@cnt+=1
    @counter_name = counter_name
  end

  def self.get_cnt
    @@cnt
  end

  def self.counter_name
    @counter_name
  end

  include Aaa

end

cnt1 = Counter.new("apple")
cnt2 = Counter.new("banana")
cnt3 = Counter.new("cookie")

p Counter.get_cnt
p Counter.counter_name
p cnt3.calcDouble(7)
