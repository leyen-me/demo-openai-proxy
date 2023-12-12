# OpenaiProxy
基于Vite的devServer实现代理转发。

# Dockerfile
```
docker build -t openai-proxy .

docker run -dit --restart=always --name openai-proxy -p 9008:80 openai-proxy
```

# Docker
```
# 在你的服务器上运行这个就行
docker run -dit --restart=always --name openai-proxy -p 9008:80 difffffft/openai-proxy:latest
```

# 配置
```python
client = OpenAI(api_key=CONFIG['APP']['OPENAI']['KEY'], base_url='http://xxx.xxx.xxx.xx:9008/v1')
```