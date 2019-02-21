## Pull Request 하기 위한 로컬저장소 셋팅

[![Onwer](https://img.shields.io/badge/owner-sksggg123-blue.svg)](https://sksggg123.github.io/)
[![HitCount](http://hits.dwyl.io/sksggg123/Pull_Request.svg)](http://hits.dwyl.io/sksggg123/Pull_Request) 
[![pull_request](https://img.shields.io/github/issues-pr/sksggg123/Pull_Request.svg?style=flat)](https://github.com/sksggg123/Pull_Request/pulls) 
[![License](https://img.shields.io/github/license/sksggg123/Pull_Request.svg?style=flat)](https://github.com/sksggg123/Pull_Request/blob/master/LICENSE)


## excute.sh
쉘스크립트 실행 시 기본적으로 원본 프로젝트 정보와 로컬 프로젝트정보가 설정되었는지 확인하며, 5가지 항목 중 선택하여 액션을 취한다.  

1. Clone Project
2. Remote Setting
3. Pull Project
4. Update Setting Value
5. Exit

1번을 선택하면 ``clone.sh``을 실행한다.   
2번을 선택하면 ``retmoe.sh``을 실행한다.  
3번을 선택하면 ``pull.sh``을 실행한다.  
4번을 선택하면 ``set.sh``을 실핸한다.   


## clone.sh
``set.sh``에 등록된 정보를 통해 local 경로에 저장한다.

## remote.sh
``set.sh``에 등록된 정보를 통해 원본 프로젝트를 remote 설정한다.

## pull.sh
원본 저장소의 최신 소스를 clone한 local 경로에 업데이트를 한다.

## set.sh
초기에 설정을 해야하며 등록된 정보를 통해 clone, remote, pull 작업을 한다.
