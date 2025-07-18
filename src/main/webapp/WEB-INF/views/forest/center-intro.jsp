<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/cuda/jsp/js/Define.js.jsp" %>
<%@ include file="/cuda/jsp/js/App.js.jsp" %>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <title>용인산림교육센터</title>
    <link rel="stylesheet" href="<c:url value="/forest/css/swiper-bundle.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/forest/css/style.css"/>">
</head>
<body class="sub-body">
	<div class="container page">
		<header role="banner" aria-label="사이트 헤더">
			<h1>센터소개</h1>
		</header>

		<main id="mainContent" tabindex="-1">
			<section class="main__content">
				<h1 class="sr-only">용인산림교육센터 센터 상세 정보</h1>
				<article>
					<nav class="main__navigation" aria-label="센터 탭 메뉴">
						<ul role="tablist">
							<li role="presentation">
								<button class="active" data-area="greetings" id="tab1" role="tab" aria-controls="panel1" aria-selected="true">인사말</button>
							</li>
							<li role="presentation">
								<button id="tab2" data-area="facilities" role="tab" aria-controls="panel2" aria-selected="false">시설개요</button>
							</li>
						</ul>
					</nav>

					<div class="main__contents">
						<div id="panel1" class="main__contents--greetings active" role="tabpanel" tabindex="0" aria-labelledby="tab1">
							<div class="main__contents--greetingsArea" aria-label="인사말">
								<div class="main__contents--greetingText">
									<p class="greetingTitle">안녕하십니까?</p>
									<p class="greetingWelcome">용인산림교육센터에 방문하신 것을 진심으로 환영합니다.</p>
								</div>
								<hr>
								<div class="main__contents--greetingText">
									<p class="greetingThank">
										용인산림교육센터는 다양한 숲 체험과 교육을 통해 산림에 대한 올바른 지식을 습득하고 가치관을 가지도록 함으로써 산림을 지속가능하게 보전하고, 국가와 사회 발전 및 시민의 삶의 질 향상에 이바지함을 목적으로 하고 있습니다.<br>
										<br>용인산림교육센터는 용인자연휴양림과 연계한 시설운영으로 시민들에게 힐링이 되는 교육공간을 제공하며, 체계적인 생애주기별 맞춤형 프로그램을 통해 양질의 산림복지서비스를 제공 할 수 있도록 최선을 다하겠습니다.<br>
										<br>여러분의 많은 관심과 응원을 부탁드립니다.<br>감사합니다.
									</p>
								</div>
							</div>
							<div class="main__content--videoArea">
								<video id="sign-video" class="sign-video center-sign-video" aria-label="수어 안내 영상">
									<source src="<c:url value="/forest/assets/video/ym_intro.mp4"/>" type="video/mp4">
									<p>
										현재 사용하시는 브라우저는 비디오 재생을 지원하지 않습니다. <a href="<c:url value="/forest/assets/video/nhm_welcome.webm"/>" target="_blank" title="수어 안내 영상 다운로드">영상 다운로드</a>
									</p>
								</video>
							</div>
						</div>
						
						<div id="panel2" class="main__contents--facilities" role="tabpanel" tabindex="0" aria-labelledby="tab2" hidden>
						
						
							<div class="main__contents--facilitiesArea" aria-label="시설개요">
								<div class="main__contents--facilitiesText">
									<p class="facilitiesTitle">용인산림교육센터는</p>
									<p class="facilitiesWelcome">시민의 창의성과 정서를 함양하고 산림에 대한 가치관을 증진시키기 위한 목적으로 산림의 분야별 프로그램 교육 및 체험·숙박이 한 곳에서 가능한 시설입니다.</p>
								</div>
								<hr>
								<div class="main__contents--facilitiesExplanationArea">
									<div class="main__contents--facilitiesTitle">
										<p>사업개요</p>
									</div>
									<div class="main__contents--facilitiesExplanation">
										<ul>
											<li>
												<p>위치 : 처인구 모현읍 초부로196-11(초부리 275번지) 일원</p>
											</li>
											<li>
												<p>면적 : 12,190㎡ (조성면적 : 199,825㎡, 연면적 : 2,972㎡)</p>
											</li>
											<li>
												<p>주요시설 : 교육관, 숙박동, 나눔숲복지센터, 식당, 진입로</p>
											</li>
										</ul>
									</div>
								</div>
								<hr>
								<div class="main__contents--facilitiesExplanationArea">
									<div class="main__contents--facilitiesTitle">
										<p>시설현황</p>
									</div>
									<div class="main__contents--facilitiesExplanation">
										<p>총 강의시설 5실, 숙박시설 17실</p>
										<ul>
											<li>
												<p>강의시설 : 대강당, 강의·체험실(4)</p>
											</li>
											<li>
												<p>숙박시설 : 2인(6), 5인(7), 12인(4)</p>
											</li>
										</ul>
									</div>
								</div>
								<hr>
								<div class="main__contents--facilitiesExplanationArea">
									<div class="main__contents--facilitiesTitle">
										<p>교육프로그램</p>
									</div>
									<div class="main__contents--facilitiesExplanation">
										<ul>
											<li>
												<p>교원직무연수, 숲해설, 유아숲, 숲길등산, 산림치유, 목공체험</p>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<audio id="accessibilityAudio" src="<c:url value="/forest/assets/mp3/ym_intro2.mp3"/>" aria-label="사이트 음성 안내" hidden></audio>
						</div>
					</div>
				</article>
			</section>
		</main>

		<aside class="main__controls" role="complementary" aria-label="보조 기능 컨트롤">
			<div class="main__controls--control main__controls--voice">
				<p>수어/음성 안내</p>
				<button class="main__controls--pauseBtn voice-pauseBtn" aria-label="수어 영상 일시정지">
					<svg viewBox="0 0 24 28" fill="none" xmlns="http://www.w3.org/2000/svg" class="pauseBtn-icon" aria-hidden="true" focusable="false" role="img">
                        <path d="M20 28C18.9 28 17.9583 27.6083 17.175 26.825C16.3917 26.0417 16 25.1 16 24V4C16 2.9 16.3917 1.95833 17.175 1.175C17.9583 0.391667 18.9 0 20 0C21.1 0 22.0417 0.391667 22.825 1.175C23.6083 1.95833 24 2.9 24 4V24C24 25.1 23.6083 26.0417 22.825 26.825C22.0417 27.6083 21.1 28 20 28ZM4 28C2.9 28 1.95833 27.6083 1.175 26.825C0.391667 26.0417 0 25.1 0 24V4C0 2.9 0.391667 1.95833 1.175 1.175C1.95833 0.391667 2.9 0 4 0C5.1 0 6.04167 0.391667 6.825 1.175C7.60833 1.95833 8 2.9 8 4V24C8 25.1 7.60833 26.0417 6.825 26.825C6.04167 27.6083 5.1 28 4 28Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--playBtn voice-playBtn" aria-label="수어 영상 재생">
					<svg viewBox="0 0 21 26" fill="none" xmlns="http://www.w3.org/2000/svg" class="playBtn-icon" aria-hidden="true" focusable="false" role="img">
                        <path d="M0 23.3499V2.6499C0 2.08324 0.2 1.60824 0.6 1.2249C1 0.841569 1.46667 0.649902 2 0.649902C2.16667 0.649902 2.34167 0.674902 2.525 0.724902C2.70833 0.774902 2.88333 0.849902 3.05 0.949902L19.35 11.2999C19.65 11.4999 19.875 11.7499 20.025 12.0499C20.175 12.3499 20.25 12.6666 20.25 12.9999C20.25 13.3332 20.175 13.6499 20.025 13.9499C19.875 14.2499 19.65 14.4999 19.35 14.6999L3.05 25.0499C2.88333 25.1499 2.70833 25.2249 2.525 25.2749C2.34167 25.3249 2.16667 25.3499 2 25.3499C1.46667 25.3499 1 25.1582 0.6 24.7749C0.2 24.3916 0 23.9166 0 23.3499Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--reproductionBtn voice-replayBtn" aria-label="수어 영상 다시 재생">
					<svg viewBox="0 0 36 42" fill="none" xmlns="http://www.w3.org/2000/svg" class="reproductionBtn-icon" aria-hidden="true" focusable="false" role="img">
                        <path
							d="M18 41.8593C15.5 41.8593 13.1583 41.3843 10.975 40.4343C8.79167 39.4843 6.89167 38.201 5.275 36.5843C3.65833 34.9676 2.375 33.0676 1.425 30.8843C0.475 28.7009 0 26.3593 0 23.8593C0 23.2926 0.191667 22.8176 0.575 22.4343C0.958333 22.0509 1.43333 21.8593 2 21.8593C2.56667 21.8593 3.04167 22.0509 3.425 22.4343C3.80833 22.8176 4 23.2926 4 23.8593C4 27.7593 5.35833 31.0676 8.075 33.7843C10.7917 36.5009 14.1 37.8593 18 37.8593C21.9 37.8593 25.2083 36.5009 27.925 33.7843C30.6417 31.0676 32 27.7593 32 23.8593C32 19.9593 30.6417 16.6509 27.925 13.9343C25.2083 11.2176 21.9 9.85928 18 9.85928H17.7L19.4 11.5593C19.8 11.9593 19.9917 12.4259 19.975 12.9593C19.9583 13.4926 19.7667 13.9593 19.4 14.3593C19 14.7593 18.525 14.9676 17.975 14.9843C17.425 15.0009 16.95 14.8093 16.55 14.4093L11.4 9.25928C11 8.85928 10.8 8.39261 10.8 7.85928C10.8 7.32594 11 6.85928 11.4 6.45928L16.55 1.30928C16.95 0.909276 17.425 0.71761 17.975 0.734276C18.525 0.750943 19 0.959276 19.4 1.35928C19.7667 1.75928 19.9583 2.22594 19.975 2.75928C19.9917 3.29261 19.8 3.75928 19.4 4.15928L17.7 5.85928H18C20.5 5.85928 22.8417 6.33428 25.025 7.28428C27.2083 8.23428 29.1083 9.51761 30.725 11.1343C32.3417 12.7509 33.625 14.6509 34.575 16.8343C35.525 19.0176 36 21.3593 36 23.8593C36 26.3593 35.525 28.7009 34.575 30.8843C33.625 33.0676 32.3417 34.9676 30.725 36.5843C29.1083 38.201 27.2083 39.4843 25.025 40.4343C22.8417 41.3843 20.5 41.8593 18 41.8593Z"
							fill="#3C3F49" />
                    </svg>
				</button>
			</div>
			<button class="main__controls--homeBtn" aria-label="메인 페이지로 이동">
				<svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true" focusable="false">
                    <mask id="mask0_604_1013" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="48" height="48">
                    <rect width="48" height="48" fill="#D9D9D9" />
                    </mask>
                    <g mask="url(#mask0_604_1013)">
                    <path
						d="M12 37.8141H18.6925V27.7371C18.6925 27.2251 18.8657 26.7957 19.212 26.4491C19.5587 26.1027 19.988 25.9296 20.5 25.9296H27.5C28.012 25.9296 28.4413 26.1027 28.788 26.4491C29.1343 26.7957 29.3075 27.2251 29.3075 27.7371V37.8141H36V20.1216C36 20.0192 35.9775 19.9264 35.9325 19.8431C35.8878 19.7597 35.827 19.6859 35.75 19.6216L24.3655 11.0641C24.2628 10.9744 24.141 10.9296 24 10.9296C23.859 10.9296 23.7372 10.9744 23.6345 11.0641L12.25 19.6216C12.173 19.6859 12.1122 19.7597 12.0675 19.8431C12.0225 19.9264 12 20.0192 12 20.1216V37.8141ZM9 37.8141V20.1216C9 19.5492 9.128 19.0071 9.384 18.4951C9.64033 17.9827 9.99433 17.5609 10.446 17.2296L21.831 8.65257C22.4627 8.17057 23.1847 7.92957 23.997 7.92957C24.8093 7.92957 25.5333 8.17057 26.169 8.65257L37.554 17.2296C38.0057 17.5609 38.3597 17.9827 38.616 18.4951C38.872 19.0071 39 19.5492 39 20.1216V37.8141C39 38.6321 38.7045 39.3366 38.1135 39.9276C37.5225 40.5186 36.818 40.8141 36 40.8141H28.1155C27.6032 40.8141 27.1738 40.6407 26.8275 40.2941C26.4808 39.9477 26.3075 39.5184 26.3075 39.0061V28.9296H21.6925V39.0061C21.6925 39.5184 21.5192 39.9477 21.1725 40.2941C20.8262 40.6407 20.3968 40.8141 19.8845 40.8141H12C11.182 40.8141 10.4775 40.5186 9.8865 39.9276C9.2955 39.3366 9 38.6321 9 37.8141Z"
						fill="white" />
                    </g>
                </svg>
			</button>
			<button id="lowScreenBtn" class="main__controls--btn main__controls--lowScreenBtn" aria-label="화면 높이 조절" aria-expanded="false" aria-pressed="false">
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="lowScreenBtn-icon" aria-hidden="true" focusable="false" role="img">
                    <path d="M5 45.5C3.625 45.5 2.44792 45.0104 1.46875 44.0312C0.489583 43.0521 0 41.875 0 40.5V30.5C0 29.125 0.489583 27.9479 1.46875 26.9688C2.44792 25.9896 3.625 25.5 5 25.5H40C41.375 25.5 42.5521 25.9896 43.5312 26.9688C44.5104 27.9479 45 29.125 45 30.5V40.5C45 41.875 44.5104 43.0521 43.5312 44.0312C42.5521 45.0104 41.375 45.5 40 45.5H5ZM5 20.5C3.625 20.5 2.44792 20.0104 1.46875 19.0312C0.489583 18.0521 0 16.875 0 15.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5H40C41.375 0.5 42.5521 0.989583 43.5312 1.96875C44.5104 2.94792 45 4.125 45 5.5V15.5C45 16.875 44.5104 18.0521 43.5312 19.0312C42.5521 20.0104 41.375 20.5 40 20.5H5ZM40 5.5H5V15.5H40V5.5Z" fill="#3C3F49" />
                </svg>
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="highScreenBtn-icon" aria-hidden="true" focusable="false" role="img">
                    <path d="M5 20.5C3.625 20.5 2.44792 20.0104 1.46875 19.0312C0.489583 18.0521 0 16.875 0 15.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5H40C41.375 0.5 42.5521 0.989583 43.5312 1.96875C44.5104 2.94792 45 4.125 45 5.5V15.5C45 16.875 44.5104 18.0521 43.5312 19.0312C42.5521 20.0104 41.375 20.5 40 20.5H5ZM5 45.5C3.625 45.5 2.44792 45.0104 1.46875 44.0312C0.489583 43.0521 0 41.875 0 40.5V30.5C0 29.125 0.489583 27.9479 1.46875 26.9688C2.44792 25.9896 3.625 25.5 5 25.5H40C41.375 25.5 42.5521 25.9896 43.5312 26.9688C44.5104 27.9479 45 29.125 45 30.5V40.5C45 41.875 44.5104 43.0521 43.5312 44.0312C42.5521 45.0104 41.375 45.5 40 45.5H5ZM5 40.5H40V30.5H5V40.5Z" fill="#3C3F49" />
                </svg>
				<span class="lowScreenBtn-label">화면 높이 조절</span>
			</button>
		</aside>
		<footer id="footer">
			<div class="swiper mySwiper1">
				<div class="swiper-wrapper">
					<c:forEach var="img" items="${listFileVo}">
						<div class="swiper-slide">
							<img class="footer-bg" src="${img.getFilePath()}" alt="${img.getFileName()}">
						</div>
					</c:forEach>
				</div>
			</div>
		</footer>
	</div>
	

	<script src="<c:url value="/forest/js/swiper-bundle.min.js"/>"></script>
    <script src="<c:url value="/forest/js/footer-swiper.js"/>"></script>
    <script src="<c:url value="/forest/js/script.js"/>"></script>
    <script src="<c:url value="/forest/js/sub-page.js"/>"></script>

    <script>
        const container = document.querySelector(".container");
        const homeBtn = document.querySelector(".main__controls--homeBtn");
        const Audio = document.querySelector("#accessibilityAudio");

        // 수어 영상 및 제어 버튼 요소 가져오기
        const signVideo = document.getElementById('sign-video');
        const voicePauseBtn = document.querySelector('.voice-pauseBtn');
        const voicePlayBtn = document.querySelector('.voice-playBtn');
        const voiceReplayBtn = document.querySelector('.voice-replayBtn');

        // 낮은화면
        const lowScreenBtn = document.getElementById("lowScreenBtn");
        const label = lowScreenBtn?.querySelector(".lowScreenBtn-label");
        const lowIcon = document.querySelector(".lowScreenBtn-icon");
        const highIcon = document.querySelector(".highScreenBtn-icon");
        const footer = document.getElementById("footer");

        // 공통 미디어 컨트롤 함수
        function updateMediaControls(isPlaying, mediaType) {
            if (mediaType === 'video') {
                voicePlayBtn.setAttribute('aria-label', isPlaying ? '수어 영상 일시정지' : '수어 영상 재생');
                voicePauseBtn.setAttribute('aria-label', isPlaying ? '수어 영상 일시정지' : '수어 영상 재생');
            } else if (mediaType === 'audio') {
                voicePlayBtn.setAttribute('aria-label', isPlaying ? '음성 안내 일시정지' : '음성 안내 재생');
                voicePauseBtn.setAttribute('aria-label', isPlaying ? '음성 안내 일시정지' : '음성 안내 재생');
            }

            if (isPlaying) {
                voicePlayBtn.style.display = 'none'; // 재생 버튼 숨김
                voicePauseBtn.style.display = 'flex'; // 일시정지 버튼 보임
            } else {
                voicePlayBtn.style.display = 'flex'; // 재생 버튼 보임
                voicePauseBtn.style.display = 'none'; // 일시정지 버튼 숨김
            }
        }

        // 영상 재생 함수
        function playVideo() {
            if (signVideo.paused) {
                signVideo.play().then(() => {
                    updateMediaControls(true, 'video'); // 재생 성공 시 컨트롤 업데이트
                    localStorage.setItem('voiceMode', 'voiceOnMode'); // 재생 성공 시 상태 저장
                    console.log("수어 영상 재생");
                }).catch(error => {
                    console.warn("수어 영상 자동 재생이 차단되었습니다:", error);
                    updateMediaControls(false, 'video'); // 자동 재생 실패 시 일시정지 상태로 간주
                    localStorage.setItem('voiceMode', 'voiceOffMode'); // 현재 상태 저장 (voiceOffMode)
                });
            }
        }

        // 영상 일시정지 함수
        function pauseVideo() {
            if (!signVideo.paused) {
                signVideo.pause();
                updateMediaControls(false, 'video'); // 일시정지 시 컨트롤 업데이트
                localStorage.setItem('voiceMode', 'voiceOffMode'); // 상태 저장
                console.log("수어 영상 일시정지");
            }
        }

        // 영상 다시 재생 함수
        function replayVideo() {
            signVideo.currentTime = 0; // 영상을 처음으로 되감기
            playVideo(); // 재생 함수 호출 (내부에서 버튼 상태 및 로컬 스토리지 업데이트)
            console.log("수어 영상 다시 재생");
        }

        // 오디오 재생 함수 (accessibilityAudio 전용)
        function playAudio() {
            if (Audio.paused) {
                Audio.play().then(() => {
                    updateMediaControls(true, 'audio'); // 재생 성공 시 컨트롤 업데이트
                    localStorage.setItem('voiceMode', 'voiceOnMode');
                    console.log("음성 안내 재생");
                }).catch(error => {
                    console.warn("음성 안내 자동 재생이 차단되었습니다:", error);
                    updateMediaControls(false, 'audio'); // 자동 재생 실패 시 일시정지 상태로 간주
                    localStorage.setItem('voiceMode', 'voiceOffMode'); // 현재 상태 저장 (voiceOffMode)
                });
            }
        }

        // 오디오 일시정지 함수 (accessibilityAudio 전용)
        function pauseAudio() {
            if (!Audio.paused) {
                Audio.pause();
                updateMediaControls(false, 'audio'); // 일시정지 시 컨트롤 업데이트
                localStorage.setItem('voiceMode', 'voiceOffMode');
                console.log("음성 안내 일시정지");
            }
        }

        // 오디오 다시 재생 함수 (accessibilityAudio 전용)
        function replayAudio() {
            Audio.currentTime = 0; // 오디오를 처음으로 되감기
            playAudio(); // 재생 함수 호출 (내부에서 버튼 상태 업데이트)
            console.log("음성 안내 다시 재생");
        }


        // 이벤트 리스너 연결 - 버튼 클릭 시 해당 미디어 제어 함수 호출
        voicePlayBtn.addEventListener('click', () => {
            if (!signVideo.hidden) { // 수어 영상이 활성화된 경우 (hidden 속성 확인)
                playVideo();
            } else if (!Audio.hidden) { // 음성 안내가 활성화된 경우 (hidden 속성 확인)
                playAudio();
            }
        });

        voicePauseBtn.addEventListener('click', () => {
            if (!signVideo.hidden) { // 수어 영상이 활성화된 경우
                pauseVideo();
            } else if (!Audio.hidden) { // 음성 안내가 활성화된 경우
                pauseAudio();
            }
        });

        voiceReplayBtn.addEventListener('click', () => {
            if (!signVideo.hidden) { // 수어 영상이 활성화된 경우
                replayVideo();
            } else if (!Audio.hidden) { // 음성 안내가 활성화된 경우
                replayAudio();
            }
        });


        // 영상이 끝났을 때 일시정지 상태로 변경하고 상태 저장
        signVideo.addEventListener('ended', function() {
            updateMediaControls(false, 'video'); // 종료 시 일시정지 상태로 표시
            localStorage.setItem('voiceMode', 'voiceOffMode'); // 종료 시 voiceOffMode로 저장
            console.log("수어 영상 종료 및 재생 버튼 표시");
        });

        // 음성 안내가 끝났을 때 일시정지 상태로 변경
        Audio.addEventListener('ended', function() {
            updateMediaControls(false, 'audio'); // 종료 시 일시정지 상태로 표시
            localStorage.setItem('voiceMode', 'voiceOffMode'); // 종료 시 voiceOffMode로 저장
            console.log("음성 안내 종료 및 재생 버튼 표시");
        });


        if (lowScreenBtn && footer && container) {
            const moveFooter = (toTop) => {
                footer.classList.remove("moving-in", "moving-out");
                footer.classList.add("moving-out");

                // aria-expanded 및 aria-pressed 업데이트
                lowScreenBtn.setAttribute("aria-expanded", toTop);
                lowScreenBtn.setAttribute("aria-pressed", toTop);


                setTimeout(() => {
                    if (toTop) {
                        container.insertBefore(footer, container.firstChild);
                        footer.dataset.moved = "true";
                        localStorage.setItem("lowScreenState", "true");
                        label && (label.innerText = "높은 화면");
                        lowIcon && (lowIcon.style.display = "none");
                        highIcon && (highIcon.style.display = "block");
                    } else {
                        container.appendChild(footer);
                        footer.dataset.moved = "false";
                        localStorage.setItem("lowScreenState", "false");
                        label && (label.innerText = "낮은 화면");
                        lowIcon && (lowIcon.style.display = "block");
                        highIcon && (highIcon.style.display = "none");
                    }

                    requestAnimationFrame(() => {
                        footer.classList.remove("moving-out");
                        footer.classList.add("moving-in");
                    });
                }, 300); // out 애니메이션 지속 시간과 맞춰야 함
            };

            lowScreenBtn.addEventListener("click", function () {
                const isMoved = footer.dataset.moved === "true";
                moveFooter(!isMoved);
            });

            const savedLowScreenState = localStorage.getItem("lowScreenState") === "true";
            moveFooter(savedLowScreenState);
        }

        window.addEventListener('load', function () {
            const subBody = document.querySelector('.sub-body');
            if (subBody) {
                subBody.classList.add('loaded');
            } else {
                console.error('sub-body 요소를 찾을 수 없습니다.');
            }

            const savedMode = localStorage.getItem('voiceMode');

            // 페이지 로드 시 tab1 (인사말) 상태로 시작하므로 signVideo를 제어합니다.
            // 로컬 스토리지 상태에 따라 초기 버튼 가시성 설정 및 영상 재생 시도
            if (savedMode === 'voiceOnMode' || savedMode === null) {
                // 'voiceOnMode'이거나 저장된 값이 없으면 (첫 방문), 재생 시도 및 일시정지 버튼 표시
                signVideo.play().then(() => {
                    updateMediaControls(true, 'video'); // 재생 성공 시 컨트롤 업데이트
                    localStorage.setItem('voiceMode', 'voiceOnMode'); // 재생 성공 시 상태 저장
                }).catch(error => {
                    console.warn("자동 재생이 차단되었습니다:", error);
                    updateMediaControls(false, 'video'); // 자동 재생 실패 시 일시정지 상태로 간주
                    localStorage.setItem('voiceMode', 'voiceOffMode'); // 일시정지 상태로 저장
                });
            } else { // savedMode === 'voiceOffMode'
                // 'voiceOffMode'이면, 영상 일시정지 및 재생 버튼 표시
                signVideo.pause(); // 명시적으로 일시정지
                updateMediaControls(false, 'video'); // 일시정지 상태로 컨트롤 업데이트
                localStorage.setItem('voiceMode', 'voiceOffMode'); // 일시정지 상태 저장
            }
        });

        homeBtn.addEventListener("click", () => {
            const page = document.querySelector(".page");
            page.classList.add("fade-out");

            setTimeout(function () {
                location.replace("<c:url value="/forest/main"/>");
            }, 500); // 0.5초
        });


        // 탭 메뉴 활성화/비활성화 로직 (재사용성을 위해 함수로 분리)
        function activateTab(tabToActivate, panelToActivate, mediaType) {
            const currentActiveTab = document.querySelector(".main__navigation button.active");
            const currentActivePanel = document.querySelector(".main__contents > div.active");

            if (currentActiveTab) {
                currentActiveTab.classList.remove("active");
                currentActiveTab.setAttribute("aria-selected", "false");
            }
            if (currentActivePanel) {
                currentActivePanel.classList.remove("active");
                currentActivePanel.setAttribute("hidden", "");
            }

            tabToActivate.classList.add("active");
            tabToActivate.setAttribute("aria-selected", "true");
            panelToActivate.classList.add("active");
            panelToActivate.removeAttribute("hidden");

            // 미디어 요소 상태 업데이트
            if (mediaType === 'video') {
                document.querySelector(".main__controls--voice > p").innerText = "수어/음성 안내";
                Audio.pause();
                Audio.currentTime = 0;
                Audio.hidden = true; // Audio 숨기기
                Audio.setAttribute("aria-hidden", "true");
                Audio.setAttribute("inert", "");
                signVideo.hidden = false; // signVideo 보이기
                signVideo.removeAttribute("aria-hidden");
                signVideo.removeAttribute("inert");

                const savedMode = localStorage.getItem('voiceMode');
                if (savedMode === 'voiceOnMode' || savedMode === null) {
                    signVideo.currentTime = 0;
                    playVideo();
                } else {
                    signVideo.pause();
                    signVideo.currentTime = 0;
                    updateMediaControls(false, 'video');
                }
            } else if (mediaType === 'audio') {
                document.querySelector(".main__controls--voice > p").innerText = "음성 안내";
                signVideo.pause();
                signVideo.currentTime = 0;
                signVideo.hidden = true; // signVideo 숨기기
                signVideo.setAttribute("aria-hidden", "true");
                signVideo.setAttribute("inert", "");
                Audio.hidden = false; // Audio 보이기
                Audio.removeAttribute("aria-hidden");
                Audio.removeAttribute("inert");

                const savedMode = localStorage.getItem('voiceMode');
                if (savedMode === 'voiceOnMode' || savedMode === null) {
                    Audio.currentTime = 0;
                    playAudio();
                } else {
                    Audio.pause();
                    Audio.currentTime = 0;
                    updateMediaControls(false, 'audio');
                }
            }
        }

        // tab2 클릭 시 (시설개요)
        document.querySelector("#tab2").addEventListener("click", () => {
            const tab2 = document.querySelector("#tab2");
            const panel2 = document.querySelector("#panel2");
            activateTab(tab2, panel2, 'audio');
        });

        // tab1 클릭 시 (인사말)
        document.querySelector("#tab1").addEventListener("click", () => {
            const tab1 = document.querySelector("#tab1");
            const panel1 = document.querySelector("#panel1");
            activateTab(tab1, panel1, 'video');
        });
        
    </script>
    
    <%@ include file="/cuda/jsp/js/voice.js.jsp" %>
    <%@ include file="/cuda/jsp/js/touch.js.jsp" %>
    
</body>
</html>