# alpine 버전은 curl 등의 패키지를 포함하고 있지 않다.
FROM node:22

# Working directory는 /app으로 설정
WORKDIR /app

# npm packge 설정 파일 복사
COPY package*.json ./

# packge*.json 참고하여 패키지 설치
RUN npm install

# 나머지 모든 파일 복사
COPY . .

# port 3000으로 외부 노출
EXPOSE 3000

# node app.js으로 WAS 실행
CMD ["node", "app.js"]