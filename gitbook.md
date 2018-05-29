# Gitbook

Gitbook 是一套利用 Markdown 文件編排的命列列出版工具。

## 如何安裝

* 安裝 NPM : brew install npm
* npm install -g gitbook-cli

## 如何操作

* 在目錄下 gitbook init
* 然後會產生數個檔
* README.md 是書籍簡介
* SUMMARY.md 是目錄

通常你可以生成一個如下內容的 SUMMARY 檔

```
## SUMMARY

* [第一章](ch1.md)
* [第二章](ch2.md)
```

然後 gitbook init，就會自動生成 `ch1.md`, `ch2.md`

## 如何生成 gitbook 的 epub

* 安裝 [calibre](https://calibre-ebook.com/)
* 然後 `ln -s ~/Applications/calibre.app/Contents/MacOS/ebook-convert /usr/bin` （這是因為 gitbook epub 必須調用 calibre 的執行檔生成 epub）


手動產生 book.json，內容如下，確保轉出來的書，標題是對的

```
{
  "title": "這是一本書"
}
```

通常我還會寫個 Makefile

```
gitbook:
        gitbook epub ./ XXXXX.epub
```

之後只要輸入 `make gitbook`，就可以產生 gitbook

## 一些其他技巧

* [快速產生列表](generate-list.md)
