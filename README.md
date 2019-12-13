# mysql-pocketmiku

ポケットミクを制御するためのストレージエンジンです。  
MySQL 8.0.18のexampleストレージエンジンをベースに作成しています。  

MySQL Advent Calendar 2019 14日目のネタです。

https://miyakelp.hatenablog.jp/entry/2019/12/14/000000

## Usage

はじめにビルドして.soファイルをインストールしてください。

```mysql
INSTALL PLUGIN pocketmiku SONAME 'ha_pocketmiku.so';
```


1. ポケットミクをUSBケーブルで接続します（/dev/midi1 がポケットミクである前提で進めます）
2. テーブルをつくります
```mysql
 CREATE DATABASE mikumiku;
 CREATE TABLE mikumiku.`/dev/midi1` (
  `key` tinyint(4) DEFAULT NULL,
  `sound` tinyint(4) DEFAULT NULL,
  `velocity` tinyint(4) DEFAULT NULL,
  `length` int(11) DEFAULT NULL
) ENGINE=pocketmiku;
```
3. INSERTします
```mysql
INSERT INTO mikumiku.`/dev/midi1` (`key`, `sound`, `velocity`, `length`) VALUES (
  60,
  0,
  80,
  1000
);
```
4. かわいい！


