puts "戦うセット数を入力してください。"
set = gets.chomp
ultra = []
fight_set = []
set.to_i.times do |i|
    puts "必殺技回数を入力してください。"
    ultra[i] = gets.chomp
    puts "敵のグループを入力してください。"
    fight_set[i] = gets.chomp.split
end

index = 0
result = []
kill = 0
fight_set.each do |enemy_grp|
    enemy_grp.each do |enemy,i|
        if enemy > 5
            if ultra[index] == 0
                if i < enemy_grp.length-1
                    puts "False " + kill.to_s
                    break;
                end
            else 
                ultra[index]-=1
                kill+=enemy
            end
        else
            kill+=enemy
        end
    end
    puts "True "+ kill.to_s
    index+=1
end