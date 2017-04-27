# CheckConnectivity


![CheckConnectivity](http://www.kahuna-mobihub.com/templates/ja_puresite/images/logo-trans.png)

CheckConnectivity library checks the internet connection and it is written in swift.

## Installation

### CocoaPods

```ruby
pod 'CheckConnectivity', :git => 'https://github.com/vishakhajadhav/CheckConnectivity.git', :tag => '1.0.6'
```

#### Note:

Add ```import CheckConnectivity``` in your swift file

## Example
To check internet connection before calling any webservice

E.g. : ```swift
if CheckConnectivity.hasConnectivity() { }
```
```


