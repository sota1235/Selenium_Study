#!/usr/bin/ruby

# thanks for http://qiita.com/tomerun/items/9cb81d7a98150ff22f53

require 'selenium-webdriver'

###
# 試しにhttp://sota1235.comのトップページの内容をテストしてみる
###
driver = Selenium::WebDriver.for :chrome # ブラウザ起動

url = 'http://sota1235.com'
driver.navigate.to url    # URLを開く

# sota1235.com Activityを取得
element = driver.find_element(:class, 'index').find_element(:tag_name, 'h1')
puts element.text # 要素の内容テキスト

# ブラウザを終了
driver.quit
