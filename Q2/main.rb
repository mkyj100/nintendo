puts "ゲーム数を入力してください。"
n = gets.chomp.to_i # 問題セット数
n.times do |set_index|
    puts "質問数を入力してください。"
    k = gets.chomp.to_i # 質問数
    question = []
    allNumber = [] # number配列
    @result = []
    k.times do |k_index|
        puts "<Question> <Bulls> <Cows>を入力してください。"
        question[k_index] = gets.chomp.split
        allNumber[k_index] = question[k_index][0].chars
    end
    
    answerHash = Hash.new
    10.times do |number|
        # 全体検索
        allNumber.each_with_index do |item,index|
           
            # 数字位置検索
            4.times do |position|
                 # データ確認
                 puts "number:"+number.to_s
                 puts "position:"+item[position].to_s
                 if number == item[position].to_i
                    puts "answer:"+answerHash[number.to_s+"_"+position.to_s].to_s
                    if question[index][1].to_i > 0  && answerHash[number.to_s+"_"+position.to_s] != false
                        puts "true"
                        puts "number:"+number.to_s
                        answerHash[number.to_s+"_"+position.to_s] = true
                    elsif question[index][1].to_i == 0 && question[index][2].to_i > 0
                        puts "false"
                        puts "number:"+number.to_s
                        answerHash[number.to_s+"_"+position.to_s] = false
                    end
                end
            end
        end
    end

    puts answerHash
    keysList = answerHash.keys
    keysList.each do |key|
        if answerHash[key] == true
            answer = key.split("_")
            @result[answer[1].to_i] = answer[0].to_i
        end
    end
    allNumber.each_with_index do |allNumber_item,allNumber_index|
        @result.each_with_index do |result_item,result_index|
            if result_item != nil
                result_item
            end
        end
    end
    # 10.times do |number|
    #     # 全体検索
    #     allNumber.each_with_index do |item,index|
           
    #         # 数字位置検索
    #         4.times do |position|
    #              # データ確認
    #              puts "number:"+number.to_s
    #              puts "position:"+item[position].to_s
    #              if number == item[position].to_i
    #                 puts "answer:"+answer[number.to_s+"_"+position.to_s].to_s
    #                 if question[index][1].to_i > 0 && question[index][2].to_i == 0 && answer[number.to_s+"_"+position.to_s] != false
    #                     puts "true"
    #                     puts "number:"+number.to_s
    #                     answer[number.to_s+"_"+position.to_s] = true
    #                 elsif question[index][1].to_i == 0 && question[index][2].to_i > 0
    #                     puts "false"
    #                     puts "number:"+number.to_s
    #                     answer[number.to_s+"_"+position.to_s] = false
    #                 end
    #             end
    #         end
    #     end
    # end
end