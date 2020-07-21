# Image

加载网络图片：
``` dart
Image.network(
  'http://www.win4000.com/mobile_detail_171117_2.html',
)
```
加载项目中图片：

首先将图片拷贝到项目中，通常情况下，拷贝到`assets/images/`目录下，`assets/images/`目录为手动创建，新建的项目默认是没有此目录的。

设置pubspec.yaml配置文件：
```
assets:
  - assets/images/
 ```
以上方法比较常用，因为项目中图片通常会有很多，或者使用以下方法只指定具体某些图片的名称：
```
assets:
  - assets/images/aa.jpg
```

在代码中加载：
``` dart
Image.asset('assets/images/aa.jpg')
```


