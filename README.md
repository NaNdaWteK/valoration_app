# VALORATION_APP

## Preconfiguration of linux systems at no dockerized environment

* Install Ruby, Ruby-dev and Ruby-rack:

```
sudo apt-get install ruby ruby-dev ruby-rack
```

* Visit nokogiri page ( http://www.nokogiri.org/tutorials/installing_nokogiri.html ) and install dependencies, in debian/ubuntu:

```
sudo apt-get install build-essential patch
sudo apt-get install zlib1g-dev liblzma-dev libxslt-dev libxml2-dev
```

* For web-test install chromedriver (webdriver):

`sudo apt-get install chromium-chromedriver`

* Install gems Manualy

```
sudo gem install rerun
sudo gem install rspec
sudo gem install selenium-webdriver
sudo gem install capybara
sudo gem install chromedriver-helper
sudo gem install nokogiri
```

### Status
[![Build Status](https://travis-ci.org/NaNdaWteK/valoration_app.svg?branch=master)](https://travis-ci.org/NaNdaWteK/valoration_app)
