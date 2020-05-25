Baidu Pcs Web 版本
--------
利用 [Erope/baidupcs-web](https://github.com/Erope/baidupcs-web/) 修改版所建立的Docker 
Dockerfile inspired by [oldiy/baidupcs](https://hub.docker.com/r/oldiy/baidupcs)
可直接利用 pull tinganhsu/baidupcs 取得使用

--------
## Docker 參數
設定路徑
```
-v /root/.config/BaiduPCS-Go #為設定檔案
```
預設Web port
```
-p 5299:5299
```
環境參數
```
ARIA2RPC=...(填入Aria2伺服器的網址包含jsonrpc)
	example: http://192.168.1.1:6800/jsonrpc
ARIA2SECERT=...(填入Aria2伺服器的secert)
REVERSEHTTP=...(填入此BaiduPCSWeb的reverse head)
	example:http://192.168.1.1:5299/bd/
```
