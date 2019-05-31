module.exports = {
  title: 'Flutter & Dart 学习笔记',
  description: 'Flutter & Dart Notes',
  head: [ // 注入到当前页面的 HTML <head> 中的标签
    //['link', { rel: 'icon', href: '/images/photo.jpg' }],
    //['link', { rel: 'manifest', href: '/images/photo.jpg' }],
    //['link', { rel: 'apple-touch-icon', href: '/images/photo.jpg' }],
    ['meta', {
      'http-quiv': 'pragma',
      cotent: 'no-cache'
    }],
    ['meta', {
      'http-quiv': 'pragma',
      cotent: 'no-cache,must-revalidate'
    }],
    ['meta', {
      'http-quiv': 'expires',
      cotent: '0'
    }]
  ],
  serviceWorker: true, // 是否开启 PWA
  base: '/Flutter-Dart-Notes/', // 部署到github相关的配置
  markdown: {
    lineNumbers: true // 代码块是否显示行号
  },
  themeConfig: {
    nav: [ // 导航栏配置	 
      //{text: '公众号推荐', link: '/advertorial/' },
      {
        text: 'Issues',
        link: 'https://github.com/Sogrey/Flutter-Dart-Notes/issues'
      },
      {
        text: 'Android技术面试题',
        link: 'https://sogrey.github.io/Android_QA/'
      },
      {
        text: '前端技术面试题',
        link: 'https://sogrey.github.io/Web-QA/'
      },
      {
        text: 'Github',
        link: 'https://github.com/Sogrey/Flutter-Dart-Notes'
      }
    ],
    sidebar: {
      "/guide/": genGuideSidebar()
    }, // 侧边栏配置
    sidebarDepth: 2 // 侧边栏显示2级
  }
};



function genGuideSidebar() {
  return [{
      title: "引言",
      collapsable: false,
      children: [
        "",
        '基本概念',
        '基本数据类型',
        '变量',
        '运算符（级联运算、条件运算、assert）'
      ]
    }
    // ,
    // {
    //   title: "Dart",
    //   collapsable: false,
    //   children: [
    //     "/dart/",
    //     '/dart/基本概念',
    //     '/dart/基本数据类型',
    //     '/dart/变量',
    //     '/dart/运算符（级联运算、条件运算、assert）'
    //   ]
    // }
  ]
}