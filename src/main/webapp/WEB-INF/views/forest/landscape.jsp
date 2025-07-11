<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>용인산림교육센터</title>
<link rel="stylesheet" href="<c:url value="/forest/css/swiper-bundle.min.css"/>">
<link rel="stylesheet" href="<c:url value="/forest/css/style.css"/>">
</head>
<body class="intro__body" onclick="mainPage()">
	<div class="container page">
		<header role="banner">
			<div class="header__logoArea">
				<img class="header__logo" src="<c:url value="/forest/assets/images/용인시_심볼 1.png"/>" alt="용인시 공식 로고" />
				<h1 class="header__title">용인산림교육센터</h1>
			</div>
			<div class="header__timeArea">
				<p id="header__time" class="header__time" aria-live="polite" aria-atomic="true"></p>
			</div>
		</header>
		<main role="main">
			<section class="intro__main--area">
				<div class="swiper mySwiper intro__main--swiper" role="region" aria-label="용인산림교육센터 홍보 슬라이드" aria-live="polite">
					<div class="swiper-wrapper" style="object-fit:contain;">
						<c:forEach var="fileVo" items="${listFileVo}">
							<div class="swiper-slide">
								<img src="${fileVo.getFilePath()}" alt="${fileVo.getFileName()}">
							</div>
						</c:forEach>
					</div>
					<div class="swiper-controls ${landscapeType=='image-fixed' ? 'd-none':''}" role="group" aria-label="슬라이드 제어">
						<div class="swiper-pagination-numbers" aria-label="현재 슬라이드 번호와 전체 슬라이드 개수"></div>

						<button class="swiper-autoplay-toggle" aria-label="슬라이드 자동 재생 시작 또는 정지">
							<span class="sr-only">슬라이드 자동 재생 버튼</span>
							<svg viewBox="0 0 26 32" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                <path d="M0 28.9375V3.0625C0 2.35417 0.25 1.76042 0.75 1.28125C1.25 0.802083 1.83333 0.5625 2.5 0.5625C2.70833 0.5625 2.92708 0.59375 3.15625 0.65625C3.38542 0.71875 3.60417 0.8125 3.8125 0.9375L24.1875 13.875C24.5625 14.125 24.8438 14.4375 25.0312 14.8125C25.2188 15.1875 25.3125 15.5833 25.3125 16C25.3125 16.4167 25.2188 16.8125 25.0312 17.1875C24.8438 17.5625 24.5625 17.875 24.1875 18.125L3.8125 31.0625C3.60417 31.1875 3.38542 31.2812 3.15625 31.3438C2.92708 31.4062 2.70833 31.4375 2.5 31.4375C1.83333 31.4375 1.25 31.1979 0.75 30.7188C0.25 30.2396 0 29.6458 0 28.9375Z" fill="#F7F7F8" />
                            </svg>
						</button>

						<button class="swiper-button-prev" aria-label="이전 홍보 슬라이드 보기"></button>
						<button class="swiper-button-next" aria-label="다음 홍보 슬라이드 보기"></button>
					</div>
				</div>
				<div class="intro__main--touch">
					<svg viewBox="0 0 81 80" fill="none" xmlns="http://www.w3.org/2000/svg" role="presentation" focusable="false">
                        <mask id="mask0_474_1257" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="81" height="80">
                            <rect x="0.5" width="80" height="80" fill="#D9D9D9" />
                        </mask>
                        <g mask="url(#mask0_474_1257)">
                            <path
							d="M36.5706 72.2819C34.8867 72.2819 33.2948 71.9272 31.7948 71.2177C30.2948 70.5083 29.0406 69.4891 28.0323 68.1602L12.1473 47.6152C11.8095 47.2008 11.6578 46.7263 11.6923 46.1919C11.7262 45.658 11.9228 45.2116 12.2823 44.8527C13.1156 43.9638 14.1123 43.4296 15.2723 43.2502C16.4323 43.0702 17.5187 43.2902 18.5314 43.9102L26.6539 48.2694V21.8977C26.6539 21.1894 26.8937 20.5955 27.3731 20.116C27.852 19.6371 28.4459 19.3977 29.1548 19.3977C29.8637 19.3977 30.4659 19.6371 30.9614 20.116C31.457 20.5955 31.7048 21.1894 31.7048 21.8977V51.896C31.7048 53.046 31.2048 53.9085 30.2048 54.4835C29.2048 55.0585 28.2026 55.066 27.1981 54.506L21.6981 51.6469L32.0956 65.1985C32.6428 65.8863 33.3095 66.4055 34.0956 66.756C34.8823 67.1066 35.7073 67.2819 36.5706 67.2819H52.9673C55.0573 67.2819 56.8353 66.5544 58.3014 65.0994C59.767 63.6438 60.4998 61.8713 60.4998 59.7819V47.2177C60.4998 46.0733 60.1128 45.1141 59.339 44.3402C58.5645 43.5663 57.6053 43.1794 56.4614 43.1794H42.1539C41.4456 43.1794 40.8517 42.9397 40.3723 42.4602C39.8934 41.9808 39.6539 41.3869 39.6539 40.6785C39.6539 39.9697 39.8934 39.376 40.3723 38.8977C40.8517 38.4188 41.4456 38.1794 42.1539 38.1794H56.4614C58.972 38.1794 61.1059 39.058 62.8631 40.8152C64.6209 42.573 65.4998 44.7071 65.4998 47.2177V59.7794C65.4998 63.2338 64.2726 66.1813 61.8181 68.6219C59.3642 71.0619 56.4139 72.2819 52.9673 72.2819H36.5706ZM39.9998 30.6469C39.2903 30.6469 38.6964 30.4074 38.2181 29.9285C37.7392 29.4496 37.4998 28.856 37.4998 28.1477C37.4998 28.0149 37.6067 27.5983 37.8206 26.8977C38.2651 26.1199 38.5984 25.3283 38.8206 24.5227C39.0428 23.7171 39.154 22.8422 39.154 21.8977C39.154 19.1199 38.1817 16.7588 36.2373 14.8144C34.2928 12.8699 31.9317 11.8977 29.1539 11.8977C26.3762 11.8977 24.0151 12.8699 22.0706 14.8144C20.1262 16.7588 19.1539 19.1199 19.1539 21.8977C19.1539 22.8422 19.2651 23.7171 19.4873 24.5227C19.7095 25.3283 20.0428 26.1199 20.4873 26.8977C20.6151 27.106 20.7003 27.3144 20.7431 27.5227C20.7859 27.731 20.8073 27.9397 20.8073 28.1485C20.8073 28.8569 20.577 29.4505 20.1164 29.9294C19.6559 30.4077 19.0695 30.6469 18.3573 30.6469C17.8967 30.6469 17.4703 30.523 17.0781 30.2752C16.6853 30.0274 16.3859 29.7177 16.1798 29.346C15.5214 28.2305 15.0192 27.0469 14.6731 25.7952C14.327 24.543 14.1539 23.2408 14.1539 21.8885C14.1539 17.7319 15.6134 14.1944 18.5323 11.276C21.4506 8.35715 24.9912 6.89771 29.1539 6.89771C33.3162 6.89771 36.8567 8.35715 39.7756 11.276C42.694 14.1944 44.1531 17.7319 44.1531 21.8885C44.1531 23.2408 43.9801 24.543 43.6339 25.7952C43.2878 27.0469 42.7859 28.2305 42.1281 29.346C41.9192 29.7177 41.627 30.0274 41.2514 30.2752C40.8759 30.523 40.4587 30.6469 39.9998 30.6469Z"
							fill="#259EF4" />
                        </g>
                    </svg>
					<p class="intro__main--touchText">시작하시려면 화면을 터치하세요.</p>
				</div>
			</section>
		</main>
	</div>
	<script src="<c:url value="/forest/js/swiper-bundle.min.js"/>"></script>
	<script src="<c:url value="/forest/js/script.js"/>"></script>

	<script>
		const swiperImg = document.querySelectorAll(".swiper-slide img");
	
	    swiperImg.forEach(function (img) {
	        img.addEventListener("click", function (e) {
	            e.stopPropagation(); // ⭐ 중요: 이벤트 전파 중지
	        })
	    });
    
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

        // HTML 요소 선택
        const autoBtn = document.querySelector(".swiper-autoplay-toggle");
        const prevBtn = document.querySelector(".swiper-button-prev");
        const nextBtn = document.querySelector(".swiper-button-next");

        var swiper = new Swiper(".mySwiper", {
            slidesPerView: "auto",
            pagination: {
                el: ".swiper-pagination",
                type: "bullets",
                clickable: true,
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            loop: true,
            autoplay: true, // 시작 시 자동재생 비활성화
            on: {
                init: function () {
                    updatePaginationNumbers(this);
                },
                slideChange: function () {
                    updatePaginationNumbers(this);
                    // 슬라이드 변경 시 스크린 리더에게 현재 슬라이드 정보 알림
                    const currentSlideIndex = this.realIndex + 1;
                    const totalSlides = this.slides.filter(slide => !slide.classList.contains("swiper-slide-duplicate")).length;
                    const paginationNumbers = document.querySelector(".swiper-pagination-numbers");
                    paginationNumbers.setAttribute('aria-label', `현재 ${currentSlideIndex}번째 슬라이드, 전체 ${totalSlides}개`);
                },
            }
        });

        // 숫자 페이지네이션 업데이트 함수
        function updatePaginationNumbers(swiper) {
            const realSlides = swiper.slides
                .filter(slide => !slide.classList.contains("swiper-slide-duplicate"));
            const totalSlides = realSlides.length;
            const currentSlide = swiper.realIndex + 1;

            const paginationNumbers = document.querySelector(".swiper-pagination-numbers");
            const currentSlideHTML = `<span class="current-slide">\${currentSlide}</span>`;
            const totalSlidesHTML = `<span class="total-slides">\${totalSlides}</span>`;

            paginationNumbers.innerHTML = currentSlideHTML + " / " + totalSlidesHTML;

            const currentSlideElement = paginationNumbers.querySelector(".current-slide");
            currentSlideElement.style.color = "#259EF4";
            currentSlideElement.style.fontWeight = "700";

            // 스크린 리더를 위한 aria-label 업데이트 (처음 로드될 때도 적용)
            paginationNumbers.setAttribute('aria-label', `현재 ${currentSlide}번째 슬라이드, 전체 ${totalSlides}개`);
        }

        // 재생/일시정지 아이콘 SVG
        const playIcon = `
        <svg width="26" height="32" viewBox="0 0 26 32" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
            <path d="M0 28.9375V3.0625C0 2.35417 0.25 1.76042 0.75 1.28125C1.25 0.802083 1.83333 0.5625 2.5 0.5625C2.70833 0.5625 2.92708 0.59375 3.15625 0.65625C3.38542 0.71875 3.60417 0.8125 3.8125 0.9375L24.1875 13.875C24.5625 14.125 24.8438 14.4375 25.0312 14.8125C25.2188 15.1875 25.3125 15.5833 25.3125 16C25.3125 16.4167 25.2188 16.8125 25.0312 17.1875C24.8438 17.5625 24.5625 17.875 24.1875 18.125L3.8125 31.0625C3.60417 31.1875 3.38542 31.2812 3.15625 31.3438C2.92708 31.4062 2.70833 31.4375 2.5 31.4375C1.83333 31.4375 1.25 31.1979 0.75 30.7188C0.25 30.2396 0 29.6458 0 28.9375Z" fill="#F7F7F8"/>
        </svg>
        `;

        const pauseIcon = `
        <svg width="30" height="36" viewBox="0 0 30 36" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
            <path d="M25 35.5C23.625 35.5 22.4479 35.0104 21.4688 34.0312C20.4896 33.0521 20 31.875 20 30.5V5.5C20 4.125 20.4896 2.94792 21.4688 1.96875C22.4479 0.989583 23.625 0.5 25 0.5C26.375 0.5 27.5521 0.989583 28.5312 1.96875C29.5104 2.94792 30 4.125 30 5.5V30.5C30 31.875 29.5104 33.0521 28.5312 34.0312C27.5521 35.0104 26.375 35.5 25 35.5ZM5 35.5C3.625 35.5 2.44792 35.0104 1.46875 34.0312C0.489583 33.0521 0 31.875 0 30.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5C6.375 0.5 7.55208 0.989583 8.53125 1.96875C9.51042 2.94792 10 4.125 10 5.5V30.5C10 31.875 9.51042 33.0521 8.53125 34.0312C7.55208 35.0104 6.375 35.5 5 35.5Z" fill="#F7F7F8"/>
        </svg>
        `;

        const autoplayToggleBtn = document.querySelector(".swiper-autoplay-toggle");
        let isPlaying = true;
        autoplayToggleBtn.innerHTML = pauseIcon;
        autoplayToggleBtn.setAttribute('aria-label', '슬라이드 자동 재생 정지');

        // 자동 재생 토글 버튼 클릭 이벤트
        autoplayToggleBtn.addEventListener("click", function (e) {
            e.stopPropagation(); // ⭐ 중요: 이벤트 전파 중지
            autoplayToggleBtn.blur(); // 클릭 후 포커스 제거

            if (!isPlaying) {
                swiper.autoplay.stop();
                autoplayToggleBtn.innerHTML = playIcon;
                autoplayToggleBtn.setAttribute('aria-label', '슬라이드 자동 재생 시작');
            } else {
                swiper.params.autoplay = {
                    delay: 3000,
                    disableOnInteraction: false
                };
                swiper.autoplay.start();
                autoplayToggleBtn.innerHTML = pauseIcon;
                autoplayToggleBtn.setAttribute('aria-label', '슬라이드 자동 재생 정지');
            }
            isPlaying = !isPlaying;
        });

        // 이전 슬라이드 버튼 클릭 이벤트
        prevBtn.addEventListener('click', function(e) {
            e.stopPropagation(); // ⭐ 중요: 이벤트 전파 중지
            swiper.slidePrev(); // Swiper의 이전 슬라이드 기능 호출
        });

        // 다음 슬라이드 버튼 클릭 이벤트
        nextBtn.addEventListener('click', function(e) {
            e.stopPropagation(); // ⭐ 중요: 이벤트 전파 중지
            swiper.slideNext(); // Swiper의 다음 슬라이드 기능 호출
        });

        // 터치 이벤트는 그대로 두지만, 페이지 이동을 막는 stopPropagation은 클릭 이벤트에서 이미 처리했으므로 여기서는 불필요합니다.
        autoBtn.addEventListener('touchstart', () => {
            autoBtn.classList.add('pressed');
        });
        autoBtn.addEventListener('touchend', () => {
            autoBtn.classList.remove('pressed');
        });

        prevBtn.addEventListener('touchstart', () => {
            prevBtn.classList.add('pressed');
        });
        prevBtn.addEventListener('touchend', () => {
            prevBtn.classList.remove('pressed');
        });

        nextBtn.addEventListener('touchstart', () => {
            nextBtn.classList.add('pressed');
        });
        nextBtn.addEventListener('touchend', () => {
            nextBtn.classList.remove('pressed');
        });

        // 시간 업데이트 함수 (기존과 동일)
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
                window.location.href = "<c:url value="/forest/main"/>";
            }, 1000);
        }
    </script>
    
    <%@ include file="/cuda/jsp/js/voice.js.jsp" %>
    <%@ include file="/cuda/jsp/js/touch.js.jsp" %>
</body>
</html>