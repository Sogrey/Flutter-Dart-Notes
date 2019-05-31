/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/3.6.3/workbox-sw.js");

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "404.html",
    "revision": "a4d1e60fdffa6f5b9011f7e8a140d034"
  },
  {
    "url": "assets/css/0.styles.9fa43335.css",
    "revision": "1da0d8b50180234ce511a1a8cd8fca37"
  },
  {
    "url": "assets/img/search.83621669.svg",
    "revision": "83621669651b9a3d4bf64d1a670ad856"
  },
  {
    "url": "assets/js/2.567fac94.js",
    "revision": "ac3c07dd1687b332f8d66d63c115fd6c"
  },
  {
    "url": "assets/js/3.532d2dc1.js",
    "revision": "71ff6a148e454c5cdcc606d2a881a8b4"
  },
  {
    "url": "assets/js/4.3cbe7e3d.js",
    "revision": "c5f3fb1a3c6a00846f88f9e68fef7058"
  },
  {
    "url": "assets/js/5.ae1daa3a.js",
    "revision": "69c79649d3600fda603019f21964d4fd"
  },
  {
    "url": "assets/js/6.ff15abdd.js",
    "revision": "eb5e8e77ed541e95e34d86ad35745085"
  },
  {
    "url": "assets/js/7.182f6488.js",
    "revision": "f33b2de92a16dbd76784bf3b7e688721"
  },
  {
    "url": "assets/js/8.de3be3cc.js",
    "revision": "f006a8d12121e4946413a4730932185c"
  },
  {
    "url": "assets/js/9.b01521cb.js",
    "revision": "1f7d64e683db05eb1dc587b15591d76d"
  },
  {
    "url": "assets/js/app.41076183.js",
    "revision": "1badf2602b32ab197e9284b9f1277ada"
  },
  {
    "url": "dart/变量.html",
    "revision": "3de4b90a7c82341baef1c13470d225f6"
  },
  {
    "url": "dart/基本数据类型.html",
    "revision": "3cf14950a68b2ad7f548e8d1f0b216e2"
  },
  {
    "url": "dart/基本概念.html",
    "revision": "2ed06503351919124ae483589c434c2d"
  },
  {
    "url": "dart/运算符（级联运算、条件运算、assert）.html",
    "revision": "0a05c6bc4ca7fa132b741d125f05ad30"
  },
  {
    "url": "guide.html",
    "revision": "682cb35c86edab2b75b63de34f43f738"
  },
  {
    "url": "images/photo.png",
    "revision": "d516236d3ed062cf7b2273a5afe5b482"
  },
  {
    "url": "index.html",
    "revision": "f4ea70c7de803fc7587372230ffbde46"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.suppressWarnings();
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
addEventListener('message', event => {
  const replyPort = event.ports[0]
  const message = event.data
  if (replyPort && message && message.type === 'skip-waiting') {
    event.waitUntil(
      self.skipWaiting().then(
        () => replyPort.postMessage({ error: null }),
        error => replyPort.postMessage({ error })
      )
    )
  }
})
