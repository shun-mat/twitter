
class Player
  def hand
      # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts  "グー[0]\nチョキ[1]\nパー[2]"

    hand = gets.chomp
    unless hand == "0" ||hand == "1" || hand == "2"
            puts "無効な数字です"

          again =  self.hand
    else
            return hand.to_i
    end
    # def number?(player_hand)
    #   # 文字列の先頭(\A)から末尾(\z)までが「0」から「9」の文字か
    #   nil != (str =~ /\A[0-9]+\z/)
    # end
    # player_hand = gets.to_i

        # while player_hand !=0 && player_hand !=1 &&player_hand !=  do
    # while player_hand != 0 && player_hand !=1 && player_hand !=2 do
    #   puts "0~2の数字を入れてください"
    #   player_hand = gets.to_i
    # end
    #
    # return player_hand
  # p player_hand
  end
# player_hand = gets.to_i
end

class Enemy
  def hand
    enemy_hand = rand(3)
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    jankens = ["グー","チョキ","パー"]

    if (player_hand -  enemy_hand +3) % 3 == 0
      puts "あいこ"
    elsif (player_hand -  enemy_hand +3) % 3 == 2
      puts "勝ち"
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです"
      return false
    else
      puts "負け"
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです"
      return false
    end

    next_game = true
    while next_game
      game = self.pon(Player.new.hand, Enemy.new.hand)
      break
#class Jankenの中なのでJankenが使えないので代わりにselfを使う
# player.handもPlayer.new.handになる
# オブジェクト指向設計入門9に記載ありplayer.handとPlayer.new.handが同じ
    end
        # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
        # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
        # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    #puts "相手の手は#{janken[enemy_hand]}です。あなたの#{judge}です"
        # jankens[enemy_hand]

  end
end


player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので
# enemy_hand = [0,1,2]
# p enemy_hand.sample
