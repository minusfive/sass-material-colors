# Sass Material Colors [![Gem Version](https://badge.fury.io/rb/sass-material-colors.svg)](http://badge.fury.io/rb/sass-material-colors)

This gem makes it easy to use Google's [Material Design color palette](http://www.google.com/design/spec/style/color.html#color-color-palette) on your project.

## Installation

Add this line to your application's Gemfile:

```bash
$ gem 'sass-material-colors'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install sass-material-colors
```

## Usage

Import the colors map + function to your project:

```sass
// Sass
@import 'sass-material-colors'
```

This will automatically import a `$material-colors` [Sass map](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#maps) containing all the color names and values found in Google's [palette](http://www.google.com/design/spec/style/color.html#color-color-palette), and the handy [`material-color` function](#the-material-color-function), which allows you to easily reference any color in the `$material-colors` map from your Sass or Scss stylesheets.

Optionally, you can import a list of predefined [placeholder selectors](#predefined-sass-placeholder-selectors) and/or [classes](#predefined-classes) to your stylesheets.

### The `material-color` Function

The `material-color` function allows you to easily reference any color in the `_sass-material-colors-map.scss` file in your styles:

```sass
// Sass
.my-cool-element
  color: material-color('cyan', '400')
  background: material-color('blue-grey', '600')
```

The `material-color` function takes 2 arguments:

##### `$color-name` String (quoted), Required
> Lower-case, dasherized color name from Google's [palette](http://www.google.com/design/spec/style/color.html#color-color-palette) (e.g. `'pink'`, `'amber'`, `'blue-grey'`, `'deep-orange'`, etc.)  

##### `$color-variant` String (quoted), Optional [Default value: `500`]
> Lower-case color variant number/code from Google's [palette](http://www.google.com/design/spec/style/color.html#color-color-palette) (e.g. `'300'`, `'200'`, `'a100'`, `'a400'`, etc.)

### Predefined Sass Placeholder Selectors

You can include a list of [extendable](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#extend) Sass [placeholder selectors](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#placeholder_selectors_) in your project by importing the `sass-material-colors-placeholders` [file](sass/_sass-material-colors-placeholders.scss) into your Sass/Scss:

```sass
// Sass
@import 'sass-material-colors-placeholders'
```

This will add a `%color-...` and `%bg-color-...` [placeholder selector](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#placeholder_selectors_) for each color name and variant found in Google's [palette](http://www.google.com/design/spec/style/color.html#color-color-palette) to your project, which you can then extend in your stylesheets like so:

```sass
// Sass
.my-cool-element
  @extend %color-cyan-400
  @extend %bg-color-blue-grey-600
```

### Predefined Classes

You can include a list of predefined classes in your project by importing the `sass-material-colors-classes` [file](sass/_sass-material-colors-classes.scss) into your Sass/Scss:

```sass
// Sass
@import 'sass-material-colors-classes'
```

This will add a `.color-...` and `.bg-color-...` class for each color name and variant found in Google's [palette](http://www.google.com/design/spec/style/color.html#color-color-palette)  to your stylesheets, which you can then use directly in your markup like so:

```html
<!-- HTML -->
<div class='my-cool-element color-cyan-400 bg-color-blue-grey-600'></div>
```

## TO-DO
- [ ] Add tests
- [ ] Make it bower friendly

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md).

## License

See [LICENSE](LICENSE.md).

## Special Thanks

To [nilskaspersson/Google-Material-UI-Color-Palette](https://github.com/nilskaspersson/Google-Material-UI-Color-Palette) for the inspiration on using a Sass map for the colors, and a map function to retrieve them.

To [twbs/bootstrap-sass](https://github.com/twbs/bootstrap-sass) as a reference for this gem.

And to Google for their [Material Design spec](http://www.google.com/design/spec/material-design/introduction.html).
