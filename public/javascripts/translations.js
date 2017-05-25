I18n.translations || (I18n.translations = {});
I18n.translations["en"] = I18n.extend((I18n.translations["en"] || {}), {"activerecord":{"errors":{"messages":{"record_invalid":"Validation failed: %{errors}","restrict_dependent_destroy":{"has_many":"Cannot delete record because dependent %{record} exist","has_one":"Cannot delete record because a dependent %{record} exists","many":"Cannot delete record because dependent %{record} exist","one":"Cannot delete record because a dependent %{record} exists"}}}},"calendar":"Calendar","cellgroups":"Cell Groups","connect":"Connect","contact":"Contact Us","contacts":{"message":"Message","topic":"Topic","youremail":"Your Email","yourname":"Your Name"},"dailydevitions":"Daily Devotions","dailydevotion":"Daily Devotion","date":{"abbr_day_names":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"abbr_month_names":[null,"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"day_names":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"formats":{"default":"%Y-%m-%d","long":"%B %d, %Y","short":"%b %d"},"month_names":[null,"January","February","March","April","May","June","July","August","September","October","November","December"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"about 1 hour","other":"about %{count} hours"},"about_x_months":{"one":"about 1 month","other":"about %{count} months"},"about_x_years":{"one":"about 1 year","other":"about %{count} years"},"almost_x_years":{"one":"almost 1 year","other":"almost %{count} years"},"half_a_minute":"half a minute","less_than_x_minutes":{"one":"less than a minute","other":"less than %{count} minutes"},"less_than_x_seconds":{"one":"less than 1 second","other":"less than %{count} seconds"},"over_x_years":{"one":"over 1 year","other":"over %{count} years"},"x_days":{"one":"1 day","other":"%{count} days"},"x_minutes":{"one":"1 minute","other":"%{count} minutes"},"x_months":{"one":"1 month","other":"%{count} months"},"x_seconds":{"one":"1 second","other":"%{count} seconds"},"x_years":{"one":"1 year","other":"%{count} years"}},"prompts":{"day":"Day","hour":"Hour","minute":"Minute","month":"Month","second":"Seconds","year":"Year"}},"devise":{"confirmations":{"confirmed":"Your email address has been successfully confirmed.","send_instructions":"You will receive an email with instructions for how to confirm your email address in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive an email with instructions for how to confirm your email address in a few minutes."},"failure":{"already_authenticated":"You are already signed in.","inactive":"Your account is not activated yet.","invalid":"Invalid %{authentication_keys} or password.","last_attempt":"You have one more attempt before your account is locked.","locked":"Your account is locked.","not_found_in_database":"Invalid %{authentication_keys} or password.","timeout":"Your session expired. Please sign in again to continue.","unauthenticated":"You need to sign in or sign up before continuing.","unconfirmed":"You have to confirm your email address before continuing."},"mailer":{"confirmation_instructions":{"subject":"Confirmation instructions"},"email_changed":{"subject":"Email Changed"},"password_change":{"subject":"Password Changed"},"reset_password_instructions":{"subject":"Reset password instructions"},"unlock_instructions":{"subject":"Unlock instructions"}},"omniauth_callbacks":{"failure":"Could not authenticate you from %{kind} because \"%{reason}\".","success":"Successfully authenticated from %{kind} account."},"passwords":{"no_token":"You can't access this page without coming from a password reset email. If you do come from a password reset email, please make sure you used the full URL provided.","send_instructions":"You will receive an email with instructions on how to reset your password in a few minutes.","send_paranoid_instructions":"If your email address exists in our database, you will receive a password recovery link at your email address in a few minutes.","updated":"Your password has been changed successfully. You are now signed in.","updated_not_active":"Your password has been changed successfully."},"registrations":{"destroyed":"Bye! Your account has been successfully cancelled. We hope to see you again soon.","signed_up":"Welcome! You have signed up successfully.","signed_up_but_inactive":"You have signed up successfully. However, we could not sign you in because your account is not yet activated.","signed_up_but_locked":"You have signed up successfully. However, we could not sign you in because your account is locked.","signed_up_but_unconfirmed":"A message with a confirmation link has been sent to your email address. Please follow the link to activate your account.","update_needs_confirmation":"You updated your account successfully, but we need to verify your new email address. Please check your email and follow the confirm link to confirm your new email address.","updated":"Your account has been updated successfully."},"sessions":{"already_signed_out":"Signed out successfully.","signed_in":"Signed in successfully.","signed_out":"Signed out successfully."},"unlocks":{"send_instructions":"You will receive an email with instructions for how to unlock your account in a few minutes.","send_paranoid_instructions":"If your account exists, you will receive an email with instructions for how to unlock it in a few minutes.","unlocked":"Your account has been unlocked successfully. Please sign in to continue."}},"errors":{"connection_refused":"Oops! Failed to connect to the Web Console middleware.\nPlease make sure a rails development server is running.\n","format":"%{attribute} %{message}","messages":{"accepted":"must be accepted","already_confirmed":"was already confirmed, please try signing in","blank":"can't be blank","carrierwave_download_error":"could not be downloaded","carrierwave_integrity_error":"is not of an allowed file type","carrierwave_processing_error":"failed to be processed","confirmation":"doesn't match %{attribute}","confirmation_period_expired":"needs to be confirmed within %{period}, please request a new one","empty":"can't be empty","equal_to":"must be equal to %{count}","even":"must be even","exclusion":"is reserved","expired":"has expired, please request a new one","extension_black_list_error":"You are not allowed to upload %{extension} files, prohibited types: %{prohibited_types}","extension_white_list_error":"You are not allowed to upload %{extension} files, allowed types: %{allowed_types}","greater_than":"must be greater than %{count}","greater_than_or_equal_to":"must be greater than or equal to %{count}","inclusion":"is not included in the list","invalid":"is invalid","less_than":"must be less than %{count}","less_than_or_equal_to":"must be less than or equal to %{count}","mime_types_processing_error":"Failed to process file with MIME::Types, maybe not valid content-type? Original Error: %{e}","mini_magick_processing_error":"Failed to manipulate with MiniMagick, maybe it is not an image? Original Error: %{e}","model_invalid":"Validation failed: %{errors}","not_a_number":"is not a number","not_an_integer":"must be an integer","not_found":"not found","not_locked":"was not locked","not_saved":{"one":"1 error prohibited this %{resource} from being saved:","other":"%{count} errors prohibited this %{resource} from being saved:"},"odd":"must be odd","other_than":"must be other than %{count}","present":"must be blank","required":"must exist","rmagick_processing_error":"Failed to manipulate with rmagick, maybe it is not an image? Original Error: %{e}","taken":"has already been taken","too_long":{"one":"is too long (maximum is 1 character)","other":"is too long (maximum is %{count} characters)"},"too_short":{"one":"is too short (minimum is 1 character)","other":"is too short (minimum is %{count} characters)"},"wrong_length":{"one":"is the wrong length (should be 1 character)","other":"is the wrong length (should be %{count} characters)"}},"template":{"body":"There were problems with the following fields:","header":{"one":"1 error prohibited this %{model} from being saved","other":"%{count} errors prohibited this %{model} from being saved"}},"unacceptable_request":"A supported version is expected in the Accept header.\n","unavailable_session":"Session %{id} is is no longer available in memory.\n\nIf you happen to run on a multi-process server (like Unicorn or Puma) the process\nthis request hit doesn't store %{id} in memory. Consider turning the number of\nprocesses/workers to one (1) or using a different server in development.\n"},"events":"News Updates","eventsandconferences":"Events \u0026 Conferences","flash":{"actions":{"create":{"notice":"%{resource_name} was successfully created."},"destroy":{"alert":"%{resource_name} could not be destroyed.","notice":"%{resource_name} was successfully destroyed."},"update":{"notice":"%{resource_name} was successfully updated."}}},"give":"Give","givingsubtitle":"Your gift helps further the impact of the ministries of NLCC","givingtitle1":"We love because God first loved us","givingtitle2":"We give because God first gave","hello":"Hello world","helpers":{"select":{"prompt":"Please select"},"submit":{"create":"Create %{model}","submit":"Save %{model}","update":"Update %{model}"}},"irvine":"Irvine","irvineministry":"Irvine","laverne":"La Verne","laverneministry":"La Verne","loading":"Loading ...","loadmore":"Load More","maintaining":"The website is under construction","maintainingmessage":"The website is under construction","media":"Teaching","mediaaudio":"Audio Recordings","mediavideo":"Video Recordings","menu":{"about":"About NLCC","languages":{"lang":"ENGLISH"}},"ministries":"Ministries","ministryequip":"Equipping","ministrymission":"Mission","ministryprayer":"Prayer","ministryworship":"Worshio","more":{"about":"More about NLCC"},"moreevents":"More Events","nlcc":"New Life Chistian Center","number":{"currency":{"format":{"delimiter":",","format":"%u%n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"Billion","million":"Million","quadrillion":"Quadrillion","thousand":"Thousand","trillion":"Trillion","unit":""}},"format":{"delimiter":"","precision":3,"significant":true,"strip_insignificant_zeros":true},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"onlinegiving":"Online Giving","pastoralteam":"Pastoral Team","rooted":"Connect","serviceinfo":"Service Time \u0026 Address","simple_form":{"error_notification":{"default_message":"Please review the problems below:"},"no":"No","required":{"mark":"*","text":"required"},"yes":"Yes"},"social_share_button":{"delicious":"Delicious","douban":"Douban","email":"Email","facebook":"Facebook","google_bookmark":"Google Bookmark","google_plus":"Google+","hacker_news":"Hacker News","linkedin":"Linkedin","odnoklassniki":"Odnoklassniki","pinterest":"Pinterest","qq":"QQ","reddit":"Reddit","share_to":"Share to %{name}","telegram":"Telegram","tumblr":"Tumblr","twitter":"Twitter","vkontakte":"Vkontakte","wechat":"WeChat","wechat_footer":"Open your WeChat, click \"Discover\" button then click the \"Scan QR Code\" menu.","weibo":"Sina Weibo","xing":"Xing"},"sundayschool":"Sunday School","support":{"array":{"last_word_connector":", and ","two_words_connector":" and ","words_connector":", "}},"time":{"am":"am","formats":{"default":"%a, %d %b %Y %H:%M:%S %z","long":"%B %d, %Y %H:%M","short":"%d %b %H:%M"},"pm":"pm"},"who":"Who We Are","will_paginate":{"next_label":"\u003cspan aria-hidden=\"true\"\u003e»\u003c/span\u003e","page_entries_info":{"multi_page":"Displaying %{model} %{from} - %{to} of %{count} in total","multi_page_html":"Displaying %{model} \u003cb\u003e%{from}\u0026nbsp;-\u0026nbsp;%{to}\u003c/b\u003e of \u003cb\u003e%{count}\u003c/b\u003e in total","single_page":{"one":"Displaying 1 %{model}","other":"Displaying all %{count} %{model}","zero":"No %{model} found"},"single_page_html":{"one":"Displaying \u003cb\u003e1\u003c/b\u003e %{model}","other":"Displaying \u003cb\u003eall\u0026nbsp;%{count}\u003c/b\u003e %{model}","zero":"No %{model} found"}},"page_gap":"\u0026hellip;","previous_label":"\u003cspan aria-hidden=\"true\"\u003e«\u003c/span\u003e"},"yg":"Young Generation"});
I18n.translations["fr"] = I18n.extend((I18n.translations["fr"] || {}), {"social_share_button":{"delicious":"Delicious","douban":"Douban","email":"Email","facebook":"Facebook","google_bookmark":"Google Bookmark","google_plus":"Google+","hacker_news":"Hacker News","linkedin":"Linkedin","odnoklassniki":"Odnoklassniki","pinterest":"Pinterest","qq":"Qzone","reddit":"Reddit","share_to":"Partager sur %{name}","telegram":"Telegram","tumblr":"Tumblr","twitter":"Twitter","vkontakte":"Vkontakte","wechat":"WeChat","wechat_footer":"Open your WeChat, click \"Discover\" button then click the \"Scan QR Code\" menu.","weibo":"Sina Weibo","xing":"Xing"}});
I18n.translations["zh-CN"] = I18n.extend((I18n.translations["zh-CN"] || {}), {"social_share_button":{"delicious":"Delicious","douban":"豆瓣","email":"Email","facebook":"Facebook","google_bookmark":"Google 收藏","google_plus":"Google+","hacker_news":"Hacker News","linkedin":"Linkedin","odnoklassniki":"Odnoklassniki","pinterest":"Pinterest","qq":"QQ 空间","reddit":"Reddit","share_to":"分享到 %{name}","telegram":"Telegram","tumblr":"Tumblr","twitter":"Twitter","vkontakte":"Vkontakte","wechat":"微信","wechat_footer":"打开微信，点击底部的 “发现”，\u003cbr/\u003e 使用 “扫一扫” 即可将网页分享至朋友圈。","weibo":"新浪微博","xing":"Xing"}});
I18n.translations["zh-TW"] = I18n.extend((I18n.translations["zh-TW"] || {}), {"social_share_button":{"delicious":"Delicious","douban":"豆瓣","email":"Email","facebook":"Facebook","google_bookmark":"Google 收藏","google_plus":"Google+","hacker_news":"Hacker News","linkedin":"Linkedin","odnoklassniki":"Odnoklassniki","pinterest":"Pinterest","qq":"QQ 空間","reddit":"Reddit","share_to":"分享到 %{name}","telegram":"Telegram","tumblr":"Tumblr","twitter":"Twitter","vkontakte":"Vkontakte","wechat":"微信","wechat_footer":"打開微信，點擊底部的 “發現”，\u003cbr/\u003e 使用 “掃一掃” 即可將網頁分享至朋友圈。","weibo":"新浪微博","xing":"Xing"}});
I18n.translations["cn"] = I18n.extend((I18n.translations["cn"] || {}), {"activerecord":{"errors":{"messages":{"record_invalid":"验证失败: %{errors}","restrict_dependent_destroy":{"has_many":"由于 %{record} 需要此记录，所以无法移除记录","has_one":"由于 %{record} 需要此记录，所以无法移除记录"}}}},"calendar":"教会行事历","cellgroups":"细胞小组","connect":"寻找小组","contact":"联络我们","contacts":{"message":"你的讯息","topic":"选择主题","youremail":"你的 Email","yourname":"你的名字"},"dailydevitions":"每日灵修小品","dailydevotion":"每日灵修","date":{"abbr_day_names":["周日","周一","周二","周三","周四","周五","周六"],"abbr_month_names":[null,"1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"day_names":["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],"formats":{"default":"%Y-%m-%d","long":"%Y年%b%d日","short":"%b%d日"},"month_names":[null,"一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"大约一小时","other":"大约 %{count} 小时"},"about_x_months":{"one":"大约一个月","other":"大约 %{count} 个月"},"about_x_years":{"one":"大约一年","other":"大约 %{count} 年"},"almost_x_years":{"one":"接近一年","other":"接近 %{count} 年"},"half_a_minute":"半分钟","less_than_x_minutes":{"one":"不到一分钟","other":"不到 %{count} 分钟"},"less_than_x_seconds":{"one":"不到一秒","other":"不到 %{count} 秒"},"over_x_years":{"one":"一年多","other":"%{count} 年多"},"x_days":{"one":"一天","other":"%{count} 天"},"x_minutes":{"one":"一分钟","other":"%{count} 分钟"},"x_months":{"one":"一个月","other":"%{count} 个月"},"x_seconds":{"one":"一秒","other":"%{count} 秒"}},"prompts":{"day":"日","hour":"时","minute":"分","month":"月","second":"秒","year":"年"}},"errors":{"format":"%{attribute}%{message}","messages":{"accepted":"必须是可被接受的","blank":"不能为空字符","confirmation":"与确认值不匹配","empty":"不能留空","equal_to":"必须等于 %{count}","even":"必须为双数","exclusion":"是保留关键字","greater_than":"必须大于 %{count}","greater_than_or_equal_to":"必须大于或等于 %{count}","inclusion":"不包含于列表中","invalid":"是无效的","less_than":"必须小于 %{count}","less_than_or_equal_to":"必须小于或等于 %{count}","model_invalid":"验证失败: %{errors}","not_a_number":"不是数字","not_an_integer":"必须是整数","odd":"必须为单数","other_than":"长度非法（不可为 %{count} 个字符","present":"必须是空白","required":"必须存在","taken":"已经被使用","too_long":{"one":"过长（最长为一个字符）","other":"过长（最长为 %{count} 个字符）"},"too_short":{"one":"过短（最短为一个字符）","other":"过短（最短为 %{count} 个字符）"},"wrong_length":{"one":"长度非法（必须为一个字符）","other":"长度非法（必须为 %{count} 个字符）"}},"template":{"body":"如下字段出现错误：","header":{"one":"有 1 个错误发生导致「%{model}」无法被保存。","other":"有 %{count} 个错误发生导致「%{model}」无法被保存。"}}},"events":"教会活动","eventsandconferences":"最新活动与特会消息","give":"线上奉献","givingsubtitle":"你可以成就不一样的事, 您的奉献将支持教会的各项事工，进而改变人的生命","givingtitle1":"我们爱，因为神先爱我们","givingtitle2":"我们给，因为神先给予我们","helpers":{"select":{"prompt":"请选择"},"submit":{"create":"新增%{model}","submit":"储存%{model}","update":"更新%{model}"}},"irvine":"尔湾","irvineministry":"尔湾牧区","laverne":"拉文","laverneministry":"拉文牧区","loading":"载入中 ...","loadmore":"载入更多","maintaining":"网页准备中","maintainingmessage":"网页建构中，敬请期待。。。","media":"讯息教导","mediaaudio":"主日录音","mediavideo":"主日录影","menu":{"languages":{"lang":"简体中文"}},"ministries":"教会事工","ministryequip":"装备事工","ministrymission":"宣教事工","ministryprayer":"祷告事工","ministryworship":"敬拜事工","moreevents":"更 多 活 动 讯 息","nlcc":"橙县 新生命灵粮堂","number":{"currency":{"format":{"delimiter":",","format":"%u %n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"CN¥"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"十亿","million":"百万","quadrillion":"千兆","thousand":"千","trillion":"兆","unit":""}},"format":{"delimiter":"","precision":1,"significant":false,"strip_insignificant_zeros":false},"storage_units":{"format":"%n %u","units":{"byte":{"one":"Byte","other":"Bytes"},"gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"onlinegiving":"线上奉献","pastoralteam":"牧者团队","rooted":"寻找小组","serviceinfo":"主日时间 \u0026 地点","social_share_button":{"douban":"豆瓣","facebook":"Facebook","qq":"QQ空间","share_to":"分享到%{name}","twitter":"Twitter","weibo":"新浪微博"},"sundayschool":"儿童主日","support":{"array":{"last_word_connector":", 和 ","two_words_connector":" 和 ","words_connector":", "}},"time":{"am":"上午","formats":{"default":"%Y年%b%d日 %A %H:%M:%S %Z","long":"%Y年%b%d日 %H:%M","short":"%b%d日 %H:%M"},"pm":"下午"},"who":"关于我们","will_paginate":{"next_label":"\u003cspan aria-hidden=\"true\"\u003e»\u003c/span\u003e","page_gap":"\u0026hellip;","previous_label":"\u003cspan aria-hidden=\"true\"\u003e«\u003c/span\u003e"},"yg":"青年牧区"});
I18n.translations["zh"] = I18n.extend((I18n.translations["zh"] || {}), {"activerecord":{"errors":{"messages":{"record_invalid":"校驗失敗: %{errors}","restrict_dependent_destroy":{"has_many":"由於 %{record} 需要此記錄，所以無法移除記錄","has_one":"由於 %{record} 需要此記錄，所以無法移除記錄"}}}},"calendar":"教會行事曆","cellgroups":"細胞小組","connect":"與我們連結","contact":"聯絡我們","contacts":{"message":"你的訊息","topic":"選擇主題","youremail":"電子信箱","yourname":"你的名字"},"dailydevitions":"每日靈修小品","dailydevotion":"每日靈修","date":{"abbr_day_names":["周日","周一","周二","周三","周四","周五","周六"],"abbr_month_names":[null,"1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月"],"day_names":["星期日","星期一","星期二","星期三","星期四","星期五","星期六"],"formats":{"default":"%Y-%m-%d","long":"%Y年%b%d日","short":"%b%d日"},"month_names":[null,"一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],"order":["year","month","day"]},"datetime":{"distance_in_words":{"about_x_hours":{"one":"大約一小時","other":"大約 %{count} 小時"},"about_x_months":{"one":"大約一個月","other":"大約 %{count} 個月"},"about_x_years":{"one":"大約一年","other":"大約 %{count} 年"},"almost_x_years":{"one":"接近一年","other":"接近 %{count} 年"},"half_a_minute":"半分鐘","less_than_x_minutes":{"one":"不到一分鐘","other":"不到 %{count} 分鐘"},"less_than_x_seconds":{"one":"不到一秒","other":"不到 %{count} 秒"},"over_x_years":{"one":"一年多","other":"%{count} 年多"},"x_days":{"one":"一天","other":"%{count} 天"},"x_minutes":{"one":"一分鐘","other":"%{count} 分鐘"},"x_months":{"one":"一個月","other":"%{count} 個月"},"x_seconds":{"one":"一秒","other":"%{count} 秒"}},"prompts":{"day":"日","hour":"時","minute":"分","month":"月","second":"秒","year":"年"}},"errors":{"format":"%{attribute} %{message}","messages":{"accepted":"必須是可被接受的","blank":"不能為空白","confirmation":"兩次輸入須一致","empty":"不能留空","equal_to":"必須等於 %{count}","even":"必須是偶數","exclusion":"是被保留的關鍵字","greater_than":"必須大於 %{count}","greater_than_or_equal_to":"必須大於或等於 %{count}","inclusion":"沒有包含在列表中","invalid":"是無效的","less_than":"必須小於 %{count}","less_than_or_equal_to":"必須小於或等於 %{count}","model_invalid":"校驗失敗: %{errors}","not_a_number":"不是數字","not_an_integer":"必須是整數","odd":"必須是奇數","other_than":"不可以是 %{count} 個字","present":"必須是空白","required":"必須存在","taken":"已經被使用","too_long":{"one":"過長（最長是一個字）","other":"過長（最長是 %{count} 個字）"},"too_short":{"one":"過短（最短是一個字）","other":"過短（最短是 %{count} 個字）"},"wrong_length":{"one":"字數錯誤 (必須是一個字)","other":"字數錯誤 (必須是 %{count} 個字)"}},"template":{"body":"以下欄位發生問題：","header":{"one":"有 1 個錯誤發生使得「%{model}」無法被儲存。","other":"有 %{count} 個錯誤發生使得「%{model}」無法被儲存。"}}},"event":{"category":{"activities":"教會活動","cellgroups":"小組資訊","equipping":"裝備課程","sunday_service":"主日資訊"}},"events":"教會活動","eventsandconferences":"最新活動與特會消息","give":"線上奉獻","givingsubtitle":"你可以成就不一樣的事, 您的奉獻將支持教會的各項事工，進而改變人的生命","givingtitle1":"我們愛，因為神先愛我們","givingtitle2":"我們給，因為神先給予我們","hello":"Hello world","helpers":{"select":{"prompt":"請選擇"},"submit":{"create":"新增%{model}","submit":"儲存%{model}","update":"更新%{model}"}},"irvine":"爾灣","irvineministry":"爾灣牧區","laverne":"拉文","laverneministry":"拉文牧區","loading":"載入中 ...","loadmore":"載入更多","maintaining":"網頁準備中","maintainingmessage":"網頁建構中，敬請期待。。。","media":"訊息教導","mediaaudio":"主日錄音","mediavideo":"主日錄影","menu":{"about":"關於我們","languages":{"lang":"繁體中文"}},"ministries":"教會事工","ministryequip":"裝備事工","ministrymission":"宣教事工","ministryprayer":"禱告事工","ministryworship":"敬拜事工","more":{"about":"更 多 關 於 我 們"},"moreevents":"更 多 活 動 訊 息","nlcc":"橙縣 新生命靈糧堂","number":{"currency":{"format":{"delimiter":",","format":"%u %n","precision":2,"separator":".","significant":false,"strip_insignificant_zeros":false,"unit":"NT$"}},"format":{"delimiter":",","precision":3,"separator":".","significant":false,"strip_insignificant_zeros":false},"human":{"decimal_units":{"format":"%n %u","units":{"billion":"十億","million":"百萬","quadrillion":"千兆","thousand":"千","trillion":"兆","unit":""}},"format":{"delimiter":"","precision":1,"significant":false,"strip_insignificant_zeros":false},"storage_units":{"format":"%n %u","units":{"byte":{"one":"位元組","other":"位元組"},"gb":"GB","kb":"KB","mb":"MB","tb":"TB"}}},"percentage":{"format":{"delimiter":"","format":"%n%"}},"precision":{"format":{"delimiter":""}}},"onlinegiving":"線上奉獻","pastoralteam":"牧者團隊","rooted":"尋找小組","serviceinfo":"主日時間 \u0026 地點","social_share_button":{"douban":"豆瓣","facebook":"Facebook","qq":"QQ空间","share_to":"分享到%{name}","twitter":"Twitter","weibo":"新浪微博"},"sundayschool":"兒童主日","support":{"array":{"last_word_connector":", 和 ","two_words_connector":" 和 ","words_connector":", "}},"time":{"am":"上午","formats":{"default":"%Y年%b%d日 %A %H:%M:%S %Z","long":"%Y年%b%d日 %H:%M","short":"%b%d日 %H:%M"},"pm":"下午"},"who":"關於我們","will_paginate":{"next_label":"\u003cspan aria-hidden=\"true\"\u003e»\u003c/span\u003e","page_gap":"\u0026hellip;","previous_label":"\u003cspan aria-hidden=\"true\"\u003e«\u003c/span\u003e"},"yg":"青年牧區"});
