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
    "/en/": {
      lang: "en-US",
      title: "Flutter Dart Notes",
      description: "notes"
    }
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
          },{
            text: "参考资料",
            link: "/guide/resources/index.html"
          }
        ],
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
          },{
            text: "Resources",
            link: "/guide/resources/index.html"
          }
        ],
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
      children: ["I.Flutter简介/"]
    },
    {
      title: "II.Dart语言入门",
      collapsable: true,
      children: ["II.Dart语言入门/"]
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