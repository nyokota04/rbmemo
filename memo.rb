require "csv"

puts "--------------------------------------------------------"
puts "メモを作成します"
puts "数字を選択してください"
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp.to_i


 if memo_type == 1
  puts "--------------------------------------------------------"
  puts "新規でメモを作成します"
  puts "拡張子を除いたファイル名を記入してください"
      fail_name_new = gets.chomp.to_s
  puts "メモを入力してください"
  puts "終了したらCtrl+Dを押してください"
      fail_name_new_memo = $stdin.read.split("\n")
      CSV.open("#{fail_name_new}.csv" , "w") do |csv|
      csv << ["#{fail_name_new_memo}"]
      end

elsif memo_type == 2
  puts "--------------------------------------------------------"
  puts "既存のメモを編集します"
  puts "拡張子を除いたファイル名を記入してください"
     fail_name_com = gets.chomp
  puts "メモを入力してください"
  puts "終了したらCtrl+Dを押してください"
      fail_name_con_memo = $stdin.read.split("\n")
  CSV.open("#{fail_name_com}.csv" , "a") do |csv|
     csv << ["#{fail_name_con_memo}"]
  end

else
  puts "--------------------------------------------------------"
  puts "再度やりなおしてください"
end


