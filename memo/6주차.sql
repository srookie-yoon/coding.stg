데모🎬
https://noona-hnm.netlify.app/
유저 스토리
유저는 메뉴와 상품들을 볼 수 있다.
유저는 로그인을 할 수 있다.
유저는 상품디테일을 보기 위해 로그인을 해야한다.
로그인한 유저는 상품디테일정보를 볼 수 있다.
유저는 상품을 검색할 수 있다.
유저는 로그아웃할 수 있다.

1. react route 사이트에서 도큐먼트보고 가져옴
2. fontAwsome ( fontAwsome react )

3. json-server
    - https://www.npmjs.com/package/json-server
    - json-server 시작 명령어
        $ json-server --watch db.json --port 5000
        $ json-server --watch db.json --port 3004
    - db.json 자료 :
        https://gist.github.com/legobitna/24cf11ae95d53c9cdcdc7b0040f059e9
    

4. 배포하기
     -   참고 사이트🔊
            my-json 사이트🏹 : https://my-json-server.typicode.com/
            Netlify 주소 : https://www.netlify.com/
            전체 소스코드📜 : https://github.com/legobitna/hnm-react-router
            netlify 사용법을 모른다면? : https://youtu.be/WJtetccrv3o
            github 사용법을 모른다면? : https://youtu.be/lelVripbt2M
    - CI=false란?
            CI는 환경변수 입니다. 
            우리가 애플리케이션을 빌드 할때 필요한 환경변수들을 넣어줄 수 있습니다. 
            CI를 이용해서 빌드하는 환경을 허가하는게 netlify의 기본 설정값이고 (2020년 6월 15일에 생긴 룰), 
            이게 필요 없는 환경인 경우 false로 설정해주면 된다.
            참고자료: https://answers.netlify.com/t/new-ci-true-build-configuration-treating-warnings-as-errors-because-process-env-ci-true/14434


과제들 : 
    concious choice 부분도 true이면 보이고 false이면 안보이게 해주세요.
    카드에 마우스를 올려두면 카드가 커지는 hover 이벤트를 만들어 주세요.
    로그인 버튼을 클릭하면 로그인 페이지가 나오게 스스로 도전해보세요!
    로그인 페이지의 디자인을 스스로 해보세요.
    상품 디테일 페이지 디자인 마무리하기
    유저는 로그아웃 할 수 있다.
    로그인이된 상태이면 로그아웃버튼이, 로그아웃 된 상태이면 로그인 버튼이 보인다.
    H&M로고를 클릭하면 상품 전체페이지로 돌아온다.
    모바일 버전에서 메뉴는 사이드 메뉴로 들어간다. 제품 사진들은 한장씩 세로로 나온다.

    여러분들 그동안 어려운 프로젝트 하시느라 수고하셨습니다! 
    lifecycle 부터 react router까지 정말 지금까지 배운 모든 컨셉이 들어가있는 프로젝트 였습니다. 
    당연히 한번에 이해하는거 힘들고! 여러분들이 최소 1~2번은 스스로 만들어 보셔야 이해가 가능합니다! 그래서 여기서 주어지는 과제!

    모든 코드 지우고 처음부터 스스로 만들어보기
    반드시 이 마지막 과제 까지 하고 다음 레슨으로 넘어가시기 바랍니다.

