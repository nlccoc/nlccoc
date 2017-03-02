namespace :db do
  
  desc 'Drop, create, migrate, seed and populate sample data'
  task prepare: [:drop, :create, :migrate, :seed, :populate_sample_data] do
    puts 'Ready to go!'
  end
  
  task populate_sample_data: :environment do
    
    Event.create!([
      {title: "奠定紮實的信仰基礎", desc: "%3Cp%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%u4FE1%u5F92%u5EFA%u9020%u88DD%u5099%u8AB2%u7A0B%u7CFB%u5217%u5E6B%u52A9%u6211%u5011%u8A8D%u8B58%u57FA%u7763%u5F92%u7684%u57FA%u672C%u4FE1%u4EF0%uFF0C%u5960%u5B9A%u6211%u5011%u7684%u4FE1%u4EF0%u57FA%u790E%u3002%20%u672C%u6B21301%u8AB2%u7A0B%u70BA12%u9031%uFF0C%u7531%u88DD%u5099%u8AB2%u7A0B%u4E8B%u5DE5%u8CA0%u8CAC%u4EBAJerry%20Yen%u5F1F%u5144%u6388%u8AB2%u3002%u4E0A%u8AB2%u6642%u9593%u70BA8/7%u8D77%u81F310/23%u6B62%uFF0C%u6BCF%u9031%u65E5%u4E0A%u53489%3A50%7E10%3A50%u3002%u5730%u9EDE%u70BAJ%u6559%u5BA4%u3002%u6B61%u8FCE%u521D%u4FE1%u5F92%u53C3%u8207%uFF0C%u4E5F%u6B61%u8FCE%u8CC7%u6DF1%u57FA%u7763%u5F92%u518D%u6B21%u5BE9%u8996%u60A8%u7684%u4FE1%u4EF0%u751F%3C/span%3E%3C/p%3E%3Cp%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%u4FE1%u5F92%u5EFA%u9020%u88DD%u5099%u8AB2%u7A0B%u7CFB%u5217%u5E6B%u52A9%u6211%u5011%u8A8D%u8B58%u57FA%u7763%u5F92%u7684%u57FA%u672C%u4FE1%u4EF0%uFF0C%u5960%u5B9A%u6211%u5011%u7684%u4FE1%u4EF0%u57FA%u790E%u3002%20%u672C%u6B21301%u8AB2%u7A0B%u70BA12%u9031%uFF0C%u7531%u88DD%u5099%u8AB2%u7A0B%u4E8B%u5DE5%u8CA0%u8CAC%u4EBAJerry%20Yen%u5F1F%u5144%u6388%u8AB2%u3002%u4E0A%u8AB2%u6642%u9593%u70BA8/7%u8D77%u81F310/23%u6B62%uFF0C%u6BCF%u9031%u65E5%u4E0A%u53489%3A50%7E10%3A50%u3002%u5730%u9EDE%u70BAJ%u6559%u5BA4%u3002%u6B61%u8FCE%u521D%u4FE1%u5F92%u53C3%u8207%uFF0C%u4E5F%u6B61%u8FCE%u8CC7%u6DF1%u57FA%u7763%u5F92%u518D%u6B21%u5BE9%u8996%u60A8%u7684%u4FE1%u4EF0%u751F%3C/span%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%3Cbr%3E%3C/span%3E%3Cbr%3E%3C/p%3E", location: nil, short_desc: "信徒建造裝備課程系列幫助我們認識基督徒的基本信仰，奠定我們的信仰基礎。 本次301課程為12週，由裝備課程事工負責人Jerry Yen弟兄授課。上課時間為8/7起至10/23止，每週日上午9:50~10:50。地點為J教室。歡迎初信徒參與，也歡迎資深基督徒再次審視您的信仰生", datetime: "2016-12-18 09:00:00", event_period: 50},
      {title: "一秒的Yes 一輩子的承諾", desc: "%3Cp%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%u5168%u7A0B%u4F7F%u7528%u5168%u7F8E%u6700%u53D7%u6B61%u8FCE%u7684%u5A5A%u59FB%u5C08%u5BB6%u53F2%u845B%u5229%u535A%u58EB%u6240%u7DE8%u5BEB%u7684%u6559%u6750%uFF0C%u52A0%u4E0A%u99AC%u978D%u5CF0%u6559%u6703%u88FD%u4F5C%u7684%u5F71%u7247%uFF0C%u5E7D%u9ED8%u5BE6%u7528%u3001%u4EE5%u8056%u7D93%u771F%u7406%u70BA%u57FA%u790E%u3002%u516D%u5802%u8AB2%uFF0C%u627E%u51FA%u4F60%u7684%u6700%u4F73%u4F34%u4FB6%u76F8%u8655%u4E4B%u9053%uFF01%3C/span%3E%3C/p%3E%3Cp%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%u5168%u7A0B%u4F7F%u7528%u5168%u7F8E%u6700%u53D7%u6B61%u8FCE%u7684%u5A5A%u59FB%u5C08%u5BB6%u53F2%u845B%u5229%u535A%u58EB%u6240%u7DE8%u5BEB%u7684%u6559%u6750%uFF0C%u52A0%u4E0A%u99AC%u978D%u5CF0%u6559%u6703%u88FD%u4F5C%u7684%u5F71%u7247%uFF0C%u5E7D%u9ED8%u5BE6%u7528%u3001%u4EE5%u8056%u7D93%u771F%u7406%u70BA%u57FA%u790E%u3002%u516D%u5802%u8AB2%uFF0C%u627E%u51FA%u4F60%u7684%u6700%u4F73%u4F34%u4FB6%u76F8%u8655%u4E4B%u9053%uFF01%3C/span%3E%3C/p%3E%3Cp%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%3Cbr%3E%3C/span%3E%3Cspan%20style%3D%22color%3A%20rgb%28102%2C%20102%2C%20102%29%3B%20font-family%3A%20%26quot%3BOpen%20Sans%26quot%3B%2C%20%26quot%3BHelvetica%20Neue%26quot%3B%2C%20xingothic-tc%2C%20xingothic-sc%2C%20Helvetica%2C%20Arial%2C%20sans-serif%3B%20font-size%3A%2013px%3B%22%3E%3Cbr%3E%3C/span%3E%3Cbr%3E%3C/p%3E", location: nil, short_desc: "全程使用全美最受歡迎的婚姻專家史葛利博士所編寫的教材，加上馬鞍峰教會製作的影片，幽默實用、以聖經真理為基礎。六堂課，找出你的最佳伴侶相處之道！", datetime: "2016-12-18 03:00:00", event_period: 50},
      {title: "如何幫助孩子聽話及養成好習慣", desc: "%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u65B0%u5E74%u65B0%u5B78%u7FD2%uFF0C%u570B%u969B%u611B%u9130%u5354%u6703%u518D%u5EA6%u9080%u8ACB%u4E86%u5927%u53D7%u6B61%u8FCE%u7684%u738B%u7948%u5E2B%u6BCD%u4E3B%u6301%u89AA%u5B50%u8B1B%u5802%uFF1A%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u7B2C%u4E00%u5802%uFF1A%201/21%20%28%u516D%29%2010am-12pm%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u984C%u76EE%uFF1A%u5982%u4F55%u5E6B%u52A9%u5B69%u5B50%u807D%u8A71%u53CA%u990A%u6210%u597D%u7FD2%u6163%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u8B1B%u5802%u4E8C%uFF1A2/18%20%28%u516D%29%2010am-12pm%26nbsp%3B%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u984C%u76EE%uFF1A%u5982%u4F55%u5E6B%u52A9%u5B69%u5B50%u7368%u7ACB%u8CA0%u8CAC%u4EFB%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u3010%u5831%u540D%u65B9%u5F0F%u3011%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%26nbsp%3B%26nbsp%3B%20%u27A4%20%u4E00%u6B21%u5831%u540D%u5169%u5802%uFF1A30%u5143%uFF0C%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3B%20%u9084%u9001%u4E00%u500B%u611B%u9130%u74B0%u4FDD%u8CFC%u7269%u888B%u5594%uFF01%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%26nbsp%3B%26nbsp%3B%20%u27A4%20%u5831%u540D%u55AE%u5802%uFF1A%u4E00%u580215%u5143%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%26nbsp%3B%26nbsp%3B%20%u27A4%20%u7B2C%u4E00%u5802%u5831%u540D%u622A%u6B62%u65E5%uFF1A1/19/2017%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u4EE5%u4E0A%u50F9%u683C%u7686%u542B%u8AB2%u5F8C%u8336%u9EDE%u8207%u514D%u8CBB%u5E7C%u5152%u7167%u9867%u5594%uFF01%u8ACB%u5F1F%u5144%u59CA%u59B9%u9810%u5099%u5FC3%u5EE3%u9080%u793E%u5340%u9130%u91CC%u4E00%u8D77%u53C3%u52A0%u3001%u4E00%u8D77%u5B78%u7FD2%u3002%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%u806F%u7D61%u65B9%u5F0F%3A%20%26nbsp%3B%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p2%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20color%3A%20rgb%280%2C%200%2C%20238%29%3B%20-webkit-text-stroke-color%3A%20rgb%280%2C%200%2C%20238%29%3B%22%3E%3Cspan%20class%3D%22s2%22%20style%3D%22font-kerning%3A%20none%3B%20color%3A%20rgb%280%2C%200%2C%200%29%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3B%20eMail%3A%26nbsp%3B%26nbsp%3B%3Ca%20href%3D%22https%3A//www.google.com/url%3Fq%3Dhttp%3A//iLink1518USA.gmail.com%26amp%3Bsa%3DD%26amp%3Bust%3D1484337890578000%26amp%3Busg%3DAFQjCNFXkuGar_Y1W1OaMQfU8gHsGWvqjA%22%3E%3Cspan%20class%3D%22s3%22%20style%3D%22text-decoration%3A%20underline%3B%20font-kerning%3A%20none%3B%20-webkit-text-stroke-color%3A%20rgb%280%2C%200%2C%20238%29%3B%22%3EiLink1518USA.gmail.com%3C/span%3E%3C/a%3E%3C/span%3E%3C/p%3E%3Cp%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3B%20%26nbsp%3BTel%3A%20949-923-8889%26nbsp%3B%20909-374-2438%20%26nbsp%3B%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%3Cbr%3E%3C/span%3E%3C/p%3E%3Cp%20class%3D%22p1%22%20style%3D%22margin-top%3A%200px%3B%20margin-bottom%3A%200px%3B%20font-size%3A%2013px%3B%20font-stretch%3A%20normal%3B%20line-height%3A%20normal%3B%20font-family%3A%20Roboto%3B%20-webkit-text-stroke-color%3A%20rgba%280%2C%200%2C%200%2C%200.870588%29%3B%22%3E%3Cimg%20src%3D%22http%3A//files.natecheng.me/uploads/library/attachment/40/Parenting_Jan_Feb_2017.jpg%22%20style%3D%22width%3A%20969px%3B%22%3E%3Cspan%20class%3D%22s1%22%20style%3D%22font-kerning%3A%20none%3B%22%3E%3Cbr%3E%3C/span%3E%3C/p%3E", location: nil, short_desc: "還記得去年意猶未盡的親子教養分享會嗎？我們聽到您的心聲了！國際愛鄰協會再次邀請了大受歡迎的電台親子節目名住持人王祈老師與我們分享 0 ~ 12 歲兒童教養議題。", datetime: "2017-01-21 03:20:00", event_period: 120},
      {title: "test", desc: "%3Cp%3Etest%3C/p%3E", location: "test", short_desc: "test", datetime: "2017-01-24 09:00:00", event_period: 50},
      {title: "dadeed", desc: "%3Cp%3Edaedaed%3C/p%3E", location: "dade", short_desc: "dda", datetime: "2017-02-10 20:04:00", event_period: 50}
    ])
    EventCategory.create!([
      {event_id: 13, category_id: 2},
      {event_id: 13, category_id: 3},
      {event_id: 17, category_id: 2},
      {event_id: 12, category_id: 3},
      {event_id: 2, category_id: 1},
      {event_id: 1, category_id: 1}
    ])
    Library.create!([
      {name: "test5files", attachment: "family-ties-1x.jpg"},
      {name: "Sunday recording", attachment: "563__2016-08-07.mp3"}
    ])
    Maudio.create!([
      {title: "家庭保衛戰", path: "http://files.natecheng.me/uploads/library/attachment/37/563__2016-08-07.mp3", desc: "家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰家庭保衛戰", length: nil, featured: true, date: "2017-01-01", speaker: "陳振榮牧師"}
    ])
    Mvideo.create!([
      {title: "神是一位好的神", date: "2015-04-12", path: "https://www.youtube.com/watch?v=ua8TY_LSu-Y", desc: "神是一位好的神", youtubeID: "ua8TY_LSu-Y"}
    ])
    RepeatMetum.create!([
      {event_id: nil, repeat_start: "2016-12-21 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-01-07 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-21 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-01-07 00:00:00"},
      {event_id: 17, repeat_start: "2017-02-10 20:04:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-01-26 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-24 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-10 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-28 12:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-04 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-28 04:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-04 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-27 20:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-04 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-27 12:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-03 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-27 04:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-02 00:00:00"},
      {event_id: nil, repeat_start: "2017-01-26 20:05:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-03-01 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-19 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-01-21 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-19 01:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-25 00:00:00"},
      {event_id: 12, repeat_start: "2017-01-21 03:20:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-21 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-19 17:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-01-07 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-19 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-18 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-18 20:56:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-25 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-18 12:56:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-25 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-18 21:01:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-18 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-18 11:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-25 00:00:00"},
      {event_id: 2, repeat_start: "2016-12-18 03:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-25 00:00:00"},
      {event_id: nil, repeat_start: "2016-12-17 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-18 00:00:00"},
      {event_id: 1, repeat_start: "2016-12-18 09:00:00", repeat_interval: 604800, repeat_year: nil, repeat_month: nil, repeat_week: nil, repeat_day: nil, repeat_weekday: nil, valid_until: "2017-02-18 00:00:00"}
    ])
    RolccFeed.create!([
      {book: "馬太福音 9 章 23–26 節", date: "2017-02-03", time: "2000-01-01 09:17:49", short_script: "「耶穌到了管會堂的家裡，看見有吹手，又有許多人亂嚷，就說：『退去吧！這閨女不是死了，是睡著了。』他們就嗤笑他。眾人既被攆出，耶穌就進去，拉著閨女的手，閨女便起來了。於是這風聲傳遍了那地方。」<br><br>耶穌在行這件神蹟時，做了一件很特別的事，就是把眾人都攆了出去，因為這些人是一些不信的人。當主來到這女孩的房子，對他們說她還沒有死，只是睡了，他們就嗤笑耶穌，不相信祂能夠醫治。所以主在行神蹟前，就把他們都趕了出去。", long_script: "<span class='verse'>耶穌到了管會堂的家裡，看見有吹手，又有許多人亂嚷，就說：『退去吧！這閨女不是死了，是睡著了。』他們就嗤笑他。眾人既被攆出，耶穌就進去，拉著閨女的手，閨女便起來了。於是這風聲傳遍了那地方。</span><hr><br><br>耶穌在行這件神蹟時，做了一件很特別的事，就是把眾人都攆了出去，因為這些人是一些不信的人。當主來到這女孩的房子，對他們說她還沒有死，只是睡了，他們就嗤笑耶穌，不相信祂能夠醫治。所以主在行神蹟前，就把他們都趕了出去。<br><br>耶穌行神蹟的時候，信心的環境是何等重要！這種事不只發生在此，在拿撒勒耶穌的家鄉，主在那裡也不多行神蹟，因為拿撒勒的人不信。主行神蹟時，總是在一個相信的環境裡，祂才主動帶來醫治釋放。當你明白這個原則，會發現在作醫治禱告時，不是光禱告就算了，也必須預備一個相信的環境。我們必須先教導神的話語及應許，使人心因著神的話能夠有真實的信心。<br><br>這就是為什麼我們在醫治服事時，也得花時間敬拜與禱告，挑旺人心中的信心。只有當人對神有信心的時候，主的靈就能把救恩的果效帶到人生命中。許多次當主醫治病人時，對他們說「你的信救了你」，可見信心是何等重要。曾有一個病人由親人帶到我們教會禱告，但當大家為他禱告時，發現他裡面有非常強烈抗拒的靈，以致於無法繼續禱告下去。我心中實在為他可惜，主是何等樂意幫助他，但因著他心中的不信和抗拒，神的恩典無法臨到。<br><br>所以當我們在醫治禱告時，真的需要培育信心的環境，要憑著信心為別人禱告。當他們憑著信心來回應時，就要看見神的恩典臨到每個病人身上。你有一些需要在神面前嗎？你身上是否有軟弱和病痛？讓我們學習憑著信心祈求，只有在信心的環境中，才能經歷神的大能。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-9-%E7%AB%A0-23-26-%E7%AF%80-744ce8adcc4b?source=collection_home---6------0----------"},
      {book: "馬太福音 9 章 18–22 節", date: "2017-02-02", time: "2000-01-01 09:18:03", short_script: "「耶穌說這話的時候，有一個管會堂的來拜他說：『我女兒剛才死了，求你去按手在她身上，她就必活了。』耶穌便起來跟著他去，門徒也跟了去。有一個女人，患了十二年的血漏，來到耶穌背後，摸他的衣裳繸子，因為她心裡說：『我只摸他的衣裳，就必痊愈。』耶穌轉過來看見她，就說：『女兒，放心，你的信救了你。』從那時候，女人就痊愈了。」<br><br>這個女人來到神面前，帶著強烈的渴望尋求醫治。她患了十二年血漏病，花盡所有，可是病卻一點不見好。不但身體很痛若，她的心靈也受盡折磨，因為當時患血漏的人，被視為不潔淨，不能隨便與人接觸，可說是被社會遺忘的人。婦人來到耶穌面前，強烈渴…", long_script: "<span class='verse'>耶穌說這話的時候，有一個管會堂的來拜他說：『我女兒剛才死了，求你去按手在她身上，她就必活了。』耶穌便起來跟著他去，門徒也跟了去。有一個女人，患了十二年的血漏，來到耶穌背後，摸他的衣裳繸子，因為她心裡說：『我只摸他的衣裳，就必痊愈。』耶穌轉過來看見她，就說：『女兒，放心，你的信救了你。』從那時候，女人就痊愈了。</span><hr><br><br>這個女人來到神面前，帶著強烈的渴望尋求醫治。她患了十二年血漏病，花盡所有，可是病卻一點不見好。不但身體很痛若，她的心靈也受盡折磨，因為當時患血漏的人，被視為不潔淨，不能隨便與人接觸，可說是被社會遺忘的人。婦人來到耶穌面前，強烈渴望從主那裡得著醫治。你我來到神面前祈求時，是否帶著渴望的態度？要如何才是有渴望的態度呢？<br><br>首先，必須將需要帶到主面前祈求。很多基督徒有種錯誤觀念，以為神很忙，大概沒時間管自己這種小事，何必麻煩祂？聖經清楚告訴我們：「你們得不著，乃是因為你們不求。」有些人說，聖經不是說在我們還沒有祈求以前，神都已知道了嗎？那麼為什麼還要祈求？沒錯，神早已知道每個人的需要，但祂的祝福永遠是臨到謙卑渴慕的人身上，而祈求就代表著我們渴慕及謙卑願意的心。<br><br>第二，不但向主祈求，且要具體地祈求。很多人來到主面前，求是求了，但求得很含糊。聖經裡應許的祝福有五千多種，你求主賜福，主可能要問：「你要我賜什麼福給你？」我們不但要祈求，而且要具體，清楚在神面前求，否則又怎能確定神成就了你的祈求呢？<br><br>第三，要以熱切的心來祈求。有些人求是求了，但像是無所謂的態度。另外有些人也求了，不過求完後連自己求什麼都忘了。如果我們在神面前祈求的態度這樣隨便，怎麼能期望主垂聽自己的禱告呢？<br><br>就讓我們把需要帶到神面前，存著期待的心，仰望祂。當這個女人來到神面前這樣祈求時，耶穌就說：「放心，妳的信救了你。」求神幫助我們，憑信心來領受祂的恩典。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-9-%E7%AB%A0-18-22-%E7%AF%80-d8dfce58195?source=collection_home---6------1----------"},
      {book: "馬太福音 9 章 14–17 節", date: "1970-01-01", time: "2000-01-01 00:00:00", short_script: "「那時，約翰的門徒來見耶穌說：『我們和法利賽人常常禁食，你的門徒倒不禁食，這是為甚麼呢？』耶穌對他們說：『新郎和陪伴之人同在的時候，陪伴之人豈能哀慟呢？但日子將到，新郎要離開他們，那時候他們就要禁食。沒有人把新布補在舊衣服上，因為所補上的反帶壞了那衣服，破的就更大了；也沒有人把新酒裝在舊皮袋裡，若是這樣，皮袋就裂開，酒漏出來，連皮袋也壞了。惟獨把新酒裝在新皮袋裡，兩樣就都保全了。』」<br><br>主教導我們新酒要裝在新皮袋裡，因為酒放在皮袋裡會起化學作用，改變皮袋的形狀。新的皮袋比較柔軟，可以被塑造成不同形狀，然後就慢慢硬化成型。這時如果再放新酒，這…", long_script: "<span class='verse'>那時，約翰的門徒來見耶穌說：『我們和法利賽人常常禁食，你的門徒倒不禁食，這是為甚麼呢？』耶穌對他們說：『新郎和陪伴之人同在的時候，陪伴之人豈能哀慟呢？但日子將到，新郎要離開他們，那時候他們就要禁食。沒有人把新布補在舊衣服上，因為所補上的反帶壞了那衣服，破的就更大了；也沒有人把新酒裝在舊皮袋裡，若是這樣，皮袋就裂開，酒漏出來，連皮袋也壞了。惟獨把新酒裝在新皮袋裡，兩樣就都保全了。』</span><hr><br><br>主教導我們新酒要裝在新皮袋裡，因為酒放在皮袋裡會起化學作用，改變皮袋的形狀。新的皮袋比較柔軟，可以被塑造成不同形狀，然後就慢慢硬化成型。這時如果再放新酒，這個皮袋已不再有自由伸縮的能力，新的化學作用會使舊皮袋裂開。當我們接受耶穌基督的生命，就容許主的生命塑造自己成為新的樣式。但作為基督徒要很小心，不要讓那個新樣式，成為形式主義來轄制我們；結果又變成一個舊皮袋，當聖靈在心中做新的工作時，反而無法承受。<br><br>基督徒要看見聖靈永遠是新酒，所以我們必須有柔軟的心，讓自己永遠成為新皮袋。許多人信主時成為新皮袋，隨著日子過去，卻不能繼續被更新，以致於皮袋漸漸變舊。可是聖靈卻永遠是新酒，新的酒要做新的工作；我們需要常在生命中準備好，當聖靈要工作時，樂意被祂調整，因新酒永遠要放在新皮袋裡。<br><br>你的生命是舊皮袋的生命，還是新皮袋的生命？主教導我們要禁食，因為：第一，禁食禱告讓我們更親近神，能夠放下世上的纏累與重擔，分別時間出來，聆聽聖靈的聲音。另一方面，禁食禱告也代表一種捨己，願意放下成見，放下肉體的情慾，單單來到神面前，尋求祂的心意。禁食禱告也代表謙卑，不再倚靠自己的意思，願意順從神的心意。在每天生活中，我們何等需要被聖靈更新，好讓自己天天成為一個新皮袋。求主幫助我們，歡迎聖靈的工作，讓自己的生命成為新皮袋的生命。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-9-%E7%AB%A0-14-17-%E7%AF%80-ecc185382bd7?source=collection_home---6------2----------"},
      {book: "馬太福音 9 章 1–8 節", date: "2017-01-30", time: "2000-01-01 09:20:11", short_script: "「耶穌上了船，渡過海，來到自己的城裡。有人用褥子抬著一個癱子，到耶穌跟前來。耶穌見他們的信心，就對癱子說：『小子，放心吧！你的罪赦了。』有幾個文士心裡說：『這個人說僭妄的話了。』耶穌知道他們的心意，就說：『你們為什麼心裡懷著惡念呢？或說你的罪赦了，或說，你起來行走，哪一樣容易呢？但要叫你們知道，人子在地上有赦罪的權柄。』就對癱子說：『起來，拿你的褥子回家去吧！』那人就起來，回家去了。眾人看見都驚奇，就歸榮耀與 神，因為他將這樣的權柄賜給人。」", long_script: "<span class='verse'>耶穌上了船，渡過海，來到自己的城裡。有人用褥子抬著一個癱子，到耶穌跟前來。耶穌見他們的信心，就對癱子說：『小子，放心吧！你的罪赦了。』有幾個文士心裡說：『這個人說僭妄的話了。』耶穌知道他們的心意，就說：『你們為什麼心裡懷著惡念呢？或說你的罪赦了，或說，你起來行走，哪一樣容易呢？但要叫你們知道，人子在地上有赦罪的權柄。』就對癱子說：『起來，拿你的褥子回家去吧！』那人就起來，回家去了。眾人看見都驚奇，就歸榮耀與 神，因為他將這樣的權柄賜給人。</span><hr><br><br>主醫治這個癱子時，法利賽人和文士有很大爭論，因主沒有說「你的病得醫治了」，反而說「你的罪赦了」。這對法利賽人和文士是非常困惑的事，因為只有神才能赦免人的罪，耶穌難道是神？但耶穌反問他們：是醫治他容易？還是赦免他的罪容易？從人的角度，兩件事都不容易，但因耶穌是神的兒子，兩件事其實一樣容易。後來耶穌再次對這個癱子說「拿起你的褥子行走」，這次祂沒有說你的罪赦了。耶穌赦免一個人的罪時，這個人病也得醫治，兩件事同時並進。<br><br>我們對耶穌的認識，常不是很全面。主在地上時，不但傳講神的道，也醫治病人；當主吩咐門徒兩個兩個出去時，要他們不但傳神國的道，也要醫治病人；當主把大使命托付給教會時，馬太福音說要傳神國的道，馬可福音最後講到手按病人，病人就得醫治。主一生總把神的道與醫治並行傳講，對主來講，赦免罪人與醫治人的疾病一樣重要。就法利賽人來講，他們對耶穌的醫治沒問題，但對祂赦罪的權柄充滿疑問。今天我們正好相反，對耶穌赦罪的權柄沒什麼疑問，卻對主醫治的權柄，心中充滿許多疑問。<br><br>主也要問我們同樣問題：叫他的罪得赦免容易？還是叫他病得醫治容易？從人的角度來講都不容易，從主的角度來講，在神實在沒有難成的事。讓我們存著謙卑的心來到神面前，容許祂在我們身上做奇妙的工作。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-9-%E7%AB%A0-1-8-%E7%AF%80-11e0ade517c4?source=collection_home---6------4----------"},
      {book: "馬太福音 8 章 28–34 節", date: "2017-01-29", time: "2000-01-01 09:18:34", short_script: "「耶穌既渡到那邊去，來到加大拉人的地方，就有兩個被鬼附的人，從墳塋裡出來迎著他，極其兇猛，甚至沒有人能從那條路上經過。他們喊著說：『神的兒子，我們與你有什麼相干？時候還沒有到，你就上這裡來叫我們受苦嗎？』離他們很遠，有一大群豬吃食。鬼就央求耶穌說：『若把我們趕出去，就打發我們進入豬群吧！』耶穌說：『去吧！』鬼就出來，進入豬群．全群忽然闖下山崖，投在海裡淹死了。放豬的就逃跑進城，將這一切事和被鬼附的人所遭遇的都告訴人。合城的人都出來迎見耶穌，既見了，就央求他離開他們的境界。」", long_script: "<span class='verse'>耶穌既渡到那邊去，來到加大拉人的地方，就有兩個被鬼附的人，從墳塋裡出來迎著他，極其兇猛，甚至沒有人能從那條路上經過。他們喊著說：『神的兒子，我們與你有什麼相干？時候還沒有到，你就上這裡來叫我們受苦嗎？』離他們很遠，有一大群豬吃食。鬼就央求耶穌說：『若把我們趕出去，就打發我們進入豬群吧！』耶穌說：『去吧！』鬼就出來，進入豬群．全群忽然闖下山崖，投在海裡淹死了。放豬的就逃跑進城，將這一切事和被鬼附的人所遭遇的都告訴人。合城的人都出來迎見耶穌，既見了，就央求他離開他們的境界。</span><hr><br><br>耶穌在地上行神蹟時，人的反應往往不像大家所想像的。當耶穌釋放這兩個被鬼附的人得到自由後，人們似乎應當歡喜快樂；沒想到合城的人來見耶穌，反而希望祂趕快離開自己的境界。因為他們聽見放豬的報告，就很擔心，如果耶穌趕走兩個鬼讓所有的豬死光，祂若是再多行點神蹟，他們的家當房屋不就通通沒了？所以他們懇求耶穌趕快離開，卻不明白主為什麼要如此做。<br><br>以當時猶太人的背景及律法，豬是不潔淨的動物，猶太人是不許養豬的。有人在這裡養豬，完全違背神的心意，甚至違背神的律法。所以耶穌聽見鬼的央求，讓牠們進入豬群時，祂毫不考慮地說：「去吧！」因為主知道，這些人養豬完全不合乎神的心意，所以祂才容許這件事發生。<br><br>但因為城裡的人看重錢財，過於看重人靈魂得救和神的心意，以致於要求耶穌離開。你我是否能真實地歡迎耶穌基督來工作呢？我們求主在生命中工作，當主真的工作時，祂第一件事就要做潔淨的工作。凡一切不潔淨的，要先被耶穌對付，先被耶穌除去。我們不能只求恩典和醫治，因神要先除去人心中的攔阻和罪惡，好讓祂的恩典，能從寶座傾倒在我們生命中。<br><br>求神開我們眼睛，看見神的道路，高過我們的道路；神的意念，高過我們的意念。讓我們的眼目不看重地上有限的金錢，而要單單看見神的心意和工作，我們的心就會歡喜快樂。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-8-%E7%AB%A0-28-34-%E7%AF%80-67fb281f0ce9?source=collection_home---6------5----------"},
      {book: "馬太福音 8 章 23–27 節", date: "2017-01-28", time: "2000-01-01 09:18:10", short_script: "「耶穌上了船，門徒跟著他。海裡忽然起了暴風，甚至船被波浪掩蓋；耶穌卻睡著了。門徒來叫醒了他，說：『主啊，救我們，我們喪命啦！』耶穌說：『你們這小信的人哪！為甚麼膽怯呢？』於是起來，斥責風和海，風和海就大大地平靜了。眾人希奇說：『這是怎樣的人？連風和海也聽從他了！』」<br><br>在人生的旅途中，不也常有這種「忽然」的暴風嗎？忽然意外臨到、疾病臨到，甚至攻擊臨到；面對忽然而來的驚恐，我們心中常失去平安。就像門徒和主在船上，海裡忽然起了風暴，門徒們驚嚇，要搖醒耶穌。", long_script: "<span class='verse'>耶穌上了船，門徒跟著他。海裡忽然起了暴風，甚至船被波浪掩蓋；耶穌卻睡著了。門徒來叫醒了他，說：『主啊，救我們，我們喪命啦！』耶穌說：『你們這小信的人哪！為甚麼膽怯呢？』於是起來，斥責風和海，風和海就大大地平靜了。眾人希奇說：『這是怎樣的人？連風和海也聽從他了！』</span><hr><br><br>在人生的旅途中，不也常有這種「忽然」的暴風嗎？忽然意外臨到、疾病臨到，甚至攻擊臨到；面對忽然而來的驚恐，我們心中常失去平安。就像門徒和主在船上，海裡忽然起了風暴，門徒們驚嚇，要搖醒耶穌。<br><br>主為什麼能在風暴中睡著呢？有人說，耶穌是睡在神話語的根基上。神的話語、神的應許，就好像枕頭；當我們把頭放在神話語上時，就讓自己得享安息，在各樣風暴中能夠毫無懼怕，繼續前進。耶穌充滿了神的話語，讓祂心中得享安息，無論風暴何等厲害，祂可以斥責風，風就平靜，斥責海，海就平靜。<br><br>當主升天後，也將同樣的權柄放在我們生命中。我們也有斥責生命風暴的權柄，但很可惜，卻常常不明白自己的權柄，不明白神話語的寶貴。以致於在風浪中充滿驚恐，沒有真正得享安息。求神幫助我們，讓祂的話語成為磐石，成為依靠；當面對人生各樣風暴時，因著我們站立在神話語的根基上，心中就有平安，仍有喜樂。那話語也能從我們生命流露出去，成為別人的幫助；因神的話句句帶著權柄能力，風和海也要大大地平靜。求神幫助我們，在每天生活中經歷祂話語的能力！", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-8-%E7%AB%A0-23-27-%E7%AF%80-6d9a8f211215?source=collection_home---6------6----------"},
      {book: "馬太福音 10 章 34–37 節", date: "2017-02-12", time: "2000-01-01 09:16:09", short_script: "「你們不要想，我來是叫地上太平；我來並不是叫地上太平，乃是叫地上動刀兵。因為我來是叫人與父親生疏，女兒與母親生疏，媳婦與婆婆生疏。人的仇敵就是自己家裡的人，愛父母過於愛我的，不配作我的門徒，愛兒女過於愛我的，不配作我的門徒。 」<br><br>在此特別講到：「主來不是叫世上太平，反而是叫地上動刀兵。」表面上這段經文非常難以明白，必須先明白猶太人的文化，就能懂得動刀兵的意思。當時猶太人若兩人為一件事爭執不下，旁邊的群眾也有不同的意見，唯一解決的方法，就是將一把刀丟到地上，然後表決；贊成我的站在刀這邊，贊成他的站在刀那邊。所以動刀兵的意思，不是要用刀兵…", long_script: "<span class='verse'>你們不要想，我來是叫地上太平；我來並不是叫地上太平，乃是叫地上動刀兵。因為我來是叫人與父親生疏，女兒與母親生疏，媳婦與婆婆生疏。人的仇敵就是自己家裡的人，愛父母過於愛我的，不配作我的門徒，愛兒女過於愛我的，不配作我的門徒。 </span><hr><br><br>在此特別講到：「主來不是叫世上太平，反而是叫地上動刀兵。」表面上這段經文非常難以明白，必須先明白猶太人的文化，就能懂得動刀兵的意思。當時猶太人若兩人為一件事爭執不下，旁邊的群眾也有不同的意見，唯一解決的方法，就是將一把刀丟到地上，然後表決；贊成我的站在刀這邊，贊成他的站在刀那邊。所以動刀兵的意思，不是要用刀兵打殺，而是要表明立場。信仰需要表明立場，我們不能腳踏兩條船，聖經說「不能事奉神又事奉瑪門」，一定要表明立場。<br><br>其實這裡教導的，不是不要愛父母，而是當我們愛其他事物遠超過對主的愛與遵從時，就是走在世界的道路上，遠離了神。主在這裡要我們表明立場，在生命中最寶貴的是什麼？不是說世界上的人不好，乃是要在主權的事上，表明自己的立場。神賜給我們的家人和事物很美好，都是神賜的恩典，但我們卻容許這些恩典攔阻自己跟從神，遵從耶穌是我們的主。主曾講到有個人擺設大宴席，請很多客人，吃飯的時候一個都沒來。於是他打發僕人再去請，可是這些人都一口拒絕：第一個說我剛買了一塊地，要去看一下；第二個說我買了一條牛，要去試一試；第三個說我剛結了婚，結果三個人都無法享受神的福分。這個比喻提醒我們，今天那些攔阻我們親近神的事，可能都不是不好的事，但人生的遺憾就在於，我們讓這些事情攔阻自己與神之間的溝通。<br><br>今天你生命中看重的是什麼？主不是教導我們不要愛自己的父母和兒女，而是生命主權是在神手中。讓我們真問自己，是否願意遵從耶穌基督為自己的主，在生活每個層面跟從祂？你是不是願意立志跟隨耶穌，作主的門徒呢？", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-34-37-%E7%AF%80-c98f72efd055?source=collection_home---6------0----------"},
      {book: "馬太福音 10 章 24–33 節", date: "2017-02-11", time: "2000-01-01 09:16:40", short_script: "「….所以，不要怕他們。因為掩蓋的事，沒有不露出來的；隱藏的事，沒有不被人知道的。我在暗中告訴你們的，你們要在明處說出來；你們耳中所聽的，要在房上宣揚出來。那殺身體不能殺靈魂的，不要怕他們；惟有能把身體和靈魂都滅在地獄裡的，正要怕他。兩個麻雀不是賣一分銀子嗎？若是你們的父不許，一個也不能掉在地上；就是你們的頭髮也都被數過了。所以，不要懼怕，你們比許多麻雀還貴重。凡在人面前認我的，我在我天上的父面前也必認他；凡在人面前不認我的，我在我天上的父面前也必不認他。」", long_script: "<span class='verse'>….所以，不要怕他們。因為掩蓋的事，沒有不露出來的；隱藏的事，沒有不被人知道的。我在暗中告訴你們的，你們要在明處說出來；你們耳中所聽的，要在房上宣揚出來。那殺身體不能殺靈魂的，不要怕他們；惟有能把身體和靈魂都滅在地獄裡的，正要怕他。兩個麻雀不是賣一分銀子嗎？若是你們的父不許，一個也不能掉在地上；就是你們的頭髮也都被數過了。所以，不要懼怕，你們比許多麻雀還貴重。凡在人面前認我的，我在我天上的父面前也必認他；凡在人面前不認我的，我在我天上的父面前也必不認他。</span><hr><br><br>主三次講到「不要懼怕」，因為：第一，隱藏的事，沒有不被顯明的。這段聖經其實特別指「得勝」來講，過去主的身分一直被隱藏，人子在地上是受苦的。同樣許多信徒，因著主受苦，也與主一同受苦。但主的身份不會永遠隱藏，當主從死裡復活後，榮耀的身份就顯明了，所以第廿七節說：「主在暗中說的，我們可以在明處宣告。」換句話說，不再隱藏了，可以大聲宣告主已得勝，祂已坐在寶座上。今天我們與祂同坐寶座，仇敵撒但不再攻擊勝過我們，因為耶穌基督已經得勝。<br><br>第二，因為殺身體的不能殺靈魂，不要怕它們。魔鬼撒但的逼迫攻擊，最多只能殺害我們的身體；但我們屬於主，沒有一件事，不論是生是死，可以叫我們與基督的愛隔絕。聖經從來沒有叫我們懼怕魔鬼，而是要謹慎自守；但聖經教導我們敬畏真神，因為生命存留都在於祂。求主幫助我們不害怕，仇敵只能包圍我們，卻無法吞滅我們；牠可以攻擊我們，卻不能勝過我們，因我們是屬於主的。<br><br>第三，因我們屬於主，祂必要顧念我們。連麻雀祂都看顧，何況我們？有個比喻講到兩隻麻雀在樹上，看見下面非常忙碌的人類，其中一隻問：「這些人為什麼這樣忙碌，沒有喜樂？」另外一隻回答：「我不知道，可能他們不像我們有位慈愛的天父吧！」這位慈愛的天父怎樣供應麻雀的需要，同樣也要供應我們的需要。主在第廿節說：「就是你們的頭髮也都被數過了，所以不要害怕。」讓我們不再懼怕，勇敢為主而活；求主給我們剛強壯膽的靈，在世界上為祂勇敢作見證。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-24-33-%E7%AF%80-a48fb0b5f306?source=collection_home---6------1----------"},
      {book: "馬太福音 10 章 21–23 節", date: "2017-02-10", time: "2000-01-01 09:19:33", short_script: "「弟兄要把弟兄，父親要把兒子，送到死地；兒女要與父母為敵，害死他們。並且你們要為我的名被眾人恨惡，惟有忍耐到底的必然得救。有人在這城裡逼迫你們，就逃到那城裡去。我實在告訴你們：以色列的城邑，你們還沒有走遍，人子就到了。」<br><br>這裡指逼迫臨到時信徒的光景，常常自家人會因信仰的緣故，互相逼迫。信徒受到迫害，也被眾人所恨惡；這不只是初代教會才有的光景，今天許多中國信徒，仍然為信仰的緣故受到迫害。一個服事、跟隨主的人，必須有為主受苦的心志，主在約翰福音15:18~19說：「世人若恨你們，你們知道，恨你們以先，已經恨我了。你們若屬世界，世界必愛屬自…", long_script: "<span class='verse'>弟兄要把弟兄，父親要把兒子，送到死地；兒女要與父母為敵，害死他們。並且你們要為我的名被眾人恨惡，惟有忍耐到底的必然得救。有人在這城裡逼迫你們，就逃到那城裡去。我實在告訴你們：以色列的城邑，你們還沒有走遍，人子就到了。</span><hr><br><br>這裡指逼迫臨到時信徒的光景，常常自家人會因信仰的緣故，互相逼迫。信徒受到迫害，也被眾人所恨惡；這不只是初代教會才有的光景，今天許多中國信徒，仍然為信仰的緣故受到迫害。一個服事、跟隨主的人，必須有為主受苦的心志，主在約翰福音15:18~19說：「世人若恨你們，你們知道，恨你們以先，已經恨我了。你們若屬世界，世界必愛屬自己的；只因你們不屬世界，乃是我從世界中揀選了你們，所以世界就恨你們。」我們的確會遭受各種逼迫，腓立比書1:29保羅說：「因為你們蒙恩，不但得以順服基督，並要為他受苦。」這裡說的受苦，不見得是外來的逼迫，也可能是信耶穌帶來的攻擊；或許從親人、朋友，甚至從同學、同事那裡。我小時候在學校謝飯禱告，禱告到「阿們」後睜開眼睛，便當已被同學拿走了。那我們要怎麼來面對各樣的逼迫呢？<br><br>主說：「那忍耐到底的，必然得救。」這裡說的得救有兩種層面：第一，是主現在的拯救。主仍是在曠野開道路，在沙漠開江河的神；當年以色列人過紅海時，後面有埃及追兵，是非常緊急的關頭。大家都向神呼求，神吩咐摩西用杖向海面一指，紅海分開，所有人就從乾地走過去。當後面埃及追兵趕過來時，以色列人腳一踏上對岸，海水立刻合起來，所有埃及的追兵都死在海中。哈利路亞，主的拯救是現在的拯救。<br><br>另一方面，主的拯救也是將來的拯救，指主的再來。當主再來，罪惡必要被審判，公義必要被彰顯；但在過程中，要學習忍耐，相信主必伸冤。我們就能坦然將自己需要的、遭遇的，都帶到主面前，相信祂必要引導。主的道路高過我們的道路，主的意念也高過我們的意念，我們就能在祂裡面得享安息。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-21-23-%E7%AF%80-79d3102b601d?source=collection_home---6------2----------"},
      {book: "馬太福音 10 章 16–20 節", date: "2017-02-09", time: "2000-01-01 09:20:04", short_script: "「我差你們去，如同羊進入狼群，所以你們要靈巧像蛇，馴良像鴿子。你們要防備人，因為他們要把你們交給公會，也要在會堂裡鞭打你們；並且你們要為我的緣故，被送到諸候君王面前，對他們和外邦人作見證。你們被交的時侯，不要思慮怎樣說話，或說甚麼話。到那時候，必賜給你們當說的話。因為不是你們自己說的，乃是你們父的靈在你們裡頭說的。」<br><br>基督徒在世界上，好像羊進入狼群裡；求主幫助我們不要害怕，因為祂與我們同在。當神差遣李文斯頓進入非洲大陸傳福音，有一次整個團隊要過一條河，進入黑暗非洲的食人族部落。過河之前，大家非常害怕，因為不知前面的道路如何。李文斯頓向…", long_script: "<span class='verse'>我差你們去，如同羊進入狼群，所以你們要靈巧像蛇，馴良像鴿子。你們要防備人，因為他們要把你們交給公會，也要在會堂裡鞭打你們；並且你們要為我的緣故，被送到諸候君王面前，對他們和外邦人作見證。你們被交的時侯，不要思慮怎樣說話，或說甚麼話。到那時候，必賜給你們當說的話。因為不是你們自己說的，乃是你們父的靈在你們裡頭說的。</span><hr><br><br>基督徒在世界上，好像羊進入狼群裡；求主幫助我們不要害怕，因為祂與我們同在。當神差遣李文斯頓進入非洲大陸傳福音，有一次整個團隊要過一條河，進入黑暗非洲的食人族部落。過河之前，大家非常害怕，因為不知前面的道路如何。李文斯頓向神禱告，神啟示馬太福音28:20說：「我就要與你同在，直到世界的末了。」領受這句話後，他充滿信心；隔天整個團隊過了河，進入食人族部落。那時開始，福音就傳遍整個非洲大陸。<br><br>同時，我們也需有聰明，第十六節主要我們「靈巧像蛇，馴良像鴿子」，一方面我們要謹慎防備，彼得前書5:8說「務要謹守、儆醒，因為你們的仇敵魔鬼，如同吼叫的獅子，遍地遊行，尋找可吞吃的人。」另一方面要仰望神，因主的靈會在每個難處中，為我們開路，親自引導。就像主自己，多次在敵人詭計最厲害時，都有從神那裡來的智慧化解這些難處。有一次法利賽人想抓耶穌話柄，就問祂說：「納稅給凱撒可不可以？」如果耶穌說可以，祂就不忠於猶太人；如果耶穌說不可以，他們立刻可向政府控告耶穌不守羅馬律法。這樣的難題放在主面前，祂立刻有神來的智慧，就問銀錢上面是誰的像？當他們說是凱撒的像時，祂說：「是凱撒的就當歸給凱撒。」<br><br>你無論在任何難處裡，要單單仰望神，祂的智慧會在裡面引導你。所以這裡說，當你被交給官府時，不要思慮說什麼話，主的靈在你們裡面，會給你們適當的話語。求主幫助我們，無論遇到什麼樣的環境，讓我們不要害怕，謹慎自守來仰望神，因為祂必要供應。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-16-20-%E7%AF%80-352aa1eb8e90?source=collection_home---6------3----------"},
      {book: "馬太福音 10 章 9–15 節", date: "2017-02-08", time: "2000-01-01 16:37:29", short_script: "「腰袋裡不要帶金銀銅錢。行路不要帶口袋，不要帶兩件褂子，也不要帶鞋和柺杖，因為工人得飲食是應當的。你們無論進哪一城，哪一村，要打聽那裡誰是好人，就住在他家，直住到走的時候。進他家裡去，要請他的安。那家若配得平安，你們所求的平安就必臨到那家；若不配得，你們所求的平安仍歸你們。凡不接待你們、不聽你們話的人，你們離開那家或是那城的時候，就把腳上的塵土跺下去。我實在告訴你們：當審判的日子，所多瑪和蛾摩拉所受的，比那城還容易受呢！」", long_script: "<span class='verse'>腰袋裡不要帶金銀銅錢。行路不要帶口袋，不要帶兩件褂子，也不要帶鞋和柺杖，因為工人得飲食是應當的。你們無論進哪一城，哪一村，要打聽那裡誰是好人，就住在他家，直住到走的時候。進他家裡去，要請他的安。那家若配得平安，你們所求的平安就必臨到那家；若不配得，你們所求的平安仍歸你們。凡不接待你們、不聽你們話的人，你們離開那家或是那城的時候，就把腳上的塵土跺下去。我實在告訴你們：當審判的日子，所多瑪和蛾摩拉所受的，比那城還容易受呢！</span><hr><br><br>主打發門徒出去時，教導他們幾件事：第一，不要帶金銀銅錢，換句話說，要相信神的供應。其實不只在傳道的事上，每天生活中，我們也可以經歷神的供應。當我還在費城讀書時，因為某些原因停止打工，家中非常短缺。有次師母準備出門買東西，卻發現一毛錢都沒有。那時她就在神面前禱告，隨後聽到敲門的聲音，有位姊妹送來一個信封，並對師母說：「我相信這是神為你們預備的。」她一打開，裡面是一些現款，這位姊妹愛心的奉獻，在最適當的時候供應我們的需要。神不但過去用神蹟奇事供應我們，如今祂照樣透過弟兄姊妹和各樣事物，讓我們的需要得以滿足。<br><br>第二，要帶給別人祝福。無論神把我們放在什麼生活崗位，都有一個責任，就是要成為別人祝福的管道。我們進到一個城市，就要為那城市求平安，進到一個家中，就要為那個家求平安。這是為什麼我們常要禱告行進的原因，中國信徒常忽略這件事，常忽略為城市、為社區求平安與祝福的責任，只是習慣自掃門前雪。<br><br>主卻教導我們，要為居住的城市求平安。你曾為自己的城市祝福禱告嗎？當我們如此做時，世人對我們傳的福音會有兩種反應：第一種，他們會領受這種平安；第二種，他們會拒絕這種平安。但主說：凡領受的，主的平安就歸於他們；凡拒絕的，主的審判也必臨到他們。不是因我們定他們的罪，而是他們自己的不信與拒絕定了自己的罪。無論如何，我們要遵行神的旨意，無論走到哪裡，福音也要傳到哪裡，主的祝福及平安也要到哪裡。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-9-15-%E7%AF%80-e7291dc945bf?source=collection_home---6------4----------"},
      {book: "馬太福音 10 章 5–8 節", date: "2017-02-07", time: "2000-01-01 09:15:48", short_script: "「耶穌差這十二個人去，吩咐他們說：外邦人的路，你們不要走；撒瑪利亞人的城，你們不要進；寧可往以色列家迷失的羊那裡去。隨走隨傳，說：『天國近了！』醫治病人，叫死人復活，叫長大痳瘋的潔淨，把鬼趕出去。你們白白地得來，也要白白地捨去。」<br><br>為什麼耶穌吩咐門徒：「外邦人的路，你們不要走…？」如果主的心意不是叫外邦人得救，為什麼約翰福音第四章，祂要走到撒瑪利亞城向那婦人談道呢？可見主的心意，不是偏愛以色列人，而不愛外邦人。主這麼說的原因，乃是祂訓練門徒的策略。傳福音的第一課，要從自己最熟悉的環境著手，這也是為什麼使徒行傳1:8主要我們在耶路撒冷，猶太全地…", long_script: "<span class='verse'>耶穌差這十二個人去，吩咐他們說：外邦人的路，你們不要走；撒瑪利亞人的城，你們不要進；寧可往以色列家迷失的羊那裡去。隨走隨傳，說：『天國近了！』醫治病人，叫死人復活，叫長大痳瘋的潔淨，把鬼趕出去。你們白白地得來，也要白白地捨去。</span><hr><br><br>為什麼耶穌吩咐門徒：「外邦人的路，你們不要走…？」如果主的心意不是叫外邦人得救，為什麼約翰福音第四章，祂要走到撒瑪利亞城向那婦人談道呢？可見主的心意，不是偏愛以色列人，而不愛外邦人。主這麼說的原因，乃是祂訓練門徒的策略。傳福音的第一課，要從自己最熟悉的環境著手，這也是為什麼使徒行傳1:8主要我們在耶路撒冷，猶太全地，和撒瑪利亞，直到地極，作祂見證的原因。<br><br>傳福音永遠從最熟悉的環境開始，不需要好高騖遠。常常我們連周圍的人，都沒向他們提過耶穌的名字，又怎能向許多不同文化種族的人傳福音？主在這裡說：「要從以色列人迷失的羊那裡開始，傳說天國近了，你們要悔改」，天國的信息是猶太人立刻就能明白的道理，也是門徒在傳福音時，比較容易傳講的信息。所以主揀選十二個門徒後，差遣他們先進入以色列迷失的羊那裡去。<br><br>另一個原因，就是羅馬書1:16保羅說的：「我不以福音為恥，這福音本是神的大能，要救一切相信的，先是猶太人，後是希利尼人。」羅馬書裡多次提到這樣的次序─先是猶太人，後是希利尼人；福音是先傳給猶太人，才再傳到外邦人中。既是神所設立的次序，所以主也吩咐門徒，要從以色列家開始傳福音。主在第八節給我們非常重要傳福音的原則，就是「白白地得來，也要白白地捨去。」我們領受的福音，是白白從主那裡領受，不是因我們配得。當我們享受主恩典後，也應當將這恩典讓周圍的人一同享受，讓他們同樣能經歷主的慈愛。<br><br>讓我們在生活中看見主的心意，不但為自己，更要透過我們，把神的恩典傳到萬國萬民。讓我們常在神的心意中，遵行神的旨意而活。", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-5-8-%E7%AF%80-9ccb9aa6db49?source=collection_home---6------5----------"},
      {book: "馬太福音 10 章 1–4 節", date: "2017-02-06", time: "2000-01-01 09:19:45", short_script: "「耶穌叫了十二個門徒來，給他們權柄，能趕逐污鬼，並醫治各樣的病症。這十二使徒的名：頭一個叫西門，又稱彼得，還有他兄弟安得烈。西庇太的兒子雅各和雅各的兄弟約翰，腓力和巴多羅買，多馬和稅吏馬太，亞勒腓的兒子雅各，和達太，奮銳黨的西門，還有賣耶穌的加略人猶大。」<br><br>耶穌在地上開始衪的工作時，就一直呼召揀選那些相信的人，進入衪的國度。主的心意不但要他們經歷衪的全能，更要把國度擴展的責任交託給他們。所以主選了十二個門徒，他們特別被選召出來，為主作死裡復活的見證。廣義上，每個重生得救的基督徒，都是被神選召的人，「教會」的原意就是一群被呼召出來的人。彼得前書2…", long_script: "<span class='verse'>耶穌叫了十二個門徒來，給他們權柄，能趕逐污鬼，並醫治各樣的病症。這十二使徒的名：頭一個叫西門，又稱彼得，還有他兄弟安得烈。西庇太的兒子雅各和雅各的兄弟約翰，腓力和巴多羅買，多馬和稅吏馬太，亞勒腓的兒子雅各，和達太，奮銳黨的西門，還有賣耶穌的加略人猶大。</span><hr><br><br>耶穌在地上開始衪的工作時，就一直呼召揀選那些相信的人，進入衪的國度。主的心意不但要他們經歷衪的全能，更要把國度擴展的責任交託給他們。所以主選了十二個門徒，他們特別被選召出來，為主作死裡復活的見證。廣義上，每個重生得救的基督徒，都是被神選召的人，「教會」的原意就是一群被呼召出來的人。彼得前書2:9說的「惟有你們」，指的是整個教會，被揀選的族類。彼得前書又繼續說：你們是聖潔的國度，是屬神的子民，要叫你們宣揚那召你們出黑暗、入奇妙光明者的美德；換句話說，我們每個人，都是被神揀選，蒙神選召，要出去傳祂的福音。<br><br>也許你覺得自己很軟弱，不可能為主做什麼。但如果仔細看，耶穌揀選的這些門徒，也沒有赫赫有名的人物；如果說有領袖才幹的，恐怕只有彼得，不過他的性情也十分不穩定。雅各和約翰，耶穌給他們取了別名叫「雷子」，一方面是盼望他們為神國做一番轟轟烈烈的事，另一方面也表示他們脾氣不好惹。安得烈、腓力、巴多羅買都是既忠心又熱心的人，但也不是領袖人才。馬太的背景更糟糕，是個稅吏，換句話說，是替羅馬人辦事的，當時猶太人根本不屑為伍。多馬，一想到他，就想到他的多疑。亞勒腓的兒子雅各、達太和西門，我們連他們是誰都不知道。當然，最後還有賣主的猶大，雖然主早知道他要出賣自己，但衪還是愛他；可惜後來他沒有悔改，以致滅亡。<br><br>看見這個名單，我們的心實在很得著安慰，不是嗎？雖然這些人都那麼不起眼，主卻愛他���，親自���選他們。如果主在那個時代能使用這批人，那麼今天祂一樣能使用我們。所以不要輕看自己，當神的恩典臨到時，讓我們興起，為主來工作！", link: "https://devotion.rolcc.net/%E9%A6%AC%E5%A4%AA%E7%A6%8F%E9%9F%B3-10-%E7%AB%A0-1-4-%E7%AF%80-627770bec300?source=collection_home---6------6----------"}
    ])

    Rake::Task['get_rolcc_feeds'].invoke
  end
end