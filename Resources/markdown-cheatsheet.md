*my-markdown-cheat-sheet.txt*	For Vim version 7.4.  Last change: 2015-12-29
@github-author-username: AtsushiSakai


Markdown Cheatsheet
===================

- - - - 

# Heading 1 #

    Markup :  # Heading 1 #

## Heading 2 ##

    Markup :  ## Heading 2 ##

### Heading 3 ###

    Markup :  ### Heading 3 ###

#### Heading 4 ####

    Markup :  #### Heading 4 ####


Common text

    Markup :  Common text

_Emphasized text_

    Markup :  _Emphasized text_ or *Emphasized text*

~~Strikethrough text~~

    Markup :  ~~Strikethrough text~~

__Strong text__

    Markup :  __Strong text__ or **Strong text**

___Strong emphasized text___

    Markup :  ___Strong emphasized text___ or ***Strong emphasized text***

[Named Link](http://www.google.fr/) and http://www.google.fr/ or <http://example.com/>

    Markup :  [Named Link](http://www.google.fr/) and http://www.google.fr/ or <http://example.com/>

Table, like this one :

First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell

```
First Header  | Second Header
------------- | -------------
Content Cell  | Content Cell
Content Cell  | Content Cell
```

`code()`

    Markup :  `code()`

```javascript
    var specificLanguage_code = 
    {
        "data": {
            "lookedUpPlatform": 1,
            "query": "Kasabian+Test+Transmission",
            "lookedUpItem": {
                "name": "Test Transmission",
                "artist": "Kasabian",
                "album": "Kasabian",
                "picture": null,
                "link": "http://open.spotify.com/track/5jhJur5n4fasblLSCOcrTp"
            }
        }
    }
```

    Markup : ```javascript
             ```

* Bullet list
 * Nested bullet
  * Sub-nested bullet etc
* Bullet list item 2

~~~
 Markup : * Bullet list
           * Nested bullet
            * Sub-nested bullet etc
          * Bullet list item 2
~~~

1. A numbered list
 1. A nested numbered list
 2. Which is numbered
2. Which is numbered

~~~
 Markup : 1. A numbered list
           1. A nested numbered list
           2. Which is numbered
          2. Which is numbered
~~~

> Blockquote
>> Nested blockquote

    Markup :  > Blockquote
              >> Nested Blockquote

_Horizontal line :_
- - - -