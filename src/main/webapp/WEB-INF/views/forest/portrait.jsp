<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <title>용인산림교육센터</title>
    <link rel="stylesheet" href="<c:url value='/forest/css/style.css'/>">
</head>
<body class="intro__body" onclick="mainPage()">
    <div class="container page container-singleImg">
        <header role="banner" aria-label="사이트 헤더">
            <a href="/indexSingle.html" aria-label="시작 페이지로 이동">
               <img class="header__logo" src="<c:url value='/forest/assets/images/용인시_심볼 1.png'/>" alt="용인시 로고" />
                <h1 class="header__title">용인산림교육센터</h1>
            </a>
            <p id="current-time" class="current-time" aria-live="polite"></p>
        </header>
   <main role="main" class="main-singleImg">
            <section class="intro__main--area"> 
                
                <div class="intro__main--touch">
                    <p class="intro__main--touchText">시작하시려면 화면을 터치하세요.</p>
                </div>
                <div class="intro__main--imgArea">
                                       <c:forEach var ="fileVo" items="${listFileVo}">
						<img src="${fileVo.getFilePath()}" alt="${fileVo.getFileName()}"  alt="시작화면 이미지" />
					</c:forEach>
                </div>
            </section>
        </main>
    </div>
    <script src="<c:url value='/forest/js/script.js'/>"></script>

    <script>
        window.addEventListener('load', function () {
            const introBody = document.querySelector('.intro__body');
            if (introBody) {
                introBody.classList.add('loaded');
                localStorage.setItem("lowScreenState", "false");
                localStorage.setItem("voiceMode", "voiceOnMode");
            } else {
                console.error('main-body 요소를 찾을 수 없습니다.');
            }
        });


        // 페이지 이동 함수 (기존과 동일)
        function mainPage() {
            const page = document.querySelector(".page");
            page.classList.add("fade-out");
            setTimeout(function () {
                window.location.href = "<c:url value='/forest/main'/>";
            }, 1000);
        }



        function updateKoreanTime() {
            const now = new Date();

            // 한국 시간 (UTC + 9)
            const koreaTime = new Date(now.getTime() + 9 * 60 * 60 * 1000);

            const year = koreaTime.getUTCFullYear();
            const month = String(koreaTime.getUTCMonth() + 1).padStart(2, '0');
            const date = String(koreaTime.getUTCDate()).padStart(2, '0');

            const days = ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'];
            const day = days[koreaTime.getUTCDay()];

            const hours = String(koreaTime.getUTCHours()).padStart(2, '0');
            const minutes = String(koreaTime.getUTCMinutes()).padStart(2, '0');

            const formatted = `\${year}년 \${month}월 \${date}일 \${day} \${hours}시 \${minutes}분`;

            document.getElementById('current-time').textContent = formatted;
        }

        // 1초마다 갱신
        setInterval(updateKoreanTime, 1000);

        // 초기 한 번 실행
        updateKoreanTime();



    </script>
</body>
</html>