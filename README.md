Cordova Plugin Fix IOS keyboard
======

There is a small problem in iOS that causes a pretty significant delay between the first time the keyboard is requested and when it actually appears. It is only the first time, and seems to be related to the OS trying to cache various properties of the keyboard.

https://github.com/mbrandonw/UIResponder-KeyboardCache
