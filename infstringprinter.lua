math.randomseed(os.time())
local function shuffle(str)
   local letters = {}
   for letter in str:gmatch'.[\128-\191]*' do
      table.insert(letters, {letter = letter, rnd = math.random()})
   end
   table.sort(letters, function(a, b) return a.rnd < b.rnd end)
   for i, v in ipairs(letters) do letters[i] = v.letter end
   return table.concat(letters)
end


for i = 0, math.huge do
print(shuffle("ert4ngwe3g2gy2823g8tws8wetg23gtse67g7sd7fg6e7w6fgsdg77w6g6gesfwe6v6ewtsgefg34g7"))
end
