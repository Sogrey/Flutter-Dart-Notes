# 导言

## 手势处理

GestureDetector生命周期

- 点击事件 tap
  - onTapDown 按下
  - onTap 点击
  - onTapUp 抬起
- 双击事件
  - onDoubleTap 双击
- 长按事件
  - onLongPressStart 长按开始
  - onLongPress 长按
  - onLongPressEnd 长按结束
  - onLongPressUp 抬起
- 缩放事件 Scale
  - onScaleStart 缩放开始
  - onScaleUpdate 缩放进行中
  - onScaleEnd 缩放结束
- 垂直滑动
  - onVerticalDragDown 垂直滑动按下
  - onVerticalDragStart 垂直滑动开始
  - onVerticalDragUpdate 垂直滑动进行中
  - onVerticalDragEnd 垂直滑动结束
- 水平滑动
  - onHorizontalDragDown 水平滑动按下
  - onHorizontalDragStart 水平滑动开始
  - onHorizontalDragUpdate 水平滑动进行中
  - onHorizontalDragEnd 水平滑动结束
- 平移事件 Pan
  - onPanDown 平移按下
  - onPanStart 平移开始
  - onPanEnd 平移结束

带事件处理的组件

- FloatingActionButton
- RaisedButton
- IconButton
- ToggleButton

使用Ink、InkWell或InkResponse组件