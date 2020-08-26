# @mocha/docdash

[![npm package](https://img.shields.io/npm/v/@mocha/docdash.svg)](https://www.npmjs.com/package/@mocha/docdash)

A [JSDoc](https://usejsdoc.org) template for [Mocha's API documentation](https://mochajs.org/api), forked from [docdash](https://npm.im/docdash).

Designed to work with [11ty](https://11ty.dev).

## Install

```bash
$ npm install @mocha/docdash jsdoc@^3.0.0 @11ty/eleventy@^0.10.0 -D
```

## Usage

In your project's `package.json` file, add a new script, e.g.:

```json
"script": {
  "generate-docs": "jsdoc -c jsdoc.json"
}
```

In your JSDoc configuration file file, add a template option:

```json
"opts": {
  "template": "node_modules/@mocha/docdash"
}
```

## Options

`@mocha/docdash` supports the following options:

```plain
{
  "mocha-docdash": {
    "static": [false|true],         // Display the static members inside the navbar
    "sort": [false|true],           // Sort the methods in the navbar
    "sectionOrder": [               // Order the main section in the navbar (default order shown here)
      "Classes",
      "Modules",
      "Externals",
      "Events",
      "Namespaces",
      "Mixins",
      "Tutorials",
      "Interfaces"
    ],
    "disqus": "",                   // Shortname for your disqus (subdomain during site creation)
    "openGraph": {                  // Open Graph options (mostly for Facebook and other sites to easily extract meta information)
      "title": "",                  // Title of the website
      "type": "website",            // Type of the website
      "image": "",                  // Main image/logo
      "site_name": "",              // Site name
      "url": ""                     // Main canonical URL for the main page of the site
    },
    "meta": {                       // Meta information options (mostly for search engines that have not indexed your site yet)
      "title": "",                  // Also will be used as postfix to actualy page title, prefixed with object/document name
      "description": "",            // Description of overal contents of your website
      "keyword": ""                 // Keywords for search engines
    },
    "search": [false|true],         // Display seach box above navigation which allows to search/filter navigation items
    "collapse": [false|true],       // Collapse navigation by default except current object's navigation of the current page
    "wrap": [false|true],           // Wrap long navigation names instead of trimming them
    "typedefs": [false|true],       // Include typedefs in menu
    "navLevel": [integer],          // depth level to show in navbar, starting at 0 (false or -1 to disable)
    "private": [false|true],        // set to false to not show @private in navbar
    "removeQuotes": [none|all|trim],// Remove single and double quotes, trim removes only surrounding ones
    "scripts": [],                  // Array of external (or relative local copied using templates.default.staticFiles.include) js or css files to inject into HTML,
    "menu": {                       // Adding additional menu items after Home
      "Project Website":{          // Menu item name
        "href":"https://myproject.com", //the rest of HTML properties to add to manu item
        "target":"_blank",
        "class":"menu-item",
        "id":"website_link"
      },
      "Forum":{
        "href":"https://myproject.com.forum",
        "target":"_blank",
        "class":"menu-item",
        "id":"forum_link"
      }
    }
  }
}
```

Place them anywhere inside your `jsdoc.json` file.

## Example Config

See [this example config file](fixtures/fixtures.conf.json).

## License

Licensed under the Apache License, version 2.0. (see [Apache-2.0](LICENSE.md)).
