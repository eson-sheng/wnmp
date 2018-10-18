# 关于`windows`中`PHP + Nginx + MariaDB`环境配置

## 安装`mariadb-10.3.10-winx64.msi`数据库
双击直接安装即可。

## 安装`Redis-x64-3.2.100.msi`缓存服务
双击直接安装即可。

## 修改配置文件中的地址
- `nginx-1.14.0\conf\nginx.conf`
*修改第44、58、70行的`root`变量地址为自己实际地址*
```conf
	location / {
	    root   C:/Users/eson/home/nginx-1.14.0/html;
	    index  index.php index.html;
	    autoindex on;
	    autoindex_exact_size off;
	    autoindex_localtime off;
	    charset utf-8,gbk;
	}

    location = /50x.html {
        root   C:/Users/eson/home/nginx-1.14.0/html;
    }

    location ~ \.php$ {
        root      C:/Users/eson/home/nginx-1.14.0/html;
        fastcgi_pass   127.0.0.1:9000;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
        include        fastcgi_params;
    }
```
*确认`root`变量地址配置正确。*

- `php-7.2.11\php.ini`
*修改第734行的地址为自己实际地址*
```
extension_dir = "C:/Users/eson/home/php-7.2.11/ext"
```
确认地址配置正确。