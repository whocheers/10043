# 10043

Public website for the Call for Revoking US Presidential Proclamation 10043

## How to add a language

Add the language in `_config.yml`:

```
available_languages: [ en, zh ]
```

Add translations for the language in the `data/translations` files:

```
lang:
  en: English
  zh: 中文
menu:
  home:
    en: Home
    zh: 主页
```

Duplicate `_pages/en` content in `_pages/$language_code` and translate its content.
Change all `permalink` attributes in front matters.

Create assets `assets/images/logo-circle-$language_code.png`, `assets/images/full-logo-$language_code.png` and `assets/images/logo-title-$language_code.png` for the new language.
