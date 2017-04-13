--پلاگین مهر نوشته شده توسط پارسا اسدی و تیم پارس
--هرگونه کپی برداری بدون ذکر منبع ممنوع
do

local function run(msg, matches)
	if matches[2] then
        text = URL.escape(matches[2])
	elseif not matches[2] then
	text = URL.escape(matches[3])
	end
	local url = 'http://api.monsterbot.ir/pic/?color=black&font=IranNastaliq&text='..text..'&bg=nast&fsize=156' -- باتشکر از تیم مانستر برای api
	local file1 = download_to_file(url,'mohr.png')
	local file = './bot/mohr.png'
    print('File downloaded to:', file1)
	    os.rename(file1, file)
        print('File moved to:', file)
	local pars = get_receiver(msg)
	send_photo(pars,file,ok_cb,false)
end
return {
    patterns = {
    "^[!/#](mohr) (.*)$",
    },
  run = run
}
end

-- |===============================================|
-- |  Copy Right By: PaRsTeAm                      |
-- |  PARS TEAM                                    |
-- |  Channel TEam : https://telegram.me/PaRs_TM   |
-- |  Site Team : ara-parsa.ir                     |
-- |  Phone number : 09140873291                   |
-- |===============================================|
