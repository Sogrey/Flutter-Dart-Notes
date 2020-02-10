# 导言

## 路由常用API

|        **函数**         |                             含义                             |
| :---------------------: | :---------------------------------------------------------- |
|          push           |      将设置的router信息推送到Navigator上，实现页面跳转       |
|           of            |             主要是获取Navigator最近实例好的状态              |
|         canPop          |                   判断是否可以导航到新页面                   |
|        pushNamed        |                  将命名路由推送到Navigator                   |
|     popAndPushNamed     |               指定一个路由路径，并导航到新页面               |
|   pushAndRemoveUntil    | 将给定路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止 |
|        popUntil         |       反复执行pop直到该函数的参数predicate返回true为止       |
|        maybePop         |                      可能会导航到新页面                      |
| pushNamedAndRemoveUntil | 将命名路由推送到Navigator，删除先前的路由，直到该函数的参数predicate返回true为止 |
|  pushReplacementNamed   | 也是替换路由操作。推送一个命名路由到Navigator，新路由完成动画之后处理上一个路由 |
|       removeRoute       |       从Navigator中删除路由，同时执行Route.dispose操作       |
|    removeRouteBelow     | 从Navigator中删除路由，同时执行Route.dispose操作，要替换的路由是传入参数anchorRoute里的路由 |
|         replace         |               将Navigator中的路由替换为新路由                |
|    replaceRouteBelow    | 将Navigator中的路由替换为新路由，要替换的路由是传入参数anchorRoute里的路由 |

