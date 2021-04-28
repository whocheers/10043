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

Create forms for the new language in Typeform interface. Duplicate the english version of the form to ensure structure and questions references are the same.

Add webhooks on theses new forms to connect them to the server. In the admin typeform interface when you are on your form, click on the tab `CONNECT` then the tab `WEBHOOKS` and on the button `Add a webhook`. Enter the url after replacing `$event_or_supporter` and `$language_code` with the proper values: `https://10043.org/api/webhook/$event_or_supporter?lang=$language_code`. Also add the secret key in the corresponding field.

Add the newly created Typeforms forms urls in `_config.yml`:

```
typeform_urls:
  support:
    en: https://ambanum.typeform.com/to/nsd98d
    zh: https://ambanum.typeform.com/to/Kg6GFs
  event:
    en: https://ambanum.typeform.com/to/BSLKjs
    zh: https://ambanum.typeform.com/to/jkHAEH
```
（TODO：以上链接需要更新）

- - -

## How to embed supporters counters in your website

Copy and paste the following code into your HTML page where you want the counters:

```html
<iframe id="paris-call-iframe-counters" src="https://10043.org/en/embed/counters" style="width:100%;border:none;"></iframe>
```

You can choose the language by modifying the URL of the iframe. For example:

- English: `https://10043.org/en/embed/counters`
- 中文: `https://10043.org/zh/embed/counters`


In order to make the iframe reactive (i.e. to correctly size its height according to the size of the screen), uou can add the following script in the host page, for example right after the closing `</iframe>`:

```html
<script>window.addEventListener('message',function(e){e.origin==="https://10043.org"&&e.data.hasOwnProperty("parisCallFrameHeight")&&(document.getElementById("paris-call-iframe-counters").style.height=`${e.data.parisCallFrameHeight}px`)});</script>
```
