#!/usr/bin/env bash
# GitHub Pages 배포용 git 초기화 스크립트
# 사용 전: GitHub에서 빈 저장소를 먼저 생성하세요 (예: saemaeul-quiz)

set -e
REPO_URL="$1"   # 예: https://github.com/USERNAME/saemaeul-quiz.git
if [ -z "$REPO_URL" ]; then
  echo "사용법: ./deploy_guide.sh https://github.com/사용자명/저장소명.git"
  exit 1
fi

git init
git add index.html README.md .nojekyll
git commit -m "새마을금고법 학습 퀴즈 배포"
git branch -M main
git remote add origin "$REPO_URL"
git push -u origin main

echo ""
echo "✅ 업로드 완료!"
echo "GitHub 저장소 → Settings → Pages → Source를 'main / root'로 설정하면 배포됩니다."
