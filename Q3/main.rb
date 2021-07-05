puts "テストパターン数を入力してください。"
set = gets.chomp.to_i
set.times do |i|
    puts "人数を入力してください。"
    map = gets.chomp.to_i
    map_date = []
    map.times do |j|
        puts "日付を入力してください。"
        map_date[j] = gets.chomp.split
    end
    puts map.inspect
    puts map_date.inspect
end