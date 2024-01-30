# 나의 python 버전
FROM python:3.9.9

# /code 폴더 만들기
WORKDIR /code

# ./requirements.txt 를 /code/requirements.txt 로 복사
COPY ./requirements.txt /code/requirements.txt

# requirements.txt 를 보고 모듈 전체 설치(-r)
RUN pip install --no-cache-dir -r /code/requirements.txt

# 이제 app 에 있는 파일들을 /code/app 에 복사
COPY ./app /code/app

WORKDIR /code/app

EXPOSE 8001

# 실행
CMD ["python", "main.py"]