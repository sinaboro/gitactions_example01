#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"

# 자바 설치 여부 확인 및 없으면 설치
if ! command -v java >/dev/null 2>&1; then
  echo "Java not found. Installing OpenJDK 17..."
  sudo apt-get update -y
  sudo apt-get install -y openjdk-17-jre-headless
fi

# 프로젝트 실행 디렉토리로 이동
cd /home/ubuntu/instagram-server

# 기존 8080 포트에서 실행 중인 프로세스 종료
sudo fuser -k -n tcp 8080 || true

# 새 서버 실행
nohup java -jar project.jar > ./output.log 2>&1 &

echo "--------------- 서버 배포 끝 -----------------"
