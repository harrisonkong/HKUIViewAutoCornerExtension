# <img src="./docs/logo256.jpg" width="40" height="40" alt="skyRoute66 logo" style="vertical-align:middle"> HKUIViewAutoCornerExtension #
![Swift](https://img.shields.io/static/v1?label=Swift&message=4.0%20or%20above&color=%23FF4400&style=plastic) ![iOS](https://img.shields.io/static/v1?label=iOS&&message=11.0%20or%20above&color=yellow&style=plastic) ![CocoaPod](https://img.shields.io/static/v1?label=pod&message=1.0.0%20or%20above&color=brightgreen&style=plastic) ![License](https://img.shields.io/static/v1?label=license&message=MIT&color=blue&style=plastic) ![Category](https://img.shields.io/static/v1?label=category&message=User%20Interface&color=blueviolet&style=plastic) 
#### HK UIView extension for automatically corner radius calculation ####

<img src="./docs/cloudline.png" alt="---line---">

## VERSION HISTORY ##

1.0.0 - 2020/01/18 - Initial release

## MINIMUM REQUIREMENTS ##

**Swift** 4.0 or above

**iOS** 11.0 or above

<img src="./docs/cloudline.png" alt="---line---">

## WHAT IS IT? ##

Using fixed corner radius in rectangular views often lead to inconsistent results when the device is rotated or when the view is resized. This module provides the basic funcationalities to calculate a corner radius dynamically base on one of the sides. It is used by many other HK series user interface elements derived from UIView

<img src="./docs/cloudline.png" alt="---line---">

## HOW TO USE IT ##

For a use case, see `HKUIView` at [HKUIView](https://github.com/harrisonkong/HKUIView)

Base your custom class on UIView or a descendent of UIView. Since extension cannot have variables, descendents should override these four methods to provide the values.

```
@objc open func autoCornerRoundingBasis() -> LengthCalculationBasis {
    return .shorterEdge
}

@objc open func autoCornerRoundingConstant() -> CGFloat {
    return 30.0
}

@objc open func autoCornerRoundingEnabled() -> Bool {
    return false
}

@objc open func autoCornerRoundingFactor() -> CGFloat {
    return 12.0
}
```

Corner radius can be dynamically calculated or set to a constant base on one of the followings:

- the width of the label
- the height of the label
- the length of the shorter edge of the label (width or height)
- the length of the longer edge of the label (width or height)
  
and set the corner radius of the layer. Descendants can call this method when it is ready to redraw.

```
public func updateCornerRadius()
```

See also : [HKUIViewLengthCalculationBasis](https://github.com/harrisonkong/HKUIViewLengthCalculationBasis)
<img src="./docs/cloudline.png" alt="---line---">

## HOW TO INSTALL IT ##

Use one of the following methods:

### 1. Using CocoaPod ###

The module is avabilable via CocoaPods Trunk. Below is an example podfile. If you already use a podfile for your project, all you have to do is add the line that specifies `HKUIViewAutoCornerExtension`. The other dependencies will also be automatically installed in the xcworkspace.

```
platform :ios, '11.0'

target 'MyTarget' do

  use_frameworks!

  pod 'HKUIViewAutoCornerExtension', '~> 1.0.0'
  # other pods for your project

end
```

Don't forget to import the module in your source code:

```
import HKUIViewAutoCornerExtension
```

### 2. BY INCLUDING THE SOURCE FILES ###

You can also simply include the following source files in your project:

```
UIView+HKAutoCornerRounding.swift
UIView+LengthCalculationBasis.swift
```

<img src="./docs/cloudline.png" alt="---line---">


## KNOWN ISSUES ##

There are no known issues currently.
