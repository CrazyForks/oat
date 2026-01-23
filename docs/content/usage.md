+++
title = "Usage"
+++

## Installation

### CDN

Include the CSS and JS files directly in your HTML:

```html
<link rel="stylesheet" href="https://unpkg.com/oat-ui/dist/oat.css">
<script src="https://unpkg.com/oat-ui/dist/oat.js" defer></script>
```

### npm

```bash
npm install oat-ui
```

Then import in your project:

```js
import 'oat-ui/dist/oat.css';
import 'oat-ui/dist/oat.js';
```

### Download

Download the CSS and JS files from the [releases page](https://github.com/yourusername/oat-ui/releases) and include them in your project.

```html
<link rel="stylesheet" href="./oat.min.css">
<script src="./oat.min.js" defer></script>
```

## Basic usage

Oat styles semantic HTML elements by default. No classes needed for basic styling:

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My App</title>
  <link rel="stylesheet" href="oat.css">
  <script src="oat.js" defer></script>
</head>
<body>
  <h1>Hello World</h1>
  <p>This paragraph is styled automatically.</p>
  <button>Click me</button>
</body>
</html>
```
