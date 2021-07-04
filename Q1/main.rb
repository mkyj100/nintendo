puts "戦うセット数を入力してください。"
set = gets.chomp()
ultra = []
enemy = [][]
enemy_tmp = []
set.times do |i|
    puts "必殺技回数を入力してください。"
    ultra[i] = gets.chomp()
    puts "敵のグループを入力してください。"
    enemy_tmp[i] = gets.chomp()
    enemy[i] = enemy_tmp[i].split
end
