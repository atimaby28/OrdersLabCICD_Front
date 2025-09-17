FROM nginx:latest

# 외부에서 빌드한 dist 폴더 복사
COPY /dist /usr/share/nginx/html

# nginx 설정 복사
COPY /nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
