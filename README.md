# Python3
python 학습 및 개발 테스트를 위한 docker 환경 구성 

## 사용법
* repository 가져오기
    ```
    $ git clone https://github.com/solarconnect/da_dashboard
    ```

* docker 이미지 빌드 후 컨테이너 생성, python 기본 라이브러리 설치 
    ```
    $ ./run.sh create
    ```

* src 폴더의 requirements.txt 설치
    ```
    $ ./run.sh install
    ```

* docker python 실행
    ```
    $ ./run.sh

    # python linux 환경 진입
    $ python test.py
    ```

    * src 폴더의 python 소스를 수정한 뒤 python linux 환경에서 실행 가능   

* 제거
    ```
    $ ./run.sh destroy
    ```