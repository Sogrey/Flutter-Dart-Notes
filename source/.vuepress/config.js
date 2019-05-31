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
          },
          {
            text: "配置",
            link: "/config/"
          }
        ],
        sidebar: {
          "/guide/": genGuideSidebar(true),
          "/config/": genConfigSidebar(true)
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
          },
          {
            text: "Config",
            link: "/en/config/"
          }
        ],
        sidebar: {
          "/en/guide/": genGuideSidebar(false),
          "/en/config/": genConfigSidebar(false)
        }
      }
    }
  }
};

function genGuideSidebar(isZh) {
  return [{
      title: isZh ? "快速入门" : "Getting Start",
      collapsable: false,
      children: ["", "quick-start"]
    },
    {
      title: isZh ? "核心功能" : "Core",
      collapsable: false,
      children: ["generator"]
    }
  ]
}

function genConfigSidebar(isZh) {
  return [{
    title: isZh ? "配置" : "Config",
    collapsable: false,
    children: [""]
  }]
}