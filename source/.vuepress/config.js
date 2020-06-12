module.exports = {
  port: "3000",
  dest: "Flutter Dart Notes",
  ga: "UA-85414008-1",
  base: "/Flutter-Dart-Notes/",
  markdown: {
    externalLinks: {
      target: '_blank',
      rel: 'noopener noreferrer'
    }
  },
  locales: {
    "/": {
      lang: "zh-CN",
      title: "Flutter Dart Notes",
      description: "notes"
    },
    // "/en/": {
    //   lang: "en-US",
    //   title: "Flutter Dart Notes",
    //   description: "notes"
    // }
  },
  head: [
    ["link", {
      rel: "icon",
      href: `https://sogrey.github.io/favicon.ico`
    }]
  ],
  themeConfig: {
    repo: "Sogrey/Flutter-Dart-Notes",
    docsRepo: "Sogrey/Flutter-Dart-Notes",
    editLinks: true,
    docsDir: 'source',
    locales: {
      "/": {
        label: "简体中文",
        selectText: "选择语言",
        editLinkText: "在 GitHub 上编辑此页",
        lastUpdated: "上次更新",
        nav: [{
          text: "指南",
          link: "/guide/"
        }, {
          text: "参考资料",
          link: "/resources/"
        }, {
          text: "外链",
          items: [{
            text: "Flutter 官网",
            link: "https://flutter.dev/"
          }, {
            text: "Flutter 中文网",
            link: "https://flutter.cn/"
          }, {
            text: "Flutter Github",
            link: "https://github.com/flutter/flutter"
          }, {
            text: "Flutter 官方文档",
            link: "https://flutter.dev/docs"
          }, {
            text: "Flutter 官方示例",
            link: "https://flutter.dev/showcase"
          }]
        }],
        sidebar: {
          "/guide/": genGuideSidebar(true)
        }
      },
      "/en/": {
        label: "English",
        selectText: "Languages",
        editLinkText: "Edit this page on GitHub",
        lastUpdated: "Last Updated",
        nav: [{
          text: "Guide",
          link: "/en/guide/"
        }, {
          text: "Resources",
          link: "/guide/resources/index.html"
        }],
        sidebar: {
          "/en/guide/": genGuideSidebar(false)
        }
      }
    }
  }
};

function genGuideSidebar(isZh) {
  return [{
      title: isZh ? "快速入门" : "Getting Start",
      collapsable: true,
      children: ["", "quick-start"]
    },
    {
      title: "I.Flutter简介",
      collapsable: true,
      children: [
        "I.Flutter简介/01.Flutter 发展历史",
        'I.Flutter简介/02.面向对象及Dart语言',
        'I.Flutter简介/03.Flutter和其他跨平台框架对比',
        'I.Flutter简介/04.环境搭建',
        'I.Flutter简介/05.hello-world',
        'I.Flutter简介/06.Flutter升级'
      ]
    },
    {
      title: "II.Dart语言入门",
      collapsable: true,
      children: [
        "II.Dart语言入门/", //导言
        "II.Dart语言入门/01.Dart开发环境搭建", 
        "II.Dart语言入门/02.Dart 入口", 
        "II.Dart语言入门/03.注释", 
        "II.Dart语言入门/04.变量、常量", 
        "II.Dart语言入门/05.命名规则", 
        "II.Dart语言入门/06.数据类型", 
        "II.Dart语言入门/07.运算符 条件判断 类型转换", 
        "II.Dart语言入门/08.循环语句 for while do-while break continue", 
        "II.Dart语言入门/09.集合 List Set Map", 
        "II.Dart语言入门/10.函数", 
        "II.Dart语言入门/11.类与对象", 
        "II.Dart语言入门/12.泛型 泛型方法 泛型类 泛型接口", 
        "II.Dart语言入门/13.Dart中的库、自定义库、系统库、第三方库", 
      ]
    },
    {
      title: "III.一切皆组件",
      collapsable: true,
      children: ["III.一切皆组件/"]
    },
    {
      title: "IV.事件处理",
      collapsable: true,
      children: ["IV.事件处理/"]
    },
    {
      title: "V.动画",
      collapsable: true,
      children: ["V.动画/"]
    },
    {
      title: "VI.网络",
      collapsable: true,
      children: ["VI.网络/"]
    },
    {
      title: "VII.路由",
      collapsable: true,
      children: ["VII.路由/"]
    },
    {
      title: "VIII.持久化",
      collapsable: true,
      children: ["VIII.持久化/"]
    },
    {
      title: "IX.插件&混合工程",
      collapsable: true,
      children: ["IX.插件&混合工程/"]
    },
    {
      title: "X.Q&A",
      collapsable: true,
      children: ["X.Q&A/"]
    }
  ]
}