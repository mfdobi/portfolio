'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"index.html": "8616348fd1bbcfb97f6a3f778352706f",
"/": "8616348fd1bbcfb97f6a3f778352706f",
"main.dart.js": "f6549665b7414094961cb002623c6991",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "a83bbbd9d23ea4d752fbcd44cdc544fa",
".git/ORIG_HEAD": "f4975f28fa6415d7de2220017a565426",
".git/config": "da6dbaaf1dc17da98af6e00fb3e5ee8a",
".git/objects/61/8a01b98f9d30f7c50c91f31f61f07e0d8df792": "ad81fedff982dbb2dd78237934e6493e",
".git/objects/0d/a9e598459f627dc39c703b196e8a4c65e020e1": "0ce5df4d89cc2976806210bd46e104cc",
".git/objects/0d/411c89c86bb90f41455448f144c89271bd4ade": "84fe2a53e8afabb40fdb59ebcc746d5f",
".git/objects/3e/1ee8f7d442edefdd7110f89601675b1274675b": "0b7eee660bc970fb43f1db260d687cfa",
".git/objects/50/aa15c6542d5866a11d0dc36d7f9205fb292687": "2d389150135e64c6a542f2e340b12dbf",
".git/objects/03/6ae5794ed52ae48a61859ee83e0dd8115e0460": "fc77e3dded501dc2811a1b8f500939b0",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/9b/cff7c80ed0a16a07e8db6e9efe7b0b79523259": "99ff7965857fd9cb1d83bbd00eb894c0",
".git/objects/04/08b3d7c3c78fd86e0dd8145f5eb376b451f162": "3c69c17a4a16eceeacac1cb6c20bad9c",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/69/dd8d09955f47af0c47688243056b8beb59a60f": "aa7bba30c3557187106f4201608bcee7",
".git/objects/69/7612b856b42c7df2f6b11a751697ce3fb59ba5": "eb2c167bd5d2090211aac5d103a33a2d",
".git/objects/56/cb34b7f8bb9dfda46cb113ab3ed7677518d641": "e428c355ab4ee88e955cdd6288a897d4",
".git/objects/56/c2388de8b5d4467155644989bdeb3f1fa4f21e": "c9e33af1984b64e00a9d8a60c420823c",
".git/objects/56/53b64cd9ad88843cd19d2f4a61f5cf6bdcc2c7": "9e3d765efef8e85bbffd6a488ed334b0",
".git/objects/3d/a3a2dc2f0339521e892867ddc20fbe51ef36a5": "c3483178b2bf3f00a329e9f3df40a61a",
".git/objects/0b/ec78e2d17b2b435f476abae5a682fd2ffd9969": "812b27c1a51080271493b894675cd0a8",
".git/objects/0e/37d4906f859fbd643d269c45d875144dced09a": "99e2d4210135b8e46e641cf4e883cc84",
".git/objects/60/b5f2965c2cd452aa7e537a43af216c903e34a2": "17bc65beab457d917f431ee2021db486",
".git/objects/33/4785099c498f2b3cc8bc6789055c343579aa6d": "d2bb0fac9caff5322b2fa66e109b7741",
".git/objects/05/1ae788cf145444b3223195dd7d0ccc73e1733d": "248702fa2dbd1a4013e4d57e0ce93655",
".git/objects/9c/1e30a25562d072d34748d9fe23ee47d45f84cf": "2dcda6df1909e01bfae11154075c3041",
".git/objects/9c/b5c9659b6ef8abcb274ae0350860901ebdaa2e": "02c075dfea28d1e0483b8cb1e7a6d30b",
".git/objects/bb/9b6e3954d6c1c20b392fdf1981aafd522a2007": "a6f3b5ab32264caed028fc2837bbb163",
".git/objects/b4/215524faebe5027e8888f77087235833839a2e": "9e6aeea33f608ff76d48d23a308adeec",
".git/objects/a5/ceab57a8b498bfe04b7cf01959770cbfefdfb5": "bf85da71ebcee1ff24e479436354810e",
".git/objects/bc/48ea1b654fef2006e107c4fa063b2772504800": "b1a473e482f7d79d2734499781f9d530",
".git/objects/ae/12f7c3e43be69dae0c0fa4f8659b1f5dbc8124": "2154f70372fd7af7dfe20395eb6de0cb",
".git/objects/ae/4c0dcb13f8248da629e8cf149029cf89337341": "0e4accb744f50216f09bddd320204e70",
".git/objects/d8/662a5909d0669093e5d40bda30d503f222cdfa": "8692067728d3cc09a67feadfee761d5c",
".git/objects/ab/0e98497a51ead7821d1da35a24968ff314e50f": "557c35fe3928eb2af403d1b3926bb9ba",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/c7/0b100a3e931a84b061489fea2779cfe28d73d3": "d5a961ea0cfdacc644ec611b7760e28e",
".git/objects/fc/103b44a1c5e31b840334aca95535ed469f7753": "a8539a16203f3c697e16c52e366f3f05",
".git/objects/f2/b3fe77717ed7309d1b0cd5634ef319e0834467": "8ed1d0abfcc9ce320d228f3186140a57",
".git/objects/fe/ec8f727b42c8d3e1ac9d88ec5f706f557aa019": "114352e6dc02a59592c58985755170b7",
".git/objects/fb/e18ebc3e612cfe990e3ecfc8f1c201c323ff4d": "41b0a6886ec99eb1c9323f7defc72b72",
".git/objects/ec/7520b820ea05434e6d643caead1e53e347f43c": "dfb8e52bfa09f51ed6ee412b771f6d91",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/18/faa3281bde5cb952542b544b64ef0950120515": "b8bde225c2ee167a2f87a41655fdb3bd",
".git/objects/27/5fdbf807c8537ef98f270c5749ba6e7e2720c0": "45ad1c84b3501eed74b9860f076ae6d8",
".git/objects/27/fcf3e769556daa87aabaf2ec73f29e9140a9f1": "9620ef66deb9450eca745b368e386c72",
".git/objects/11/3fafbfc3b60729ef8067c2c4e4bfc0e0ec832c": "f387b1a93e2548d99bed9027a269acda",
".git/objects/11/587f597d3ad230272ddae5476c991c8cb81e45": "a1dacbe334baec8b359efff750e85714",
".git/objects/16/e5f52f7c63ec71974dec3650fcd649f974a5ec": "f8ffb0fee2cba41b552cd84a29a759e3",
".git/objects/73/83c92152f9f6d7414f2850a356db10b485de05": "76fc82b922b45ad6e21879fe68e98cff",
".git/objects/73/517444a1c91b1a0ab9a8b3256fc1add02c54e6": "af2a8525ac41ff82aa2105f9d57fe49a",
".git/objects/1a/cb64ca867eaeaecd0d0cbe5748a574c46af9d7": "f9f6ea6cdd926a71a8a68c2731489891",
".git/objects/28/35ac67b6544e03b5066ce06deb021e0c0ad92e": "1e60e1ee79a2da607bce3d33fc28007e",
".git/objects/7b/1e3650f7de6c23a65be1e9b5e5b12092e86c80": "77075a8e95a63def71549183e952d66b",
".git/objects/8a/a35d1d9163542004ed01c76d78662ea69e51a9": "913be42577ded00cf329516035fe05e2",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/7e/fd164ffe3afca34154a5d6b8928a6a6aae9bda": "8ce1e2333c51c4ae65752b4298fd5915",
".git/objects/4c/b831d7b685a722ba31d7ce14d540c40b97e602": "fd581e49d81e1690293973850ba49127",
".git/objects/4c/81518b1ba7baff797d6e9357b1ffd32e283621": "844f20034de239867eef31029790356b",
".git/objects/4c/f3e2f25458de907fe4161b2b9f0783f2100b69": "c593d26f444db67f978176d2c11fb10e",
".git/objects/4d/b20387f4df00b10ac712a14170b4311557faaf": "002129caccfbab75a6ab3d2d0fb6e6ed",
".git/objects/75/f38fe9aa054e470fc2c3bcae2435b17d8a483d": "9c70d11722afb7496ca26395a257f3b6",
".git/objects/81/5303bba04a12fbc589b7caa68a0a9dcdcfc9d7": "16c7aff081d5d9ce3a1a555a0ca34632",
".git/objects/72/80bdddbc17dfe709057953d0753e5ffd0f0f2e": "ba56b40d645a0f16807ab3de83ab0ea1",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/07/d0304b509f626118471ce21b4ecbe9b424b6b3": "f4c26e7c0dc53889c4352ba521dc5164",
".git/objects/36/2db9d0505b35a273e73dbb83638ac04a434506": "f1ed63a7a65d8b82cb404af5aac1faf9",
".git/objects/5c/61aaba3cc3bd3670a7b5e160865db2ad7bd118": "1342122d127c3cb2d5cfb129e11cb366",
".git/objects/5c/369239973a9d64621b7630a061328556f75af9": "25448a7273ca2d318ea17b3164d16fca",
".git/objects/5c/a017893b2927c9a549a678278c883a97ef2a0d": "ae6097befff3fad1d76396cd065264d6",
".git/objects/5d/dc8785408b690a720de45ce70fee16959cf24a": "ac477514ec9ce5195c35e7109304eb64",
".git/objects/91/3343c64eec235a348cfcf6b66ac551cfe4c1f0": "59d9273eb5db3c1ee2df5ed0015e4ab5",
".git/objects/65/74775f626888f8c98e05a6171a4a81a41e3af0": "d7ac0e41e5842d8d31987f210b134e60",
".git/objects/62/1d2b019f8477d4f5231fa83f27fc029f4f2721": "0a5000245c82cf3cdba02c8c7fb5a3f5",
".git/objects/3a/8ba415f6c1b8b67d57f1ced4777beb35c6b88d": "bb7b5529b4e92ab70459aaa0a4e272fd",
".git/objects/30/47cb426f242ea979b4fd67f72a2ed4cb6f0fdb": "08b7621c0f15d45844abf7650c1f94c3",
".git/objects/30/fb9f5e31da15cfc5e072c3a34d14564659bcf4": "6ec2f87411464995d455e877916f1dd0",
".git/objects/08/b02634a9b52f26b288214fca0db4da7d6d8d0c": "8a8eea00c5813da9b9c5e3cba64164bc",
".git/objects/6d/3342b189fc7c82f7f9542f58fd66f59ca3cdcb": "95dc6846c63f91192a0e231461a1a357",
".git/objects/39/8a8dac629e2bf50b2c4528209bf27fc58a4901": "d415ee8af5b4335ed1e34c30627b60c9",
".git/objects/99/ade311071a109aba1d7531e89b07f738f2c79e": "b80821f3892f67c7c6d5dde6d8ce198f",
".git/objects/52/e1c591cf1f1ccc28957f38ce87e97bdfaf6062": "f34781b42888ee982fff8aae847dce12",
".git/objects/63/1b090387687b8504eb2d11dcea6a99c38f6e2b": "3f6ab5148601166d6bd0b61e1c6b2c8f",
".git/objects/0f/72b940b1ad0481672aeea5e8d9fc4b32724527": "dc5669cc3dc7f154d7a0311454c27c78",
".git/objects/b1/c25a9d35463d856cbf5a747f7f0e56f074ae12": "fee9696fd9ba7d12a0e2551217127ecf",
".git/objects/b6/e2c512f8a69d02b1e2f3ba6c4dd0e7bc495c24": "769bd6ee9befeb234c548f1ee7ca722e",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/de/cdeb2174256cfb0ac1b0120d4731e47b4d21e3": "ad828284382f2460a90be85067eb909f",
".git/objects/b0/312284ff4947645d9c3c79364a8a6ed569cc23": "9d98b279a33236fcc5b4d3665372e042",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/cd/d6301b350405f2e837ce2fc3597a4a01945603": "92f921881ac8ce6f001422460eca7229",
".git/objects/f0/d16a89e71c23e404a2c138a7088512b14320b9": "3d2071871bebe55dc46f646df99b19c9",
".git/objects/e7/f432b0a801ef62879e870576b65feb97f9d228": "5a47ce3505918552bc8ccb90bc8b1fe9",
".git/objects/e0/6fece1620ced66499e5c13acffc6a7658ff223": "6ce6dbcf6e20a6f6fe98a64f4e33bc4a",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/84/22e67937c42f2aa55c158093359374962f23ff": "b096b3a9f3896f56cd0f082731164e39",
".git/objects/4a/34f6ed1b82f64981f5e53b124950083835b8f4": "a830b2bacb4c9b79673d4080ee0a2442",
".git/objects/23/067d937755e20c0fa05bb0d7d1b538b2a293b4": "6b15d323c573ead2a655b9cc9090748c",
".git/objects/4f/034b58308494e1671b151331128aef8deace41": "f66b73ed22964646e5ce7322643f1ef3",
".git/objects/15/e5a9a841606622904bdef60742d2ba5bc67af9": "8a7749998360d24370666d7943f1b35b",
".git/objects/15/c56646d8c3189b7ce8e845e8a1e4a6cace2a78": "a88dc97890c28278f903ec079b3c3b07",
".git/objects/12/a5f5ae216d611d464b383a4e54b7edace8983d": "cef1de2373f8984550bf9f5210c35627",
".git/objects/85/c3e82f9629fbe90227540316497f9dd8c9f55e": "9fda9a5e7ef2fbfb68e8b870e9517949",
".git/objects/1d/e08b3ad68e4d67fbfbcaea64d0d122f2a3fa82": "0eed742599dc13db1ad0ee2e5a10d326",
".git/objects/1d/63f774c0d3db03d3e5648d315579f34ea2571b": "cc4ae408d885ec197e89be3c9e2e374c",
".git/objects/71/ece60ccef78ed841c0d2625bbf19ae89bd4514": "243e783e3161ada903553e4cfbe9728d",
".git/objects/71/6357442be7b8b1ab6ef13961134875e8302bec": "c6ca2059d111995609733f1652deb3dd",
".git/objects/82/c939fb3bd49797cece72bf45bf315f06284d61": "3594aa7d899e717bdf77b8585f04f121",
".git/objects/82/63f8d5c21e3f323d2547761639b6f0d365e4ca": "8aaa005425df4ec5494d527e51330ad0",
".git/objects/49/30220e3e759374f2616371a6cd6b3a01e9502c": "c60202ec1df584d0958833d7b791bab5",
".git/objects/47/b3c5f76a8af32f6072498923bb5ba2a2f9267d": "c4c40dcd14fca7478c5bd15c4e14c568",
".git/objects/78/0595aaeb3681f76eac480c8d7b07048fd2d5e6": "6fca0bc4f2c8704628186756947fda86",
".git/objects/8b/9a150d4a84d47c6cea925cb2446ecc796a6f6e": "f45a1db7d828b842335bb95c8fa7d78c",
".git/objects/22/9f1eb2a5120364e86f674c412134bb29c08f9f": "5d4e00635d587ab204df5ff4a8fc5ed9",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/info/exclude": "0aebccfd5866bfc3e7c8f625230c22f7",
".git/logs/HEAD": "19d529a781516c0e63caecf8b3bc4240",
".git/logs/refs/heads/master": "eff859913da11006e7959837590f02eb",
".git/logs/refs/remotes/origin/master": "4839c7d9356257a4e3ed6418599e0d1d",
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
".git/refs/heads/master": "ba23aea0af458950068c5f4183c07cb7",
".git/refs/remotes/origin/master": "ba23aea0af458950068c5f4183c07cb7",
".git/index": "f7f13ffb470ec50ec1dcd6b172c5a89f",
".git/COMMIT_EDITMSG": "29c050d597afaa7b98dfa604ba25f173",
".git/FETCH_HEAD": "3be0486fe1e7665315ff9ff55cd98354",
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
