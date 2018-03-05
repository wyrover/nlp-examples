from bs4 import BeautifulSoup
import urllib.request
import nltk

response = urllib.request.urlopen('http://php.net/')

html = response.read()

soup = BeautifulSoup(html,"html5lib")

# 这需要安装 html5lib 模块

text = soup.get_text(strip=True)

tokens = text.split()

freq = nltk.FreqDist(tokens)
for key,val in freq.items():
    print (str(key) + ':' + str(val))


freq.plot(20, cumulative=False)