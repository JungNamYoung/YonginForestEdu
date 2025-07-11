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
    <div class="container page">
        <header role="banner">
            <div class="header__logoArea">
                <img class="header__logo" src="<c:url value='/forest/assets/images/용인시_심볼 1.png'/>" alt="용인시 공식 로고" />
                <h1 class="header__title">용인산림교육센터</h1>
            </div>
            <div class="header__timeArea">
                <p id="header__time" class="header__time" aria-live="polite" aria-atomic="true"></p>
            </div>
        </header>
        <main role="main">
            <section class="intro__main--area"> 
                <div class="intro__main--imgArea">
                    <img src="<c:url value='/forest/assets/images/배너_세로형_01.png'/>" alt="시작화면 이미지" />
                </div>
                <div class="intro__main--touch">
                    <svg viewBox="0 0 81 80" fill="none" xmlns="http://www.w3.org/2000/svg" role="presentation" focusable="false">
                        <mask id="mask0_474_1257" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="81" height="80">
                            <rect x="0.5" width="80" height="80" fill="#D9D9D9"/>
                        </mask>
                        <g mask="url(#mask0_474_1257)">
                            <path d="M36.5706 72.2819C34.8867 72.2819 33.2948 71.9272 31.7948 71.2177C30.2948 70.5083 29.0406 69.4891 28.0323 68.1602L12.1473 47.6152C11.8095 47.2008 11.6578 46.7263 11.6923 46.1919C11.7262 45.658 11.9228 45.2116 12.2823 44.8527C13.1156 43.9638 14.1123 43.4296 15.2723 43.2502C16.4323 43.0702 17.5187 43.2902 18.5314 43.9102L26.6539 48.2694V21.8977C26.6539 21.1894 26.8937 20.5955 27.3731 20.116C27.852 19.6371 28.4459 19.3977 29.1548 19.3977C29.8637 19.3977 30.4659 19.6371 30.9614 20.116C31.457 20.5955 31.7048 21.1894 31.7048 21.8977V51.896C31.7048 53.046 31.2048 53.9085 30.2048 54.4835C29.2048 55.0585 28.2026 55.066 27.1981 54.506L21.6981 51.6469L32.0956 65.1985C32.6428 65.8863 33.3095 66.4055 34.0956 66.756C34.8823 67.1066 35.7073 67.2819 36.5706 67.2819H52.9673C55.0573 67.2819 56.8353 66.5544 58.3014 65.0994C59.767 63.6438 60.4998 61.8713 60.4998 59.7819V47.2177C60.4998 46.0733 60.1128 45.1141 59.339 44.3402C58.5645 43.5663 57.6053 43.1794 56.4614 43.1794H42.1539C41.4456 43.1794 40.8517 42.9397 40.3723 42.4602C39.8934 41.9808 39.6539 41.3869 39.6539 40.6785C39.6539 39.9697 39.8934 39.376 40.3723 38.8977C40.8517 38.4188 41.4456 38.1794 42.1539 38.1794H56.4614C58.972 38.1794 61.1059 39.058 62.8631 40.8152C64.6209 42.573 65.4998 44.7071 65.4998 47.2177V59.7794C65.4998 63.2338 64.2726 66.1813 61.8181 68.6219C59.3642 71.0619 56.4139 72.2819 52.9673 72.2819H36.5706ZM39.9998 30.6469C39.2903 30.6469 38.6964 30.4074 38.2181 29.9285C37.7392 29.4496 37.4998 28.856 37.4998 28.1477C37.4998 28.0149 37.6067 27.5983 37.8206 26.8977C38.2651 26.1199 38.5984 25.3283 38.8206 24.5227C39.0428 23.7171 39.154 22.8422 39.154 21.8977C39.154 19.1199 38.1817 16.7588 36.2373 14.8144C34.2928 12.8699 31.9317 11.8977 29.1539 11.8977C26.3762 11.8977 24.0151 12.8699 22.0706 14.8144C20.1262 16.7588 19.1539 19.1199 19.1539 21.8977C19.1539 22.8422 19.2651 23.7171 19.4873 24.5227C19.7095 25.3283 20.0428 26.1199 20.4873 26.8977C20.6151 27.106 20.7003 27.3144 20.7431 27.5227C20.7859 27.731 20.8073 27.9397 20.8073 28.1485C20.8073 28.8569 20.577 29.4505 20.1164 29.9294C19.6559 30.4077 19.0695 30.6469 18.3573 30.6469C17.8967 30.6469 17.4703 30.523 17.0781 30.2752C16.6853 30.0274 16.3859 29.7177 16.1798 29.346C15.5214 28.2305 15.0192 27.0469 14.6731 25.7952C14.327 24.543 14.1539 23.2408 14.1539 21.8885C14.1539 17.7319 15.6134 14.1944 18.5323 11.276C21.4506 8.35715 24.9912 6.89771 29.1539 6.89771C33.3162 6.89771 36.8567 8.35715 39.7756 11.276C42.694 14.1944 44.1531 17.7319 44.1531 21.8885C44.1531 23.2408 43.9801 24.543 43.6339 25.7952C43.2878 27.0469 42.7859 28.2305 42.1281 29.346C41.9192 29.7177 41.627 30.0274 41.2514 30.2752C40.8759 30.523 40.4587 30.6469 39.9998 30.6469Z" fill="#259EF4"/>
                        </g>
                    </svg>
                    <p class="intro__main--touchText">시작하시려면 화면을 터치하세요.</p>
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

        function updateTime() {
            const now = new Date();
            const days = ['일', '월', '화', '수', '목', '금', '토'];

            const year = now.getFullYear();
            const month = (now.getMonth() + 1).toString().padStart(2, '0');
            const date = now.getDate().toString().padStart(2, '0');
            const dayOfWeek = days[now.getDay()];
            const hours = now.getHours().toString().padStart(2, '0');
            const minutes = now.getMinutes().toString().padStart(2, '0');

            const formattedTime = `\${year}. \${month}. \${date}(\${dayOfWeek}) \${hours}:\${minutes}`;
            document.getElementById('header__time').textContent = formattedTime;
        }

        setInterval(updateTime, 1000);
        updateTime();

        // 페이지 이동 함수 (기존과 동일)
        function mainPage() {
            const page = document.querySelector(".page");
            page.classList.add("fade-out");
            setTimeout(function () {
                window.location.href = "<c:url value='/forest/main'/>";
            }, 1000);
        }
    </script>
</body>
</html>