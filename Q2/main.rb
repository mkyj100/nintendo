puts "ゲーム数を入力してください。"
n = gets.chomp.to_i # 問題セット数
number = new.Hash # number配列
10.times do |i|
    number[i] = 0
end

set.times do |set_index|
    puts "質問数を入力してください。"
    k = gets.chomp.to_i # 質問数
    question = []
    k.times do |k_index|
        puts "<Question> <Bulls> <Cows>を入力してください。"
        question[k_index] = gets.chomp.split
    end
end