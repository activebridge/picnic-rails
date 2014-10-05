# Picnic for Rails

## Installation

`picnic-rails` is easy to drop into Rails with the asset pipeline.

In your Gemfile you need to add the `picnic-rails` gem, and ensure that the `sass-rails` gem is present - it is added to new Rails applications by default.

```ruby
gem 'picnic-rails'
```

It is also recommended to use [Autoprefixer](https://github.com/ai/autoprefixer-rails) with Picnic
to add browser vendor prefixes automatically. Simply add the gem:

```ruby
gem 'autoprefixer-rails'
```

`bundle install` and restart your server to make the files available through the pipeline.

Import Picnic styles in `app/assets/stylesheets/application.css.scss`:

```scss
@import 'picinc';
```

Make sure the file has `.css.scss` extension (or `.css.sass` for Sass syntax). If you have just generated a new Rails app,
it may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so remove it:

```console
$ rm app/assets/stylesheets/application.css
```

Do not use `//= require` in Sass or your other stylesheets will not be [able to access][antirequire] the Picinc variables.


* [picinc.scss](/app/assets/stylesheets/picnic.scss) - main project Sass file, imports Picnic and variables.

```scss
@import 'picinc/variables';
@import 'picinc/checkbox';
@import 'picinc/select';
```

### Configuration

#### Sass

#### Sass: Autoprefixer

Using [Autoprefixer][autoprefixer] with Picnic is recommended.
[Autoprefixer][autoprefixer] adds vendor prefixes to CSS rules using values from [Can I Use](http://caniuse.com/).


## Usage

### Sass

The full list of Picinc variables can be found [here](/app/assets/stylesheets/picnic/_variables.scss). You can override these by simply redefining the variable before the `@import` directive, e.g.:

```scss
$picnic-deep: true;
$picnic-tablet-width: 750px;
$picnic-laptop-width: 1200px;
$picnic-success: green;

@import 'picinc';
```

## You're in good company

[picinc](https://github.com/picnicss/picnic)
[autoprefixer](https://github.com/ai/autoprefixer)
