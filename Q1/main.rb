puts "戦うセット数を入力してください。"
set = gets.chomp
ultra = []
fight_set = []
set.to_i.times do |i|
    puts "必殺技回数を入力してください。"
    ultra[i] = gets.chomp.to_i
    puts "敵のグループを入力してください。"
    fight_set[i] = gets.chomp.split
end

index = 0
result = []
kill = 0
fight_set.each do |enemy_grp|
    enemy_grp.each_with_index do |enemy,i|
        enemy = enemy.to_i
        puts "enemy :" + enemy.to_s
        puts "i :" + i.to_s
        if enemy > 5
            if ultra[index] == 0
                if i < enemy_grp.length-1
                    puts "False " + kill.to_s
                    kill=0
                    index+=1
                    break;
                end
            else 
                puts "ultra[index]:"+ ultra[index].to_s
                puts ultra[index].class
                ultra[index]-=1
                kill+=enemy
            end
        else
            kill+=enemy
        end
        if i == enemy_grp.length-1
            puts "True "+ kill.to_s
            kill=0
        end
    end
    index+=1
end