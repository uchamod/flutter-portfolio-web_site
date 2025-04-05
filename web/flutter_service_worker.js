'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "00e60515b7c5522a210e5e328f3942bd",
"assets/AssetManifest.bin.json": "9f078deb2dcb74ef4125f755d5313e2c",
"assets/AssetManifest.json": "e2ea3c9c09c4e1b64a202fcb0d1c5e5d",
"assets/assets/avatar.jpg": "46b3738c990cd9c53bf203be35f38169",
"assets/assets/icons8-android-48.png": "1873803daedc7db9f2d502ddbed1d2d5",
"assets/assets/icons8-dart-100.png": "9c071ab1743826fd0eeeba9c95adc0a5",
"assets/assets/icons8-figma-100.png": "5ac09558082ebed683530ee30f91b8f5",
"assets/assets/icons8-firebase-100.png": "823e48d60a387d9dd01219334f829792",
"assets/assets/icons8-flutter-100.png": "16146638fb7793b9b9b0f79f7723f3a8",
"assets/assets/icons8-github-48.png": "a2a97d6ce59aa3f6119781b6d726b2fb",
"assets/assets/icons8-java-100.png": "b82c0d65877c828fe8d139b1e5eb393d",
"assets/assets/icons8-spring-boot-100.png": "28381fd8d262a00b2821deaf4c9dada0",
"assets/assets/icons8-web-50.png": "3a013a758f184486a689660292806de8",
"assets/assets/photo_2024-05-10_00-31-29.jpg": "0386ac0fc8adf56584f251fac9266c4e",
"assets/assets/project_imags/AX8Cj.png": "c160c2dafc7f71325bd83d942481ffa1",
"assets/assets/project_imags/Desktop%2520-%25201@2x.png": "9dd3fb424dfe2af3a141285ecbf3e430",
"assets/assets/project_imags/Employee-Management.jpg": "9520bc3fc55e2f14bf7bcbba418369d7",
"assets/assets/project_imags/Frame%25201.png": "8a56c2a541ef16a6ab411da8ff8cfa0d",
"assets/assets/project_imags/Frame%2520294.png": "b030617bbe4ace360a4a94f0be36a1d8",
"assets/assets/project_imags/Frame%252056.png": "59cf87dbac030152dd048c5ba09f36d8",
"assets/assets/social/icons8-facebook-100.png": "aceac5614ca69040f4ef81645aed17fc",
"assets/assets/social/icons8-github-48.png": "a2a97d6ce59aa3f6119781b6d726b2fb",
"assets/assets/social/icons8-linked-in-100.png": "486458d65852a9a8c64e1fae842eb622",
"assets/assets/social/icons8-medium-100%2520(1).png": "75a9dbd0dcaf90704697450b1b3bd385",
"assets/assets/social/icons8-medium-48.png": "c4e3af1a890eeed083b418d3aab51a24",
"assets/assets/social/icons8-telegram-100.png": "5226e5afa7ee88e0117e5260abce89c8",
"assets/assets/WhatsApp%2520Image%25202024-04-29%2520at%252016.24.13_390fd0d6.jpg": "d70dc5847b671343a7dba025a9f14bf8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "af3bbad2499b811fc87ba96b0789c860",
"assets/NOTICES": "c777af17ca0623ef0acb023ad1dd66b1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "741c4ccf519ec9844b3c37653a104e46",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "d2ce5d0b6bd59e9550aa4cf1f7b83fad",
"/": "d2ce5d0b6bd59e9550aa4cf1f7b83fad",
"main.dart.js": "25fd2b937bcfecdf2861f566db247c23",
"manifest.json": "44b675d85da677daf7bdcfaa8d306ee7",
"version.json": "c0936cdc4104fe390aad281cadc0f026"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
