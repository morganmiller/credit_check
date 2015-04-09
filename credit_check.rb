card_number = "5541808923795240"

@valid = false

#A sort of long way?

if (card_number[-2].to_i * 2).to_s.length == 2
  temp_two = (card_number[-2].to_i * 2).to_s
  card_number[-2] = (temp_two[0].to_i + temp_two[1].to_i).to_s
else
  card_number[-2] = (card_number[-2].to_i * 2).to_s
end

if (card_number[-4].to_i * 2).to_s.length == 2
  temp_four = (card_number[-4].to_i * 2).to_s
  card_number[-4] = (temp_four[0].to_i + temp_four[1].to_i).to_s
else
  card_number[-4] = (card_number[-4].to_i * 2).to_s
end

if (card_number[-6].to_i * 2).to_s.length == 2
  temp_six = (card_number[-6].to_i * 2).to_s
  card_number[-6] = (temp_six[0].to_i + temp_six[1].to_i).to_s
else
  card_number[-6] = (card_number[-6].to_i * 2).to_s
end

if (card_number[-8].to_i * 2).to_s.length == 2
  temp_eight = (card_number[-8].to_i * 2).to_s
  card_number[-8] = (temp_eight[0].to_i + temp_eight[1].to_i).to_s
else
  card_number[-8] = (card_number[-8].to_i * 2).to_s
end

if (card_number[-10].to_i * 2).to_s.length == 2
  temp_ten = (card_number[-10].to_i * 2).to_s
  card_number[-10] = (temp_ten[0].to_i + temp_ten[1].to_i).to_s
else
  card_number[-10] = (card_number[-10].to_i * 2).to_s
end

if (card_number[-12].to_i * 2).to_s.length == 2
  temp_twelve = (card_number[-12].to_i * 2).to_s
  card_number[-12] = (temp_twelve[0].to_i + temp_twelve[1].to_i).to_s
else
  card_number[-12] = (card_number[-12].to_i * 2).to_s
end

if (card_number[-14].to_i * 2).to_s.length == 2
  temp_fourteen = (card_number[-14].to_i * 2).to_s
  card_number[-14] = (temp_fourteen[0].to_i + temp_fourteen[1].to_i).to_s
else
  card_number[-14] = (card_number[-14].to_i * 2).to_s
end

if (card_number[-16].to_i * 2).to_s.length == 2
  temp_sixteen = (card_number[-16].to_i * 2).to_s
  card_number[-16] = (temp_sixteen[0].to_i + temp_sixteen[1].to_i).to_s
else
  card_number[-16] = (card_number[-16].to_i * 2).to_s
end

card_number.to_i

will_it_blend = card_number[0].to_i + card_number[1].to_i + card_number[2].to_i + card_number[3].to_i + card_number[4].to_i + card_number[5].to_i + card_number[6].to_i + card_number[7].to_i + card_number[8].to_i + card_number[9].to_i + card_number[10].to_i + card_number[11].to_i + card_number[12].to_i + card_number[13].to_i + card_number[14].to_i + card_number[15].to_i

if will_it_blend % 10 == 0
  @valid = true
  print "The number is valid!\n"
else
  print "The number is invalid!\n"
end

