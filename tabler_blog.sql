/*
Navicat MySQL Data Transfer

Source Server         : localhost_33060
Source Server Version : 50717
Source Host           : localhost:33060
Source Database       : tabler_blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-30 15:56:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_tag
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('1', '4', '1');
INSERT INTO `article_tag` VALUES ('2', '4', '2');
INSERT INTO `article_tag` VALUES ('3', '1', '1');
INSERT INTO `article_tag` VALUES ('4', '1', '2');
INSERT INTO `article_tag` VALUES ('5', '1', '3');
INSERT INTO `article_tag` VALUES ('6', '2', '4');
INSERT INTO `article_tag` VALUES ('7', '3', '1');
INSERT INTO `article_tag` VALUES ('8', '3', '2');
INSERT INTO `article_tag` VALUES ('9', '3', '3');
INSERT INTO `article_tag` VALUES ('10', '3', '4');

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `published_at` datetime NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '1', 'article 1article 1 article 1 article 1 article 1 article 1 article 1article 1 article 1 article 1 article 1 article 1', 'article 1', '<p>We&rsquo;ve created this admin panel for everyone who wants to create any templates based on our ready components. Our mission is to deliver a user-friendly, clear and easy administration panel, that can be used by both, simple websites and sophisticated systems. The only requirement is a basic HTML and CSS knowledge&mdash;as a reward, you&rsquo;ll be able to manage and visualize different types of data in the easiest possible way!</p>\r\n<h3>Setup environment</h3>\r\n<p>To use our build system and run our documentation locally, you&rsquo;ll need a copy of Tabler&rsquo;s source files and Node. Follow these steps:</p>\r\n<ol>\r\n<li><a href=\"https://nodejs.org/download/\" target=\"_blank\" rel=\"noopener noreferrer\">Download and install Node.js</a>, which we use to manage our dependencies.</li>\r\n<li>Navigate to the root <code>/tabler</code> directory and run npm install to install our local dependencies listed in <code>package.json</code>.</li>\r\n<li>\r\n<p><a href=\"https://www.ruby-lang.org/en/documentation/installation/\">Install Ruby</a>, install <a href=\"https://bundler.io/\">Bundler</a> with <code class=\"highlighter-rouge\">gem install bundler</code>, and finally run <code class=\"highlighter-rouge\">bundle install</code>. This will install all Ruby dependencies, such as Jekyll and plugins.</p>\r\n<p><strong>Windows users:</strong> Read <a href=\"https://jekyllrb.com/docs/windows/\">this guide</a> to get Jekyll up and running without problems.</p>\r\n</li>\r\n</ol>\r\n<p>When completed, you&rsquo;ll be able to run the various commands provided from the command line.</p>\r\n<h3 id=\"build-tabler-locally\">Build Tabler locally</h3>\r\n<ol>\r\n<li>From the root <code class=\"highlighter-rouge\">/tabler</code> directory, run <code class=\"highlighter-rouge\">npm run serve</code> in the command line.</li>\r\n<li>Open <a href=\"http://localhost:4000\">http://localhost:4000</a> in your browser, and voil&agrave;.</li>\r\n<li>Any change in <code class=\"highlighter-rouge\">/src</code> directory will build application and refresh the page.</li>\r\n</ol>\r\n<div class=\"alert alert-warning\"><strong>Warning!</strong> all changes made in <code>_site/</code> folder would be overwriten on application build.</div>\r\n<h3 id=\"bugs-and-feature-requests\">Bugs and feature requests</h3>\r\n<p>Have a bug or a feature request? <a href=\"https://github.com/tabler/tabler/issues/new\">Please open a new issue</a>.</p>', 'articles/July2018/g5AOJ3LOONPtQXUdTyqE.jpg', 'article-1', '1', '2018-06-25 00:00:00', 'article 1', 'article 1', 'article 1', '2018-06-25 09:04:00', '2018-07-30 06:55:34');
INSERT INTO `articles` VALUES ('2', '1', '文章22吖吖吖吖吖', 'article 2', '<h3>注意事项</h3>\r\n<p>==如果用了userId，那么必须GTM的任何UA tag设置中也加上字段userId，不然就无法匹配userId导致UA无法记录！！！切记！坑了我两天啊啊啊啊！==</p>\r\n<p>https://developers.google.com/tag-manager/enhanced-ecommerce</p>\r\n<p>本指南介绍如何在网站上使用Google跟踪代码管理器实施Universal Analytics增强型电子商务功能。</p>\r\n<h2>概观</h2>\r\n<p>Google Analytics增强型电子商务功能可以将产品印象，促销和销售数据随任何Google Analytics网页浏览和活动一起发送。使用综合浏览量来跟踪产品展示次数和产品购买量;并使用事件来跟踪结帐步骤和产品点击。</p>\r\n<h2>开始之前</h2>\r\n<p>建议阅读<a href=\"https://developers.google.com/analytics/devguides/collection/analyticsjs/enhanced-ecommerce#ecommerce-data\">增强型电子商务数据的类型和操作</a>，该指南将帮助您了解要测量的每个电子商务交互所需的字段和可选字段。</p>\r\n<h2>启用增强型电子商务</h2>\r\n<p>在大多数实施中，您应在每个谷歌分析网页浏览或者事件的代码上启用增强型电子商务功能。在web版的tag编辑器界面（如果使用函数来部署UA的话，现在在函数设置里），您有两个启用增强型电子商务的选项：</p>\r\n<ol>\r\n<li>Implement using the Data Layer (Recommended)</li>\r\n<li>Implement using a Custom JavaScript Macro 尽管这两种方法都提供了等效的电子商务功能，但我们建议所有支持数据层的网站都使用数据层方法。本指南将数据层方法作为默认值，而在本指南的末尾记录了使用自定义JavaScript宏。</li>\r\n</ol>\r\n<h2>使用数据层</h2>\r\n<h3>衡量产品印象(也就是在产品列表页面的浏览)</h3>\r\n<ul>\r\n<li>电子商务衡量：<em>impressions</em></li>\r\n<li>接受数据：array of <em>impressionFieldObjects</em> 使用<em>impressions</em>动作和其他<em>impressionFieldObjects</em>对象来衡量产品印象，以下示例假设在页面加载时已知有关页面上显示的产品的详细信息：</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n// Measures product impressions and also tracks a standard\r\n// pageview for the tag configuration.\r\n// Product impressions are sent by pushing an impressions object\r\n// containing one or more impressionFieldObjects.\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'currencyCode\': \'EUR\',                       // Local currency is optional.\r\n    \'impressions\': [\r\n     {\r\n       \'name\': \'Triblend Android T-Shirt\',       // Name or ID is required.\r\n       \'id\': \'12345\',\r\n       \'price\': \'15.25\',\r\n       \'brand\': \'Google\',\r\n       \'category\': \'Apparel\',\r\n       \'variant\': \'Gray\',\r\n       \'list\': \'Search Results\',\r\n       \'position\': 1\r\n     },\r\n     {\r\n       \'name\': \'Donut Friday Scented T-Shirt\',\r\n       \'id\': \'67890\',\r\n       \'price\': \'33.75\',\r\n       \'brand\': \'Google\',\r\n       \'category\': \'Apparel\',\r\n       \'variant\': \'Black\',\r\n       \'list\': \'Search Results\',\r\n       \'position\': 2\r\n     }]\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>本例的标签配置（在web上）：</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<p>==注意这个Trigger并不需要设置某些自定义事件 event equals gtm.dom，而只需要设置成&ldquo;所有自定义事件&rdquo;即可，因为Event name本身就限定了event，某些自定义事件是在这个基础上的更多限定。==</p>\r\n<h3>衡量产品点击（在产品列表页点击产品）</h3>\r\n<ul>\r\n<li>Ecommerce Measurement: click</li>\r\n<li>Accepts Data: list, array of productFieldObjects 通过向数据层推送<em>click</em>操作来衡量产品链接的点击，以及使用productFieldObject来表示所点击的产品，如下例所示：</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n/**\r\n * Call this function when a user clicks on a product link. This function uses the event\r\n * callback datalayer variable to handle navigation after the ecommerce data has been sent\r\n * to Google Analytics.\r\n * @param {Object} productObj An object representing a product.\r\n */\r\nfunction(productObj) {\r\n  dataLayer.push({\r\n    \'event\': \'productClick\',\r\n    \'ecommerce\': {\r\n      \'click\': {\r\n        \'actionField\': {\'list\': \'Search Results\'},      // Optional list property.\r\n        \'products\': [{\r\n          \'name\': productObj.name,                      // Name or ID is required.\r\n          \'id\': productObj.id,\r\n          \'price\': productObj.price,\r\n          \'brand\': productObj.brand,\r\n          \'category\': productObj.cat,\r\n          \'variant\': productObj.variant,\r\n          \'position\': productObj.position\r\n         }]\r\n       }\r\n     },\r\n     \'eventCallback\': function() {\r\n       document.location = productObj.url\r\n     }\r\n  });\r\n}\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>上例的Tag Configuration：</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Product Click\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals productClick\r\n</code></pre>\r\n<p>==这个productObj就是一个js对象==</p>\r\n<h3>衡量查看产品细节（进入产品内页）</h3>\r\n<ul>\r\n<li>Ecommerce Measurement: detail</li>\r\n<li>Accepts Data: list, array of productFieldObjects 通过将<em>detail</em>操作推送到数据层，以及一个或多个代表正在查看的产品的productFieldObjects来测量产品详细信息的视图：</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n// Measure a view of product details. This example assumes the detail view occurs on pageload,\r\n// and also tracks a standard pageview of the details page.\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'detail\': {\r\n      \'actionField\': {\'list\': \'Apparel Gallery\'},    // \'detail\' actions have an optional list property.\r\n      \'products\': [{\r\n        \'name\': \'Triblend Android T-Shirt\',         // Name or ID is required.\r\n        \'id\': \'12345\',\r\n        \'price\': \'15.25\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Gray\'\r\n       }]\r\n     }\r\n   }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<h3>衡量从购物车测量添加或删除的动作</h3>\r\n<ul>\r\n<li>Ecommerce Measurement: add, remove</li>\r\n<li>Accepts Data: list, array of productFieldObjects 同样，您可以使用添加或删除actionFieldObject和productFieldObjects列表来衡量购物车中的添加或删除操作：</li>\r\n</ul>\r\n<h4>add</h4>\r\n<pre><code>// Measure adding a product to a shopping cart by using an \'add\' actionFieldObject\r\n// and a list of productFieldObjects.\r\ndataLayer.push({\r\n  \'event\': \'addToCart\',\r\n  \'ecommerce\': {\r\n    \'currencyCode\': \'EUR\',\r\n    \'add\': {                                // \'add\' actionFieldObject measures.\r\n      \'products\': [{                        //  adding a product to a shopping cart.\r\n        \'name\': \'Triblend Android T-Shirt\',\r\n        \'id\': \'12345\',\r\n        \'price\': \'15.25\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Gray\',\r\n        \'quantity\': 1\r\n       }]\r\n    }\r\n  }\r\n});\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Add to Cart\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals addToCart\r\n</code></pre>\r\n<h4>remove</h4>\r\n<pre><code>// Measure the removal of a product from a shopping cart.\r\ndataLayer.push({\r\n  \'event\': \'removeFromCart\',\r\n  \'ecommerce\': {\r\n    \'remove\': {                               // \'remove\' actionFieldObject measures.\r\n      \'products\': [{                          //  removing a product to a shopping cart.\r\n          \'name\': \'Triblend Android T-Shirt\',\r\n          \'id\': \'12345\',\r\n          \'price\': \'15.25\',\r\n          \'brand\': \'Google\',\r\n          \'category\': \'Apparel\',\r\n          \'variant\': \'Gray\',\r\n          \'quantity\': 1\r\n      }]\r\n    }\r\n  }\r\n});\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Remove from Cart\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals removeFromCart\r\n</code></pre>\r\n<h3>衡量促销</h3>\r\n<p>您可以衡量内部网站促销活动的展示次数和点击次数，例如网站上展示的横幅广告，展示特定产品页面的销售量，或免费送货的效果。</p>\r\n<ul>\r\n<li>Ecommerce Measurement: promoView</li>\r\n<li>Accepts Data: array of promoFieldObjects 要衡量促销印象，请将电子商务数据图层的var中的promoView关键字设置为描述显示给页面上用户的促销的promoFieldObject：</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n// An example of measuring promotion views. This example assumes that\r\n// information about the promotions displayed is available when the page loads.\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'promoView\': {\r\n      \'promotions\': [                     // Array of promoFieldObjects.\r\n       {\r\n         \'id\': \'JUNE_PROMO13\',            // ID or Name is required.\r\n         \'name\': \'June Sale\',\r\n         \'creative\': \'banner1\',\r\n         \'position\': \'slot1\'\r\n       },\r\n       {\r\n         \'id\': \'FREE_SHIP13\',\r\n         \'name\': \'Free Shipping Promo\',\r\n         \'creative\': \'skyscraper1\',\r\n         \'position\': \'slot2\'\r\n       }]\r\n    }\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<p>注意：尽管设置带有促销展示的操作是可以接受的，但操作并不是promoClick。如果您打算测量promoClick动作，则应该在promoView之后单独进行，下面就是促销点击的实施。</p>\r\n<h3>衡量促销点击次数</h3>\r\n<p>要衡量点击促销活动，请将promoClick操作推送到数据层，并使用包含描述点击促销活动的promoFieldObject的数组：</p>\r\n<pre><code>&lt;script&gt;\r\n/**\r\n * Call this function when a user clicks on a promotion. This function uses the eventCallBack\r\n * datalayer variable to handle navigation after the ecommerce data is sent to Google Analytics.\r\n *\r\n * @param {Object} promoObj An object representing an internal site promotion.\r\n */\r\nfunction onPromoClick(promoObj) {\r\n  dataLayer.push({\r\n    \'event\': \'promotionClick\',\r\n    \'ecommerce\': {\r\n      \'promoClick\': {\r\n        \'promotions\': [\r\n         {\r\n           \'id\': promoObj.id,                         // Name or ID is required.\r\n           \'name\': promoObj.name,\r\n           \'creative\': promoObj.creative,\r\n           \'position\': promoObj.pos\r\n         }]\r\n      }\r\n    },\r\n    \'eventCallback\': function() {\r\n      document.location = promoObj.destinationUrl;\r\n    }\r\n  });\r\n}\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Promotion Click\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals promotionClick\r\n</code></pre>\r\n<p>注意：使用分开的hit来发送产品信息，不要包含在promo click中</p>\r\n<h3>衡量结算</h3>\r\n<p>要衡量结帐过程中的每一步，您需要：</p>\r\n<ul>\r\n<li>使用checkout action来衡量结帐过程的每个步骤。</li>\r\n<li>如果适用，使用checkout_option action来衡量结帐选项。</li>\r\n<li>通过在Web界面的&ldquo;管理&rdquo;部分配置&ldquo;电子商务设置&rdquo;，可以为结帐渠道报告设置用户友好的步骤名称。</li>\r\n</ul>\r\n<h4>1.衡量结账步骤</h4>\r\n<ul>\r\n<li>Ecommerce Measurement: checkout</li>\r\n<li>Accepts Data: step, array of productFieldObjects 要测量结帐过程（可能包括结帐按钮和用户输入运输和付款信息的一个或多个结帐页面），使用checkout 动作和step字段来判断处于支付流程的哪一步。你也可以使用option字段来附加一些页面数据，例如用户选择的付款类型。</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n/**\r\n * A function to handle a click on a checkout button. This function uses the eventCallback\r\n * data layer variable to handle navigation after the ecommerce data has been sent to Google Analytics.\r\n */\r\nfunction onCheckout() {\r\n  dataLayer.push({\r\n    \'event\': \'checkout\',\r\n    \'ecommerce\': {\r\n      \'checkout\': {\r\n        \'actionField\': {\'step\': 1, \'option\': \'Visa\'},\r\n        \'products\': [{\r\n          \'name\': \'Triblend Android T-Shirt\',\r\n          \'id\': \'12345\',\r\n          \'price\': \'15.25\',\r\n          \'brand\': \'Google\',\r\n          \'category\': \'Apparel\',\r\n          \'variant\': \'Gray\',\r\n          \'quantity\': 1\r\n       }]\r\n     }\r\n   },\r\n   \'eventCallback\': function() {\r\n      document.location = \'checkout.html\';\r\n   }\r\n  });\r\n}\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Checkout\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals checkout \r\n</code></pre>\r\n<h4>2.衡量结账选项</h4>\r\n<ul>\r\n<li>Ecommerce Measurement: checkout_option</li>\r\n<li>Accepts Data: step, option 如果您已经测量了结帐步骤，但想要捕获这步结帐步骤的其他信息，则结帐选项非常有用。例如，用户选择的运输方式。要度量这一点，请使用checkout_option操作以及step和option字段。</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n/**\r\n * A function to handle a click leading to a checkout option selection.\r\n */\r\nfunction onCheckoutOption(step, checkoutOption) {\r\n  dataLayer.push({\r\n    \'event\': \'checkoutOption\',\r\n    \'ecommerce\': {\r\n      \'checkout_option\': {\r\n        \'actionField\': {\'step\': step, \'option\': checkoutOption}\r\n      }\r\n    }\r\n  });\r\n}\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Event\r\nEvent Category: Ecommerce\r\nEvent Action: Checkout Option\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals checkoutOption \r\n</code></pre>\r\n<h4>3.结帐漏斗配置</h4>\r\n<p>可选的，可以为结帐过程中的每个步骤指定一个将在报告中使用的描述性名称。要配置这些名称，请访问Google Analyticsweb界面的管理部分，选择视图（个人资料），然后点击电子商务设置。按照电子商务设置说明标记您要跟踪的每个结帐步骤。</p>\r\n<h2>衡量购买</h2>\r\n<ul>\r\n<li>Ecommerce Measurement: purchase</li>\r\n<li>Accepts Data: id (Transaction ID), array of productFieldObjects</li>\r\n</ul>\r\n<p>使用purchase动作将您的交易详细信息推送到数据层，同时发送启用增强的电子商务启用标签的event。在这个例子中，事务的详细信息在页面加载的时候是已知的，并且在gtm.js脚本返回的时候发送给谷歌分析：</p>\r\n<pre><code>&lt;script&gt;\r\n// Send transaction data with a pageview if available\r\n// when the page loads. Otherwise, use an event when the transaction\r\n// data becomes available.\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'purchase\': {\r\n      \'actionField\': {\r\n        \'id\': \'T12345\',                         // Transaction ID. Required for purchases and refunds.\r\n        \'affiliation\': \'Online Store\',\r\n        \'revenue\': \'35.43\',                     // Total transaction value (incl. tax and shipping)\r\n        \'tax\':\'4.90\',\r\n        \'shipping\': \'5.99\',\r\n        \'coupon\': \'SUMMER_SALE\'\r\n      },\r\n      \'products\': [{                            // List of productFieldObjects.\r\n        \'name\': \'Triblend Android T-Shirt\',     // Name or ID is required.\r\n        \'id\': \'12345\',\r\n        \'price\': \'15.25\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Gray\',\r\n        \'quantity\': 1,\r\n        \'coupon\': \'\'                            // Optional fields may be omitted or set to empty string.\r\n       },\r\n       {\r\n        \'name\': \'Donut Friday Scented T-Shirt\',\r\n        \'id\': \'67890\',\r\n        \'price\': \'33.75\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Black\',\r\n        \'quantity\': 1\r\n       }]\r\n    }\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<h2>衡量退款</h2>\r\n<ul>\r\n<li>Ecommerce Measurement: refund</li>\r\n<li>Accepts Data: id (Transaction ID), array of productFieldObjects 要衡量交易的全额退款，请将退款actionFieldObject和退款交易的transaction ID一起推送：</li>\r\n</ul>\r\n<pre><code>&lt;script&gt;\r\n// Refund an entire transaction by providing the transaction ID. This example assumes the details\r\n// of the completed refund are available when the page loads:\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'refund\': {\r\n      \'actionField\': {\'id\': \'T12345\'}         // Transaction ID. Required for purchases and refunds.\r\n    }\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<p>要衡量部分退款，请添加productFieldObjects lists，其中包括正在退款的产品ID和数量：</p>\r\n<pre><code>&lt;script&gt;\r\n// Measure a partial refund by providing an array of productFieldObjects and specifying the ID and\r\n// quantity of each product being returned. This example assumes the partial refund details are\r\n// known at the time the page loads:\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'refund\': {\r\n      \'actionField\': {\'id\': \'T12345\'},        // Transaction ID.\r\n      \'products\': [\r\n            {\'id\': \'P4567\', \'quantity\': 1},   // Product ID and quantity. Required for partial refunds.\r\n            {\'id\': \'P8901\',\'quantity\': 2}\r\n       ]\r\n     }\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<h2>传递产品范围的自定义维度</h2>\r\n<p>要将产品范围的自定义维度传递给电子商务对象，请使用以下表示法将其添加到产品中：</p>\r\n<pre><code>dimensionn\r\n</code></pre>\r\n<p>其中末尾的n是自然数，例如：</p>\r\n<pre><code>&lt;script&gt;\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'purchase\': {\r\n      ...\r\n\r\n      \'products\': [{\r\n        \'name\': \'Triblend Android T-Shirt\',\r\n        \'id\': \'12345\',\r\n        \'price\': \'15.25\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Gray\',\r\n        \'dimension1\': \'Same day delivery\'\r\n       }]\r\n     }\r\n   }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<h2>传递产品范围的自定义指标</h2>\r\n<p>要将产品范围的自定义指标传递给电子商务对象，请使用以下表示法将其添加到产品中：</p>\r\n<pre><code>metricn\r\n</code></pre>\r\n<p>其中末尾的n是自然数，例如：</p>\r\n<pre><code>&lt;script&gt;\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'purchase\': {\r\n      ...\r\n\r\n      \'products\': [{\r\n        \'name\': \'Goal Flow Garden Hose\',\r\n        \'id\': \'p001\',\r\n        \'brand\': \'Google Analytics\',\r\n        \'category\': \'Home Goods\',\r\n        \'variant\': \'Green\',\r\n        \'price\': \'20\',\r\n        \'quantity\': 1,\r\n        \'metric3\': \'10\'  // Custom metric \'Cost\'\r\n       }]\r\n     }\r\n   }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<h2>展示次数和操作相结合</h2>\r\n<p>如果您同时拥有产品展示和操作，则可以在一次hit中合并和衡量这些展示和操作。 <strong>只能在一次hit中为每个productFieldObjects数组发送一个动作。但是，您可以同时也在这次hit中发送展示数据。</strong> 下面的示例显示了如何衡量一个 product detail view 和 product impressions 从一个相关产品部分。</p>\r\n<pre><code>&lt;script&gt;\r\ndataLayer.push({\r\n  \'ecommerce\': {\r\n    \'impressions\': [\r\n     {\r\n       \'name\': \'Triblend Android T-Shirt\',        // Name or ID is required.\r\n       \'id\': \'12345\',\r\n       \'price\': \'15.25\',\r\n       \'brand\': \'Google\',\r\n       \'category\': \'Apparel\',\r\n       \'variant\': \'Gray\',\r\n       \'list\': \'Related Products\',\r\n       \'position\': 1\r\n     },\r\n     {\r\n       \'name\': \'Donut Friday Scented T-Shirt\',\r\n       \'id\': \'67890\',\r\n       \'price\': \'33.75\',\r\n       \'brand\': \'Google\',\r\n       \'category\': \'Apparel\',\r\n       \'variant\': \'Black\',\r\n       \'list\': \'Related Products\',\r\n       \'position\': 2\r\n     }],\r\n    \'detail\': {\r\n      \'actionField\': {\'list\': \'Apparel Gallery\'}  // \'detail\' actions have an optional list property.\r\n      \'products\': [{\r\n        \'name\': \'Triblend Android T-Shirt\',       // Name or ID is required.\r\n        \'id\': \'12345\',\r\n        \'price\': \'15.25\',\r\n        \'brand\': \'Google\',\r\n        \'category\': \'Apparel\',\r\n        \'variant\': \'Gray\'\r\n       }]\r\n     }\r\n  }\r\n});\r\n&lt;/script&gt;\r\n</code></pre>\r\n<p>Tag configuration</p>\r\n<pre><code>Tag type : Universal Analytics\r\nTrack type : Pageview\r\nEnable Enhanced Ecommerce Features: true\r\nUse Data Layer: true\r\nTrigger: event equals gtm.dom\r\n</code></pre>\r\n<h2>最后是使用 Custom JavaScript Macro 的实现方式，这里就不翻译了</h2>', 'articles/June2018/hoFcH2Auo2aPXiWYMKGN.jpg', 'article-2', '1', '2018-06-25 00:00:00', 'article 2', 'article 2', 'article 2', '2018-06-25 09:05:00', '2018-07-30 06:34:51');
INSERT INTO `articles` VALUES ('3', '1', 'article 3', null, null, null, 'article-3', '0', '2018-06-26 00:00:00', null, null, null, '2018-06-26 03:17:54', '2018-07-27 08:16:18');
INSERT INTO `articles` VALUES ('4', '1', 'article 4', null, null, null, 'article-4', '0', '2018-07-27 00:00:00', null, null, null, '2018-06-26 03:20:00', '2018-07-27 08:49:36');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` tinyint(4) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '1', '分类1', 'category-1', 'categories/June2018/ax8t2qn4wwWyx3YgBX44.jpg', null, null, null, '2018-06-25 08:59:35', '2018-07-27 07:51:09');
INSERT INTO `categories` VALUES ('2', '1', 'Category 2', 'category-2', null, null, null, null, '2018-06-25 09:03:30', '2018-06-25 09:03:30');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '1', null, '1', null, 'Donec id elit non mi porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.', '172.19.0.1', '2018-07-29 04:48:25', '2018-07-29 04:48:25', null, '1@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('2', '1', null, '2', null, '2', '172.19.0.1', '2018-07-29 04:49:50', '2018-07-29 04:49:50', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '2@q.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('7', '1', '2', '2222', null, '2222', '172.19.0.1', '2018-07-29 05:54:41', '2018-07-29 05:54:41', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '2222@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('8', '1', '2', '2222', null, '2222', '172.19.0.1', '2018-07-29 05:54:55', '2018-07-29 05:54:55', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '2222@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('9', '1', '2', '22222', null, '22222', '172.19.0.1', '2018-07-29 06:02:38', '2018-07-29 06:02:38', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '22222@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('10', '1', '1', '11', null, '1\r\nDonec id elit non mi porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.', '172.19.0.1', '2018-07-29 06:10:10', '2018-07-29 06:10:10', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '11@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('11', '1', '1', '1', null, '1', '172.19.0.1', '2018-07-29 06:18:21', '2018-07-29 06:18:21', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '1@1.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('13', '1', '1', '1', null, '11', '172.19.0.1', '2018-07-29 06:30:14', '2018-07-29 06:30:14', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '1@qq.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('14', '1', '1', '11', null, '1', '172.19.0.1', '2018-07-29 06:32:54', '2018-07-29 06:32:54', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '11@q.com', 'http://why42.test/articles/category-1/article-1');
INSERT INTO `comments` VALUES ('21', '1', '1', '1111', null, '11', '172.19.0.1', '2018-07-29 08:59:27', '2018-07-29 08:59:27', '1250038a-034c-4dd1-a0cf-3e6168bb585f', '1@qq.com', 'http://why42.test/articles/category-1/article-1');

-- ----------------------------
-- Table structure for data_rows
-- ----------------------------
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_rows
-- ----------------------------
INSERT INTO `data_rows` VALUES ('1', '1', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('2', '1', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('3', '1', 'email', 'text', 'Email', '1', '1', '1', '1', '1', '1', '', '3');
INSERT INTO `data_rows` VALUES ('4', '1', 'password', 'password', 'Password', '1', '0', '0', '1', '1', '0', '', '4');
INSERT INTO `data_rows` VALUES ('5', '1', 'remember_token', 'text', 'Remember Token', '0', '0', '0', '0', '0', '0', '', '5');
INSERT INTO `data_rows` VALUES ('6', '1', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '0', '', '6');
INSERT INTO `data_rows` VALUES ('7', '1', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '7');
INSERT INTO `data_rows` VALUES ('8', '1', 'avatar', 'image', 'Avatar', '0', '1', '1', '1', '1', '1', '', '8');
INSERT INTO `data_rows` VALUES ('9', '1', 'user_belongsto_role_relationship', 'relationship', 'Role', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', '10');
INSERT INTO `data_rows` VALUES ('10', '1', 'user_belongstomany_role_relationship', 'relationship', 'Roles', '0', '1', '1', '1', '1', '0', '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', '11');
INSERT INTO `data_rows` VALUES ('11', '1', 'locale', 'text', 'Locale', '0', '1', '1', '1', '1', '0', '', '12');
INSERT INTO `data_rows` VALUES ('12', '1', 'settings', 'hidden', 'Settings', '0', '0', '0', '0', '0', '0', '', '12');
INSERT INTO `data_rows` VALUES ('13', '2', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('14', '2', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('15', '2', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('16', '2', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('17', '3', 'id', 'number', 'ID', '1', '0', '0', '0', '0', '0', '', '1');
INSERT INTO `data_rows` VALUES ('18', '3', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '', '2');
INSERT INTO `data_rows` VALUES ('19', '3', 'created_at', 'timestamp', 'Created At', '0', '0', '0', '0', '0', '0', '', '3');
INSERT INTO `data_rows` VALUES ('20', '3', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', '', '4');
INSERT INTO `data_rows` VALUES ('21', '3', 'display_name', 'text', 'Display Name', '1', '1', '1', '1', '1', '1', '', '5');
INSERT INTO `data_rows` VALUES ('22', '1', 'role_id', 'text', 'Role', '1', '1', '1', '1', '1', '1', '', '9');
INSERT INTO `data_rows` VALUES ('23', '4', 'id', 'number', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('24', '4', 'category_id', 'select_dropdown', 'Category Id', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('25', '4', 'name', 'text', '标题', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:articles,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('26', '4', 'excerpt', 'text_area', '简介', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('27', '4', 'body', 'rich_text_box', '正文', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('28', '4', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"300\",\"height\":\"300\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"300*300较好\"}', '9');
INSERT INTO `data_rows` VALUES ('29', '4', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:articles,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '7');
INSERT INTO `data_rows` VALUES ('30', '4', 'featured', 'checkbox', '是否重要', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"}}', '8');
INSERT INTO `data_rows` VALUES ('31', '4', 'published_at', 'date', '发布时间', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('32', '4', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('33', '4', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '13');
INSERT INTO `data_rows` VALUES ('34', '4', 'meta_keywords', 'text_area', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('35', '4', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '15');
INSERT INTO `data_rows` VALUES ('36', '4', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '16');
INSERT INTO `data_rows` VALUES ('37', '4', 'article_belongsto_category_relationship', 'relationship', '分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('38', '5', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('39', '5', 'order', 'text', '排序', '1', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"}}', '2');
INSERT INTO `data_rows` VALUES ('40', '5', 'name', 'text', '分类名称', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('41', '5', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('42', '5', 'image', 'image', '主图', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"600\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"标注下最佳尺寸\"}', '5');
INSERT INTO `data_rows` VALUES ('43', '5', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('44', '5', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('45', '5', 'meta_keywords', 'text_area', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('46', '5', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '9');
INSERT INTO `data_rows` VALUES ('47', '5', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('48', '6', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('49', '6', 'order', 'text', '排序', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"}}', '5');
INSERT INTO `data_rows` VALUES ('50', '6', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:galleries,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('51', '6', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:galleries,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '7');
INSERT INTO `data_rows` VALUES ('52', '6', 'gallery_category_id', 'text', 'Gallery Category Id', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('53', '6', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"像素备注\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"200\",\"height\":\"200\"}}]}', '8');
INSERT INTO `data_rows` VALUES ('54', '6', 'body', 'rich_text_box', 'Body', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('55', '6', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('56', '6', 'meta_description', 'text', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('57', '6', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('58', '6', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '13');
INSERT INTO `data_rows` VALUES ('59', '6', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '14');
INSERT INTO `data_rows` VALUES ('60', '6', 'gallery_belongsto_gallery_category_relationship', 'relationship', '分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\GalleryCategory\",\"table\":\"gallery_categories\",\"type\":\"belongsTo\",\"column\":\"gallery_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('61', '7', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('62', '7', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('63', '7', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('64', '7', 'order', 'text', 'Order', '0', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"},\"default\":1}', '2');
INSERT INTO `data_rows` VALUES ('65', '7', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '5');
INSERT INTO `data_rows` VALUES ('66', '7', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('67', '8', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('68', '8', 'name', 'text', 'Name', '0', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('69', '8', 'email', 'text', 'Email', '0', '1', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('70', '8', 'phone', 'text', 'Phone', '0', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('71', '8', 'subject', 'text', 'Subject', '0', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('72', '8', 'message', 'text_area', 'Message', '0', '1', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('73', '8', 'url', 'text', 'Url', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('74', '8', 'clientId', 'text', 'ClientId', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('75', '8', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '0', '0', '1', null, '9');
INSERT INTO `data_rows` VALUES ('76', '8', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '10');
INSERT INTO `data_rows` VALUES ('77', '9', 'id', 'number', 'Id', '1', '1', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('78', '9', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('79', '9', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:pages,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('80', '9', 'excerpt', 'text', 'Excerpt', '0', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('81', '9', 'body', 'rich_text_box', 'Body', '0', '0', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('82', '9', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('83', '9', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('84', '9', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('85', '9', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('86', '9', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '10');
INSERT INTO `data_rows` VALUES ('87', '9', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '11');
INSERT INTO `data_rows` VALUES ('88', '10', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('89', '10', 'product_category_id', 'text', 'Product Category Id', '1', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('90', '10', 'name', 'text', '品名', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required|unique:products,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('91', '10', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '10');
INSERT INTO `data_rows` VALUES ('92', '10', 'featured', 'checkbox', '是否重要', '0', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"1\"}}', '8');
INSERT INTO `data_rows` VALUES ('93', '10', 'order', 'text', '排序', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', '9');
INSERT INTO `data_rows` VALUES ('94', '10', 'product_code', 'text', '产品代码', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required|unique:products,product_code\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('95', '10', 'price', 'text', '价值', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"This :attribute field is a must.\"}},\"description\":\"平均价格*成交率\"}', '7');
INSERT INTO `data_rows` VALUES ('96', '10', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"像素备注\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"200\",\"height\":\"200\"}}]}', '11');
INSERT INTO `data_rows` VALUES ('97', '10', 'excerpt', 'text', '简介', '0', '0', '1', '1', '1', '1', null, '12');
INSERT INTO `data_rows` VALUES ('98', '10', 'body', 'rich_text_box', '正文', '0', '0', '1', '1', '1', '1', null, '13');
INSERT INTO `data_rows` VALUES ('99', '10', 'parameter', 'rich_text_box', '参数', '0', '0', '1', '1', '1', '1', null, '14');
INSERT INTO `data_rows` VALUES ('100', '10', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '15');
INSERT INTO `data_rows` VALUES ('101', '10', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '16');
INSERT INTO `data_rows` VALUES ('102', '10', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '17');
INSERT INTO `data_rows` VALUES ('103', '10', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '18');
INSERT INTO `data_rows` VALUES ('104', '10', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '19');
INSERT INTO `data_rows` VALUES ('105', '10', 'product_belongsto_product_category_relationship', 'relationship', '产品分类', '0', '1', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsTo\",\"column\":\"product_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"articles\",\"pivot\":\"0\",\"taggable\":\"0\"}', '2');
INSERT INTO `data_rows` VALUES ('106', '11', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('107', '11', 'parent_id', 'select_dropdown', '父分类', '0', '0', '1', '1', '1', '1', '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', '2');
INSERT INTO `data_rows` VALUES ('108', '11', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required|unique:product_categories,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '5');
INSERT INTO `data_rows` VALUES ('109', '11', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_categories,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '6');
INSERT INTO `data_rows` VALUES ('110', '11', 'image', 'image', 'Image', '0', '0', '1', '1', '1', '1', '{\"resize\":{\"width\":\"400\",\"height\":\"400\"},\"quality\":\"70%\",\"upsize\":true,\"description\":\"像素备注\",\"thumbnails\":[{\"name\":\"small\",\"crop\":{\"width\":\"200\",\"height\":\"200\"}}]}', '7');
INSERT INTO `data_rows` VALUES ('111', '11', 'order', 'text', 'Order', '0', '1', '1', '1', '1', '1', '{\"default\":1,\"display\":{\"width\":\"1\"},\"description\":\"小->大\"}', '4');
INSERT INTO `data_rows` VALUES ('112', '11', 'excerpt', 'text_area', 'Excerpt', '0', '0', '1', '1', '1', '1', null, '8');
INSERT INTO `data_rows` VALUES ('113', '11', 'seo_title', 'text', 'Seo Title', '0', '0', '1', '1', '1', '1', null, '9');
INSERT INTO `data_rows` VALUES ('114', '11', 'meta_description', 'text_area', 'Meta Description', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('115', '11', 'meta_keywords', 'text', 'Meta Keywords', '0', '0', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('116', '11', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '12');
INSERT INTO `data_rows` VALUES ('117', '11', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '13');
INSERT INTO `data_rows` VALUES ('119', '12', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('120', '12', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('121', '12', 'description', 'text_area', 'Description', '0', '1', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('122', '12', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '6');
INSERT INTO `data_rows` VALUES ('123', '12', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '7');
INSERT INTO `data_rows` VALUES ('124', '12', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '4');
INSERT INTO `data_rows` VALUES ('125', '4', 'article_belongstomany_tag_relationship', 'relationship', 'tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"article_tag\",\"pivot\":\"1\",\"taggable\":\"0\"}', '3');
INSERT INTO `data_rows` VALUES ('126', '13', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('127', '13', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('128', '13', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:gallery_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('129', '13', 'description', 'text_area', 'Description', '0', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('130', '13', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '5');
INSERT INTO `data_rows` VALUES ('131', '13', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('132', '6', 'gallery_belongstomany_gallery_tag_relationship', 'relationship', 'gallery_tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\GalleryTag\",\"table\":\"gallery_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"gallery_gallery_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', '3');
INSERT INTO `data_rows` VALUES ('133', '14', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('134', '14', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"7\"},\"validation\":{\"rule\":\"required|unique:product_tags,name\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '2');
INSERT INTO `data_rows` VALUES ('135', '14', 'slug', 'text', 'Slug', '1', '0', '1', '1', '1', '1', '{\"slugify\":{\"origin\":\"name\"},\"display\":{\"width\":\"5\"},\"validation\":{\"rule\":\"required|unique:product_tags,slug\",\"messages\":{\"required\":\"This :attribute field is a must.\",\"unique\":\"This :attribute field Not allowed to repeat.\"}}}', '3');
INSERT INTO `data_rows` VALUES ('136', '14', 'description', 'text_area', 'Description', '0', '0', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('137', '14', 'created_at', 'timestamp', 'Created At', '0', '0', '1', '0', '0', '1', null, '5');
INSERT INTO `data_rows` VALUES ('138', '14', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '6');
INSERT INTO `data_rows` VALUES ('139', '10', 'product_belongstomany_product_tag_relationship', 'relationship', 'product_tags', '0', '0', '1', '1', '1', '1', '{\"model\":\"App\\\\Models\\\\ProductTag\",\"table\":\"product_tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', '3');
INSERT INTO `data_rows` VALUES ('140', '12', 'color', 'select_dropdown', 'Color', '0', '1', '1', '1', '1', '1', '{\"display\":{\"width\":\"2\"},\"default\":\"tag-azure\",\"options\":{\"tag-blue\":\"tag-blue\",\"tag-azure\":\"tag-azure\",\"tag-indigo\":\"tag-indigo\",\"tag-purple\":\"tag-purple\",\"tag-pink\":\"tag-pink\",\"tag-red\":\"tag-red\",\"tag-orange\":\"tag-orange\",\"tag-yellow\":\"tag-yellow\",\"tag-lime\":\"tag-lime\",\"tag-green\":\"tag-green\",\"tag-teal\":\"tag-teal\",\"tag-cyan\":\"tag-cyan\",\"tag-gray\":\"tag-gray\",\"tag-gray-dark\":\"tag-gray-dark\"}}', '3');
INSERT INTO `data_rows` VALUES ('141', '15', 'id', 'text', 'Id', '1', '0', '0', '0', '0', '0', null, '1');
INSERT INTO `data_rows` VALUES ('142', '15', 'article_id', 'text', 'Article Id', '1', '1', '1', '1', '1', '1', null, '2');
INSERT INTO `data_rows` VALUES ('143', '15', 'parent_id', 'text', 'Parent Id', '0', '0', '1', '1', '1', '1', null, '3');
INSERT INTO `data_rows` VALUES ('144', '15', 'name', 'text', 'Name', '1', '1', '1', '1', '1', '1', null, '4');
INSERT INTO `data_rows` VALUES ('145', '15', 'avatar', 'text', 'Avatar', '0', '0', '1', '1', '1', '1', null, '5');
INSERT INTO `data_rows` VALUES ('146', '15', 'body', 'text', 'Body', '1', '1', '1', '1', '1', '1', null, '6');
INSERT INTO `data_rows` VALUES ('147', '15', 'ip', 'text', 'Ip', '0', '0', '1', '1', '1', '1', null, '7');
INSERT INTO `data_rows` VALUES ('148', '15', 'created_at', 'timestamp', 'Created At', '0', '1', '1', '1', '0', '1', null, '8');
INSERT INTO `data_rows` VALUES ('149', '15', 'updated_at', 'timestamp', 'Updated At', '0', '0', '0', '0', '0', '0', null, '9');
INSERT INTO `data_rows` VALUES ('150', '15', 'client_id', 'text', 'Client Id', '0', '0', '1', '1', '1', '1', null, '10');
INSERT INTO `data_rows` VALUES ('151', '15', 'email', 'text', 'Email', '0', '1', '1', '1', '1', '1', null, '11');
INSERT INTO `data_rows` VALUES ('152', '15', 'url', 'text', 'Url', '0', '1', '1', '1', '1', '1', null, '12');

-- ----------------------------
-- Table structure for data_types
-- ----------------------------
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of data_types
-- ----------------------------
INSERT INTO `data_types` VALUES ('1', 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('2', 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', null, '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('3', 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', null, '', '', '1', '0', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `data_types` VALUES ('4', 'articles', 'articles', 'Article', 'Articles', null, 'App\\Models\\Article', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:49:41', '2018-06-25 08:49:41');
INSERT INTO `data_types` VALUES ('5', 'categories', 'categories', 'Category', 'Categories', null, 'App\\Models\\Category', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-25 08:56:19', '2018-06-25 08:56:19');
INSERT INTO `data_types` VALUES ('6', 'galleries', 'galleries', 'Gallery', 'Galleries', null, 'App\\Models\\Gallery', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:29:13', '2018-06-26 01:29:13');
INSERT INTO `data_types` VALUES ('7', 'gallery_categories', 'gallery-categories', 'Gallery Category', 'Gallery Categories', null, 'App\\Models\\GalleryCategory', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `data_types` VALUES ('8', 'orders', 'orders', 'Order', 'Orders', null, 'App\\Models\\Order', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:48:20', '2018-06-26 01:48:20');
INSERT INTO `data_types` VALUES ('9', 'pages', 'pages', 'Page', 'Pages', null, 'App\\Models\\Page', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 01:55:44', '2018-06-26 01:55:44');
INSERT INTO `data_types` VALUES ('10', 'products', 'products', 'Product', 'Products', null, 'App\\Models\\Product', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 02:50:42', '2018-06-26 02:50:42');
INSERT INTO `data_types` VALUES ('11', 'product_categories', 'product-categories', 'Product Category', 'Product Categories', null, 'App\\Models\\ProductCategory', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 03:02:50', '2018-06-26 03:02:50');
INSERT INTO `data_types` VALUES ('12', 'tags', 'tags', 'Tag', 'Tags', null, 'App\\Models\\Tag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 05:57:48', '2018-06-26 05:57:48');
INSERT INTO `data_types` VALUES ('13', 'gallery_tags', 'gallery-tags', 'Gallery Tag', 'Gallery Tags', null, 'App\\Models\\GalleryTag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `data_types` VALUES ('14', 'product_tags', 'product-tags', 'Product Tag', 'Product Tags', null, 'App\\Models\\ProductTag', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-06-26 08:10:23', '2018-06-26 08:10:23');
INSERT INTO `data_types` VALUES ('15', 'comments', 'comments', 'Comment', 'Comments', null, 'App\\Models\\Comment', null, null, null, '1', '0', '{\"order_column\":null,\"order_display_column\":null}', '2018-07-29 08:35:33', '2018-07-29 08:35:33');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gallery_category_id` tinyint(4) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `galleries_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', '1', 'Gallery 1', 'gallery-1', null, null, null, null, null, null, '2018-06-26 07:57:47', '2018-06-26 07:57:47');

-- ----------------------------
-- Table structure for gallery_categories
-- ----------------------------
DROP TABLE IF EXISTS `gallery_categories`;
CREATE TABLE `gallery_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gallery_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_categories
-- ----------------------------
INSERT INTO `gallery_categories` VALUES ('1', 'gallery categories 1', 'gallery-categories-1', '1', '2018-06-26 03:23:43', '2018-06-26 03:23:43');
INSERT INTO `gallery_categories` VALUES ('2', 'gallery categories 2', 'gallery-categories-2', '1', '2018-06-26 03:24:00', '2018-06-26 03:24:00');

-- ----------------------------
-- Table structure for gallery_gallery_tag
-- ----------------------------
DROP TABLE IF EXISTS `gallery_gallery_tag`;
CREATE TABLE `gallery_gallery_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `gallery_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_gallery_tag
-- ----------------------------
INSERT INTO `gallery_gallery_tag` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for gallery_tags
-- ----------------------------
DROP TABLE IF EXISTS `gallery_tags`;
CREATE TABLE `gallery_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gallery_tags_name_unique` (`name`),
  UNIQUE KEY `gallery_tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gallery_tags
-- ----------------------------
INSERT INTO `gallery_tags` VALUES ('1', 'Gallery Tag 1', 'gallery-tag-1', 'Gallery Tag 1', '2018-06-26 07:56:23', '2018-06-26 07:56:23');
INSERT INTO `gallery_tags` VALUES ('2', 'Gallery Tag 2', 'gallery-tag-2', 'Gallery Tag 2', '2018-06-26 07:56:38', '2018-06-26 07:56:38');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', '1', 'Dashboard', '', '_self', 'voyager-boat', null, null, '1', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.dashboard', null);
INSERT INTO `menu_items` VALUES ('2', '1', 'Media', '', '_self', 'voyager-images', null, null, '4', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.media.index', null);
INSERT INTO `menu_items` VALUES ('3', '1', 'Users', '', '_self', 'voyager-person', null, null, '3', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.users.index', null);
INSERT INTO `menu_items` VALUES ('4', '1', 'Roles', '', '_self', 'voyager-lock', null, null, '2', '2018-06-25 06:49:25', '2018-06-25 06:49:25', 'voyager.roles.index', null);
INSERT INTO `menu_items` VALUES ('5', '1', 'Tools', '', '_self', 'voyager-tools', null, null, '7', '2018-06-25 06:49:25', '2018-06-27 05:27:48', null, null);
INSERT INTO `menu_items` VALUES ('6', '1', 'Menu Builder', '', '_self', 'voyager-list', null, '5', '1', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.menus.index', null);
INSERT INTO `menu_items` VALUES ('7', '1', 'Database', '', '_self', 'voyager-data', null, '5', '2', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.database.index', null);
INSERT INTO `menu_items` VALUES ('8', '1', 'Compass', '', '_self', 'voyager-compass', null, '5', '3', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.compass.index', null);
INSERT INTO `menu_items` VALUES ('9', '1', 'BREAD', '', '_self', 'voyager-bread', null, '5', '4', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.bread.index', null);
INSERT INTO `menu_items` VALUES ('10', '1', 'Settings', '', '_self', 'voyager-settings', null, null, '8', '2018-06-25 06:49:25', '2018-06-27 05:27:48', 'voyager.settings.index', null);
INSERT INTO `menu_items` VALUES ('11', '1', 'Hooks', '', '_self', 'voyager-hook', null, '5', '5', '2018-06-25 06:49:25', '2018-06-27 05:21:53', 'voyager.hooks', null);
INSERT INTO `menu_items` VALUES ('12', '1', '缓存清理', '/cache_clear', '_self', 'voyager-brush', '#000000', null, '9', '2018-06-25 08:18:13', '2018-06-27 05:27:48', null, '');
INSERT INTO `menu_items` VALUES ('13', '1', '文章', '', '_self', 'voyager-file-text', '#000000', '24', '4', '2018-06-25 08:49:43', '2018-06-27 05:26:24', 'voyager.articles.index', 'null');
INSERT INTO `menu_items` VALUES ('14', '1', '文章分类', '', '_self', 'voyager-file-text', '#000000', '24', '5', '2018-06-25 08:56:21', '2018-06-27 05:26:41', 'voyager.categories.index', 'null');
INSERT INTO `menu_items` VALUES ('15', '1', '图库或案例', '', '_self', 'voyager-images', '#000000', '24', '7', '2018-06-26 01:29:15', '2018-06-27 05:26:11', 'voyager.galleries.index', 'null');
INSERT INTO `menu_items` VALUES ('16', '1', '案例分类', '', '_self', 'voyager-images', '#000000', '24', '8', '2018-06-26 01:34:24', '2018-06-27 05:26:11', 'voyager.gallery-categories.index', 'null');
INSERT INTO `menu_items` VALUES ('17', '1', '订单/留言', '', '_self', 'voyager-heart', '#000000', null, '6', '2018-06-26 01:48:22', '2018-06-27 05:27:48', 'voyager.orders.index', 'null');
INSERT INTO `menu_items` VALUES ('18', '1', '主要页面', '', '_self', 'voyager-file-text', '#000000', '24', '11', '2018-06-26 01:55:45', '2018-07-29 09:09:56', 'voyager.pages.index', 'null');
INSERT INTO `menu_items` VALUES ('19', '1', '产品', '', '_self', 'voyager-shop', '#000000', '24', '1', '2018-06-26 02:50:43', '2018-06-27 05:22:21', 'voyager.products.index', 'null');
INSERT INTO `menu_items` VALUES ('20', '1', '产品分类', '', '_self', 'voyager-shop', '#000000', '24', '2', '2018-06-26 03:02:52', '2018-06-27 05:22:36', 'voyager.product-categories.index', 'null');
INSERT INTO `menu_items` VALUES ('21', '1', '文章标签', '', '_self', 'voyager-file-text', '#000000', '24', '6', '2018-06-26 05:57:49', '2018-06-27 05:26:57', 'voyager.tags.index', 'null');
INSERT INTO `menu_items` VALUES ('22', '1', '案例标签', '', '_self', 'voyager-images', '#000000', '24', '9', '2018-06-26 07:50:42', '2018-06-27 05:26:12', 'voyager.gallery-tags.index', 'null');
INSERT INTO `menu_items` VALUES ('23', '1', '产品标签', '', '_self', 'voyager-shop', '#000000', '24', '3', '2018-06-26 08:10:24', '2018-06-27 05:22:51', 'voyager.product-tags.index', 'null');
INSERT INTO `menu_items` VALUES ('24', '1', '发布管理', '', '_self', 'voyager-folder', '#000000', null, '5', '2018-06-27 05:21:28', '2018-06-27 05:27:36', null, '');
INSERT INTO `menu_items` VALUES ('25', '1', 'Comments', '', '_self', 'voyager-bubble', '#000000', '24', '10', '2018-07-29 08:35:33', '2018-07-29 09:10:21', 'voyager.comments.index', 'null');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', 'admin', '2018-06-25 06:49:25', '2018-06-25 06:49:25');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_01_000000_add_voyager_user_fields', '1');
INSERT INTO `migrations` VALUES ('4', '2016_01_01_000000_create_data_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2016_05_19_173453_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('6', '2016_10_21_190000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('7', '2016_10_21_190000_create_settings_table', '1');
INSERT INTO `migrations` VALUES ('8', '2016_11_30_135954_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('9', '2016_11_30_141208_create_permission_role_table', '1');
INSERT INTO `migrations` VALUES ('10', '2016_12_26_201236_data_types__add__server_side', '1');
INSERT INTO `migrations` VALUES ('11', '2017_01_13_000000_add_route_to_menu_items_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_01_14_005015_create_translations_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_01_15_000000_make_table_name_nullable_in_permissions_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_03_06_000000_add_controller_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_04_21_000000_add_order_to_data_rows_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_07_05_210000_add_policyname_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_08_05_000000_add_group_to_settings_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_11_26_013050_add_user_role_relationship', '1');
INSERT INTO `migrations` VALUES ('19', '2017_11_26_015000_create_user_roles_table', '1');
INSERT INTO `migrations` VALUES ('20', '2018_03_11_000000_add_user_settings', '1');
INSERT INTO `migrations` VALUES ('21', '2018_03_14_000000_add_details_to_data_types_table', '1');
INSERT INTO `migrations` VALUES ('22', '2018_03_16_000000_make_settings_value_nullable', '1');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `clientId` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'test', 'test@gmail.com', '1111', '213', '2121211212', null, null, '2018-06-26 03:25:48', '2018-06-26 03:25:48');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'index', 'index', null, null, null, 'Index seo title 1', 'Indexmeta', null, '2018-06-26 03:19:30', '2018-07-30 07:28:03');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES ('1', '1');
INSERT INTO `permission_role` VALUES ('1', '2');
INSERT INTO `permission_role` VALUES ('2', '1');
INSERT INTO `permission_role` VALUES ('3', '1');
INSERT INTO `permission_role` VALUES ('4', '1');
INSERT INTO `permission_role` VALUES ('5', '1');
INSERT INTO `permission_role` VALUES ('6', '1');
INSERT INTO `permission_role` VALUES ('7', '1');
INSERT INTO `permission_role` VALUES ('8', '1');
INSERT INTO `permission_role` VALUES ('9', '1');
INSERT INTO `permission_role` VALUES ('10', '1');
INSERT INTO `permission_role` VALUES ('11', '1');
INSERT INTO `permission_role` VALUES ('12', '1');
INSERT INTO `permission_role` VALUES ('13', '1');
INSERT INTO `permission_role` VALUES ('14', '1');
INSERT INTO `permission_role` VALUES ('15', '1');
INSERT INTO `permission_role` VALUES ('16', '1');
INSERT INTO `permission_role` VALUES ('17', '1');
INSERT INTO `permission_role` VALUES ('18', '1');
INSERT INTO `permission_role` VALUES ('19', '1');
INSERT INTO `permission_role` VALUES ('20', '1');
INSERT INTO `permission_role` VALUES ('21', '1');
INSERT INTO `permission_role` VALUES ('21', '2');
INSERT INTO `permission_role` VALUES ('22', '1');
INSERT INTO `permission_role` VALUES ('22', '2');
INSERT INTO `permission_role` VALUES ('23', '1');
INSERT INTO `permission_role` VALUES ('23', '2');
INSERT INTO `permission_role` VALUES ('24', '1');
INSERT INTO `permission_role` VALUES ('25', '1');
INSERT INTO `permission_role` VALUES ('26', '1');
INSERT INTO `permission_role` VALUES ('27', '1');
INSERT INTO `permission_role` VALUES ('27', '2');
INSERT INTO `permission_role` VALUES ('28', '1');
INSERT INTO `permission_role` VALUES ('28', '2');
INSERT INTO `permission_role` VALUES ('29', '1');
INSERT INTO `permission_role` VALUES ('29', '2');
INSERT INTO `permission_role` VALUES ('30', '1');
INSERT INTO `permission_role` VALUES ('30', '2');
INSERT INTO `permission_role` VALUES ('31', '1');
INSERT INTO `permission_role` VALUES ('31', '2');
INSERT INTO `permission_role` VALUES ('32', '1');
INSERT INTO `permission_role` VALUES ('32', '2');
INSERT INTO `permission_role` VALUES ('33', '1');
INSERT INTO `permission_role` VALUES ('33', '2');
INSERT INTO `permission_role` VALUES ('34', '1');
INSERT INTO `permission_role` VALUES ('34', '2');
INSERT INTO `permission_role` VALUES ('35', '1');
INSERT INTO `permission_role` VALUES ('35', '2');
INSERT INTO `permission_role` VALUES ('36', '1');
INSERT INTO `permission_role` VALUES ('36', '2');
INSERT INTO `permission_role` VALUES ('47', '2');
INSERT INTO `permission_role` VALUES ('48', '2');
INSERT INTO `permission_role` VALUES ('52', '1');
INSERT INTO `permission_role` VALUES ('52', '2');
INSERT INTO `permission_role` VALUES ('53', '1');
INSERT INTO `permission_role` VALUES ('53', '2');
INSERT INTO `permission_role` VALUES ('54', '1');
INSERT INTO `permission_role` VALUES ('54', '2');
INSERT INTO `permission_role` VALUES ('55', '1');
INSERT INTO `permission_role` VALUES ('56', '1');
INSERT INTO `permission_role` VALUES ('67', '1');
INSERT INTO `permission_role` VALUES ('67', '2');
INSERT INTO `permission_role` VALUES ('68', '1');
INSERT INTO `permission_role` VALUES ('68', '2');
INSERT INTO `permission_role` VALUES ('69', '1');
INSERT INTO `permission_role` VALUES ('69', '2');
INSERT INTO `permission_role` VALUES ('70', '1');
INSERT INTO `permission_role` VALUES ('70', '2');
INSERT INTO `permission_role` VALUES ('71', '1');
INSERT INTO `permission_role` VALUES ('71', '2');
INSERT INTO `permission_role` VALUES ('82', '1');
INSERT INTO `permission_role` VALUES ('82', '2');
INSERT INTO `permission_role` VALUES ('83', '1');
INSERT INTO `permission_role` VALUES ('83', '2');
INSERT INTO `permission_role` VALUES ('84', '1');
INSERT INTO `permission_role` VALUES ('85', '1');
INSERT INTO `permission_role` VALUES ('86', '1');
INSERT INTO `permission_role` VALUES ('86', '2');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'browse_admin', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('2', 'browse_bread', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('3', 'browse_database', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('4', 'browse_media', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('5', 'browse_compass', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('6', 'browse_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('7', 'read_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('8', 'edit_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('9', 'add_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('10', 'delete_menus', 'menus', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('11', 'browse_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('12', 'read_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('13', 'edit_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('14', 'add_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('15', 'delete_roles', 'roles', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('16', 'browse_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('17', 'read_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('18', 'edit_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('19', 'add_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('20', 'delete_users', 'users', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('21', 'browse_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('22', 'read_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('23', 'edit_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('24', 'add_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('25', 'delete_settings', 'settings', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('26', 'browse_hooks', null, '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `permissions` VALUES ('27', 'browse_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('28', 'read_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('29', 'edit_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('30', 'add_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('31', 'delete_articles', 'articles', '2018-06-25 08:49:42', '2018-06-25 08:49:42');
INSERT INTO `permissions` VALUES ('32', 'browse_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20');
INSERT INTO `permissions` VALUES ('33', 'read_categories', 'categories', '2018-06-25 08:56:20', '2018-06-25 08:56:20');
INSERT INTO `permissions` VALUES ('34', 'edit_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('35', 'add_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('36', 'delete_categories', 'categories', '2018-06-25 08:56:21', '2018-06-25 08:56:21');
INSERT INTO `permissions` VALUES ('37', 'browse_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('38', 'read_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('39', 'edit_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('40', 'add_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('41', 'delete_galleries', 'galleries', '2018-06-26 01:29:15', '2018-06-26 01:29:15');
INSERT INTO `permissions` VALUES ('42', 'browse_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('43', 'read_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('44', 'edit_gallery_categories', 'gallery_categories', '2018-06-26 01:34:23', '2018-06-26 01:34:23');
INSERT INTO `permissions` VALUES ('45', 'add_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24');
INSERT INTO `permissions` VALUES ('46', 'delete_gallery_categories', 'gallery_categories', '2018-06-26 01:34:24', '2018-06-26 01:34:24');
INSERT INTO `permissions` VALUES ('47', 'browse_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('48', 'read_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('49', 'edit_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('50', 'add_orders', 'orders', '2018-06-26 01:48:21', '2018-06-26 01:48:21');
INSERT INTO `permissions` VALUES ('51', 'delete_orders', 'orders', '2018-06-26 01:48:22', '2018-06-26 01:48:22');
INSERT INTO `permissions` VALUES ('52', 'browse_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('53', 'read_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('54', 'edit_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('55', 'add_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('56', 'delete_pages', 'pages', '2018-06-26 01:55:45', '2018-06-26 01:55:45');
INSERT INTO `permissions` VALUES ('57', 'browse_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('58', 'read_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('59', 'edit_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('60', 'add_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('61', 'delete_products', 'products', '2018-06-26 02:50:43', '2018-06-26 02:50:43');
INSERT INTO `permissions` VALUES ('62', 'browse_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('63', 'read_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('64', 'edit_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('65', 'add_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('66', 'delete_product_categories', 'product_categories', '2018-06-26 03:02:52', '2018-06-26 03:02:52');
INSERT INTO `permissions` VALUES ('67', 'browse_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('68', 'read_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('69', 'edit_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('70', 'add_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('71', 'delete_tags', 'tags', '2018-06-26 05:57:49', '2018-06-26 05:57:49');
INSERT INTO `permissions` VALUES ('72', 'browse_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('73', 'read_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('74', 'edit_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('75', 'add_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('76', 'delete_gallery_tags', 'gallery_tags', '2018-06-26 07:50:41', '2018-06-26 07:50:41');
INSERT INTO `permissions` VALUES ('77', 'browse_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('78', 'read_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('79', 'edit_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('80', 'add_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('81', 'delete_product_tags', 'product_tags', '2018-06-26 08:10:24', '2018-06-26 08:10:24');
INSERT INTO `permissions` VALUES ('82', 'browse_comments', 'comments', '2018-07-29 08:35:33', '2018-07-29 08:35:33');
INSERT INTO `permissions` VALUES ('83', 'read_comments', 'comments', '2018-07-29 08:35:33', '2018-07-29 08:35:33');
INSERT INTO `permissions` VALUES ('84', 'edit_comments', 'comments', '2018-07-29 08:35:33', '2018-07-29 08:35:33');
INSERT INTO `permissions` VALUES ('85', 'add_comments', 'comments', '2018-07-29 08:35:33', '2018-07-29 08:35:33');
INSERT INTO `permissions` VALUES ('86', 'delete_comments', 'comments', '2018-07-29 08:35:33', '2018-07-29 08:35:33');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `order` tinyint(3) unsigned DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES ('1', null, 'category 1', 'category-1', null, '1', null, null, null, null, '2018-06-26 03:09:56', '2018-06-26 03:09:56');
INSERT INTO `product_categories` VALUES ('2', '1', 'category 1 1', 'category-1-1', null, '1', null, null, null, null, '2018-06-26 03:11:00', '2018-06-26 03:14:32');

-- ----------------------------
-- Table structure for product_product_tag
-- ----------------------------
DROP TABLE IF EXISTS `product_product_tag`;
CREATE TABLE `product_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_tag_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_product_tag
-- ----------------------------
INSERT INTO `product_product_tag` VALUES ('1', '1', '1');
INSERT INTO `product_product_tag` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS `product_tags`;
CREATE TABLE `product_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_tags_name_unique` (`name`),
  UNIQUE KEY `product_tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_tags
-- ----------------------------
INSERT INTO `product_tags` VALUES ('1', 'Product Tag 1', 'product-tag-1', null, '2018-06-26 08:11:55', '2018-06-26 08:11:55');
INSERT INTO `product_tags` VALUES ('2', 'Product Tag 2', 'product-tag-2', null, '2018-06-26 08:12:11', '2018-06-26 08:12:11');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` tinyint(4) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT '1',
  `product_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `parameter` text COLLATE utf8_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  UNIQUE KEY `products_product_code_unique` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '1', 'products 1', 'products-1', '0', '1', 'p-1', '100', 'products/June2018/9BHO2POYvYtAkED2zZXW.jpg', null, null, null, null, null, null, '2018-06-26 03:16:00', '2018-06-26 08:36:08');
INSERT INTO `products` VALUES ('2', '1', 'product 1', 'product-1', '1', '1', '11', '100', null, null, null, null, null, null, null, '2018-06-26 03:26:37', '2018-06-26 03:26:37');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Administrator', '2018-06-25 06:49:25', '2018-06-25 06:49:25');
INSERT INTO `roles` VALUES ('2', 'Editors', 'Editors', '2018-06-25 06:49:25', '2018-06-26 05:32:53');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('1', 'site.title', 'Site Title', 'Site Title', '', 'text', '1', 'Site');
INSERT INTO `settings` VALUES ('2', 'site.description', 'Site Description', 'Site Description', '', 'text', '2', 'Site');
INSERT INTO `settings` VALUES ('3', 'site.logo', 'Site Logo', '', '', 'image', '3', 'Site');
INSERT INTO `settings` VALUES ('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', null, '', 'text', '4', 'Site');
INSERT INTO `settings` VALUES ('5', 'admin.bg_image', 'Admin Background Image', '', '', 'image', '5', 'Admin');
INSERT INTO `settings` VALUES ('6', 'admin.title', 'Admin Title', 'Voyager', '', 'text', '1', 'Admin');
INSERT INTO `settings` VALUES ('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '2', 'Admin');
INSERT INTO `settings` VALUES ('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin');
INSERT INTO `settings` VALUES ('9', 'admin.icon_image', 'Admin Icon Image', '', '', 'image', '4', 'Admin');
INSERT INTO `settings` VALUES ('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', null, '', 'text', '1', 'Admin');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'tag 1', 'tag 1 tag 1', '2018-06-26 06:04:43', '2018-07-26 09:45:09', 'tag-1', 'tag-pink');
INSERT INTO `tags` VALUES ('2', 'tag 2', 'tag 2 tag 2', '2018-06-26 06:04:58', '2018-07-26 09:45:23', 'tag-2', 'tag-cyan');
INSERT INTO `tags` VALUES ('3', 'tag 3', 'tag 3 tag 3', '2018-06-26 06:05:15', '2018-07-26 09:45:37', 'tag-3', 'tag-gray');
INSERT INTO `tags` VALUES ('4', 'tag4', null, '2018-07-26 09:46:37', '2018-07-26 09:46:37', 'tag4', 'tag-gray-dark');

-- ----------------------------
-- Table structure for translations
-- ----------------------------
DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of translations
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_roles
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'chaos', 'chaos29092@gmail.com', 'users/June2018/V9TR4wa2PcmqvZsPGfo3.jpg', '$2y$10$RcPyBnrElDyjxxAgX6C9XONCyA.Ql147EK35QKhCMkoE8/oCw6xI6', 'iD0OpPZ7PvSlUBfD5hqyr2KafNTVkkhQ4tR04daFcS9gDROEzftNmeZ0JRvo', '{\"locale\":\"en\"}', '2018-06-25 06:51:25', '2018-06-25 08:10:01');
INSERT INTO `users` VALUES ('2', '2', 'editor', 'editor@email.com', 'users/June2018/rlYXTKUjEOiH9hQWdAhE.jpg', '$2y$10$RIoP6CgjR8hVpZauVKNFU.0XT/H2LwS284f0y3ngX/GfcOaTXoniC', null, '{\"locale\":\"en\"}', '2018-06-26 05:47:32', '2018-06-26 05:47:32');
