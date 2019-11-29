---
title: Variables
---

{% youtube T9oAax-IRw0 %}

### Global Variables

Variable | Description | Type
--- | --- | ---
`site` | Sitewide information. | `object`; see [Site Variables]
`page` | Page specific information and custom variables set in front-matter. | `object`; see [Page Variables]
`config` | Site configuration. | `object` (your site's _config file)
`theme` | Theme configuration. Inherits from site configuration. | `object` (your theme's _config file)
`_` (single underscore) | Lodash library | see [Lodash](https://lodash.com/  'Lodash') documentation
`path` | Path of current page | `string`
`url` | Full URL of current page | `string`
`env` | Environment variables | ???

