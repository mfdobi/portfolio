'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"index.html": "366b0559310d480061345b36150dd012",
"/": "366b0559310d480061345b36150dd012",
"main.dart.js": "51724d37f65cec23552253e217fbe45e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
".git/config": "da6dbaaf1dc17da98af6e00fb3e5ee8a",
".git/objects/9b/cff7c80ed0a16a07e8db6e9efe7b0b79523259": "99ff7965857fd9cb1d83bbd00eb894c0",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/69/7612b856b42c7df2f6b11a751697ce3fb59ba5": "eb2c167bd5d2090211aac5d103a33a2d",
".git/objects/56/53b64cd9ad88843cd19d2f4a61f5cf6bdcc2c7": "9e3d765efef8e85bbffd6a488ed334b0",
".git/objects/0e/37d4906f859fbd643d269c45d875144dced09a": "99e2d4210135b8e46e641cf4e883cc84",
".git/objects/33/4785099c498f2b3cc8bc6789055c343579aa6d": "d2bb0fac9caff5322b2fa66e109b7741",
".git/objects/b4/215524faebe5027e8888f77087235833839a2e": "9e6aeea33f608ff76d48d23a308adeec",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/c7/0b100a3e931a84b061489fea2779cfe28d73d3": "d5a961ea0cfdacc644ec611b7760e28e",
".git/objects/c0/ec7b0f00d1e4bdce59906f80aaf7beff6ed39c": "cb56978d76ffa966ae484f74f2030640",
".git/objects/fe/ec8f727b42c8d3e1ac9d88ec5f706f557aa019": "114352e6dc02a59592c58985755170b7",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/18/faa3281bde5cb952542b544b64ef0950120515": "b8bde225c2ee167a2f87a41655fdb3bd",
".git/objects/27/5fdbf807c8537ef98f270c5749ba6e7e2720c0": "45ad1c84b3501eed74b9860f076ae6d8",
".git/objects/89/55bf3319af78389e9148ebd3f3de14dbccfc2c": "208662010ad98273cfd02f897a796385",
".git/objects/73/83c92152f9f6d7414f2850a356db10b485de05": "76fc82b922b45ad6e21879fe68e98cff",
".git/objects/8a/a35d1d9163542004ed01c76d78662ea69e51a9": "913be42577ded00cf329516035fe05e2",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/4c/81518b1ba7baff797d6e9357b1ffd32e283621": "844f20034de239867eef31029790356b",
".git/objects/72/80bdddbc17dfe709057953d0753e5ffd0f0f2e": "ba56b40d645a0f16807ab3de83ab0ea1",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/5c/a017893b2927c9a549a678278c883a97ef2a0d": "ae6097befff3fad1d76396cd065264d6",
".git/objects/30/fb9f5e31da15cfc5e072c3a34d14564659bcf4": "6ec2f87411464995d455e877916f1dd0",
".git/objects/99/ade311071a109aba1d7531e89b07f738f2c79e": "b80821f3892f67c7c6d5dde6d8ce198f",
".git/objects/b1/f0477e0c7ce6d98210948ff9c0c1e30d8d4963": "5be2d98ee57f5476d40e6230ec9fb472",
".git/objects/b6/e2c512f8a69d02b1e2f3ba6c4dd0e7bc495c24": "769bd6ee9befeb234c548f1ee7ca722e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/b0/312284ff4947645d9c3c79364a8a6ed569cc23": "9d98b279a33236fcc5b4d3665372e042",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/cd/d6301b350405f2e837ce2fc3597a4a01945603": "92f921881ac8ce6f001422460eca7229",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/79/1e74295957541c3ce2462b21f576f32259ca2f": "df1d6d2828cace1cb497225d9fc51a39",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/83/fa9dd2fad011ef6d7e41c3079fae7477c2f804": "9484234932fe6e2427a8f47946774a78",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/15/e5a9a841606622904bdef60742d2ba5bc67af9": "8a7749998360d24370666d7943f1b35b",
".git/objects/85/c3e82f9629fbe90227540316497f9dd8c9f55e": "9fda9a5e7ef2fbfb68e8b870e9517949",
".git/objects/1d/63f774c0d3db03d3e5648d315579f34ea2571b": "cc4ae408d885ec197e89be3c9e2e374c",
".git/objects/71/ece60ccef78ed841c0d2625bbf19ae89bd4514": "243e783e3161ada903553e4cfbe9728d",
".git/objects/82/c939fb3bd49797cece72bf45bf315f06284d61": "3594aa7d899e717bdf77b8585f04f121",
".git/objects/49/30220e3e759374f2616371a6cd6b3a01e9502c": "c60202ec1df584d0958833d7b791bab5",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "7b22c71016536b46dbea63d12bb6e456",
".git/logs/refs/heads/master": "7b22c71016536b46dbea63d12bb6e456",
".git/logs/refs/remotes/origin/master": "ab86947a797d1f72056cc4d293a21b7f",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "e4db8c12ee125a8a085907b757359ef0",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ecbb0cb5ffb7d773cd5b2407b210cc3b",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "3c5989301dd4b949dfa1f43738a22819",
".git/hooks/update.sample": "517f14b9239689dff8bda3022ebd9004",
".git/refs/heads/master": "f8ced0fa0f20f5e91f5c109fa508a28c",
".git/refs/remotes/origin/master": "f8ced0fa0f20f5e91f5c109fa508a28c",
".git/index": "87de697ec17b712d1fb0c642e3423f63",
".git/COMMIT_EDITMSG": "a6bd4949b8388ef43d06657e700172db",
"assets/AssetManifest.json": "d0b7ab5e926ef1a39df031c37dc9d0fa",
"assets/NOTICES": "4a0b4e991ebf61c71c52afadd8e1d8b0",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/gallery.png": "206cddbf3cc6cd7f17c668bf611c8872",
"assets/assets/Instagram.png": "741302e40b24d22827f80962b46285c5",
"assets/assets/balkonmanet_detected.jpg": "6047142a54368a0663206f7cfddf1399",
"assets/assets/phone_background.jpg": "3eea27332aa314e7e85b800a8b7e02c4",
"assets/assets/latest.png": "67312d181d32171474e652fe3a8fe527",
"assets/assets/ig_icon.png": "1c9c22b3469abd52f4f6210416acab68",
"assets/assets/tw_icon.png": "f4f7c5d590701f82de4308ca0099ef85",
"assets/assets/twitter.png": "8a2513904db59eb9aa7707b54aebf07b",
"assets/assets/linkedin.png": "3d06eba0c3b3e51aa7ce6c7bef987fb1",
"assets/assets/AppIcon.png": "1d3b8ac1f73422ccf35df8740b9b2420",
"assets/assets/li_icon.png": "2f813ab31f530a4194e42694683cc1f8",
"assets/assets/4.jpg": "a21a17b2617528c85132ad6dbd1dc0f0",
"assets/assets/5.jpg": "a52f0d365af1b25fe7670bd69809f87f",
"assets/assets/2.jpg": "47c193fd665c33353f6022cc14967498",
"assets/assets/3.jpg": "c5510b7552f42ee436851057e04d0c94",
"assets/assets/1.jpg": "5e2e610c4949b960a1f2e04413e5af1d"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
