
 require "csv"

 puts "1(新規でメモを作成) 2(既存のメモ編集する)"

 memo_type = gets.to_i

if memo_type == 1

  puts "拡張子を除いたファイル名を入力してください"

  memo_name = gets.chomp

  puts "メモしたい内容を記述してください。"
  puts "完了したらCtrl+Dを押します。"

  input = readlines

  CSV.open("#{memo_name}.csv","w") do |csv|
    csv << input
  end

 elsif memo_type == 2

  puts "拡張子を除いたファイル名を入力してください。"

  memo_name = gets.chomp

  puts "メモしたい内容を記述してください。"
  puts "完了したらCtrl+Dを押します。"

  input = readlines

  CSV.open("#{memo_name}.csv","a") do |csv|
    csv << input
  end

else
   puts "1 or 2　選択し直して下さい"
end

