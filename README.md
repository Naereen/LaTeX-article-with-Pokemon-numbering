# [LaTeX-article-with-Pokemon-numbering](https://naereen.github.io/LaTeX-article-with-Pokemon-numbering/)

Experiment to have a LaTeX article class which includes a small Pokémon image, in every page (on the bottom right or left), instead of numbering with indexes!

## Demo
See any of these PDF files (not gitted, on my website):

- [test](test.pdf) is the default document,
- [test_left](test_left.pdf) shows the `left` option,
- [test_right](test_right.pdf) shows the `right` option (is the same as the default document),
- [test_rorate](test_rorate.pdf) shows the `rotate` option,
- [test_lorem](test_lorem.pdf) test with a dummy text.

## Screenshots
> Here are a few examples:

![screenshot/example1.png](screenshot/example1.png)
![screenshot/example2.png](screenshot/example2.png)
![screenshot/example3.png](screenshot/example3.png)
![screenshot/example4.png](screenshot/example4.png)
![screenshot/example5.png](screenshot/example5.png)

----

## How I did that
See [pokemonnumbering.sty](pokemonnumbering.sty):

- I use [fancyhdr](https://en.wikibooks.org/wiki/LaTeX/Customizing_Page_Headers_and_Footers#Customizing_with_fancyhdr) to add a image to the bottom right or left


----

## Options
By default, the Pokémon images are inserted on the bottom right corner.
The package can be loaded with an option:

- `right` : by default,
```tex
\usepackage[right]{pokemonnumbering}  % default
```

- `left` : insert them in the bottom left corner instead,
```tex
\usepackage[left]{pokemonnumbering}
```

- `rotate` : rotate the image by 20° (clock-wise if right, counter clock-wise if left),
```tex
\usepackage[rotate]{pokemonnumbering}
```


----

## :scroll: License ? [![GitHub license](https://img.shields.io/github/license/Naereen/LaTeX-article-with-Pokemon-numbering.svg)](https://github.com/Naereen/LaTeX-article-with-Pokemon-numbering/blob/master/LICENSE)
[MIT Licensed](https://lbesson.mit-license.org/) (file [LICENSE](LICENSE)).
© [Lilian Besson](https://GitHub.com/Naereen), 2018.

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/LaTeX-article-with-Pokemon-numbering/graphs/commit-activity)
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama)
[![Analytics](https://ga-beacon.appspot.com/UA-38514290-17/github.com/Naereen/LaTeX-article-with-Pokemon-numbering/README.md?pixel)](https://GitHub.com/Naereen/LaTeX-article-with-Pokemon-numbering/)

[![Contains-Pokémon](https://img.shields.io/badge/Contains-Pokémons-7fb78a.svg)](https://github.com/Naereen/LaTeX-article-with-Pokemon-numbering/tree/master/icons/)

[![ForTheBadge built-with-swag](http://ForTheBadge.com/images/badges/built-with-swag.svg)](https://GitHub.com/Naereen/)

[![ForTheBadge uses-badges](http://ForTheBadge.com/images/badges/uses-badges.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)
[![ForTheBadge uses-css](http://ForTheBadge.com/images/badges/uses-css.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-html](http://ForTheBadge.com/images/badges/uses-html.svg)](http://ForTheBadge.com)
[![ForTheBadge uses-js](http://ForTheBadge.com/images/badges/uses-js.svg)](http://ForTheBadge.com)
