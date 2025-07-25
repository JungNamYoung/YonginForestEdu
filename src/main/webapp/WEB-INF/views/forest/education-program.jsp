<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/cuda/jsp/js/Define.js.jsp" %>
<%@ include file="/cuda/jsp/js/App.js.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <title>용인산림교육센터</title>
    <link rel="stylesheet" href="<c:url value='/forest/css/swiper-bundle.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/forest/css/style.css'/>">
</head>
<body class="sub-body">

	<div class="container page">
		<header role="banner">	<h1>교육프로그램</h1>	</header>

		<main id="mainContent" tabindex="-1">
			<section class="main__content">
				<h2 class="sr-only">용인산림교육센터 교육프로그램 상세 정보</h2>
				<article>
					<nav class="main__navigation" aria-label="교육프로그램 안내 탭 메뉴">
						<ul role="tablist">
							<li role="presentation">
								<button class="active" data-area="forestRoad" id="tab1" role="tab" aria-controls="panel1" aria-selected="true">숲길등산</button>
							</li>
							<li role="presentation">
								<button id="tab2" data-area="forestCommentary" role="tab" aria-controls="panel2" aria-selected="false">숲해설</button>
							</li>
							<li role="presentation">
								<button id="tab3" data-area="forestHealing" role="tab" aria-controls="panel3" aria-selected="false">산림치유</button>
							</li>
							<li role="presentation">
								<button id="tab4" data-area="wood" role="tab" aria-controls="panel4" aria-selected="false">목재문화체험</button>
							</li>
							<li role="presentation">
								<button id="tab5" data-area="youForest" role="tab" aria-controls="panel5" aria-selected="false">행복한 숲, 너의 숲</button>
							</li>
							<li role="presentation">
								<button id="tab6" data-area="infant" role="tab" aria-controls="panel6" aria-selected="false">유아숲체험</button>
							</li>
						</ul>
					</nav>

					<div class="main__contents">
						<div id="panel1" class="main__contents--eduProgramArea main__contents--forestRoad active" role="tabpanel" tabindex="0" aria-labelledby="tab1">
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle forestRoad-title">
									<p>숲길등산</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/forestRoadQR.png'/>" alt="숲길등산 프로그램 QR 코드" class="qrcodeArea forestRoad-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">자연을 걷다, 용인을 느끼다</p>
                                <p class="main__contents--eduProgramContentsExplanation">숲길을 따라 걸으며 용인의 풍부한 산림생태 자원과 지형·경관적 가치를 체험하고, 역사와 문화적 의미까지 함께 배울 수 있는 체험형 프로그램입니다. 다양한 활동을 통해 자연의 소중함을 느끼고, 타인의 생각을 존중하며 문제 해결 능력을 기를 수 있습니다.</p>
							<div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_01_01.png'/>" alt="숲길등산 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_01_02.png'/>" alt="숲길등산 이미지 02" />
                                    <img src="<c:url value='/forest/assets/images/program_01_03.png'/>" alt="숲길등산 이미지 03" />
                                </div>

								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo">
                                        <p><span>담당부서</span> : 산림과</p>
									</div>
									<div class="main__contents--eduProgramLine"></div>
									<div class="main__contents--eduProgramInfo">
                                        <p><span>문의</span> : 031-6193-3749/3356</p>
									</div>
								</div>
							</div>
						</div>
						<div id="panel2" class="main__contents--eduProgramArea main__contents--forestCommentary" role="tabpanel" tabindex="0" aria-labelledby="tab2" hidden>
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle forestCommentary-title">
									<p>숲해설</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/forestCommentaryQR.png'/>" alt="숲해설 프로그램 QR 코드" class="qrcodeArea forestCommentary-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">숲이 들려주는 이야기에 귀 기울여요</p>
                                <p class="main__contents--eduProgramContentsExplanation">숲에 존재하는 다양한 생물과 무생물, 문화적 요소에 대해 재미있는 해설과 체험을 통해 알아보는 참여형 프로그램입니다. 자연과 교감하며 생명의 가치와 자연 보호의 중요성을 배우는 의미 있는 시간이 됩니다.</p>

							                               <div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_02_01.png'/>" alt="숲해설 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_02_02.png'/>" alt="숲해설 이미지 02" />
                                    <img src="<c:url value='/forest/assets/images/program_02_03.png'/>" alt="숲해설 이미지 03" />
                                </div>

								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo">
                                        <p><span>담당부서</span> : 산림과</p>
									</div>
									<div class="main__contents--eduProgramLine"></div>
									<div class="main__contents--eduProgramInfo">
                                        <p><span>문의</span> : 031-6193-3748/3357/3358</p>
									</div>
								</div>
							</div>
						</div>
						<div id="panel3" class="main__contents--eduProgramArea main__contents--forestHealing" role="tabpanel" tabindex="0" aria-labelledby="tab3" hidden>
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle forestHealing-title">
									<p>산림치유</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/forestHealingQR.png'/>" alt="산림치유 프로그램 QR 코드" class="qrcodeArea forestHealing-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">숲에서 쉬고, 숲으로 치유받다</p>
                                <p class="main__contents--eduProgramContentsExplanation">숲이 가진 소리, 향기, 풍경 등 다양한 자연 요소를 활용해 신체적·정신적 면역력을 높이고, 건강한 삶을 돕는 웰빙형 프로그램입니다. 치료가 아닌 예방 중심의 건강 활동으로, 스트레스 해소와 심리적 안정을 돕습니다.</p>

							                                <div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_03_01.png'/>" alt="산림치유 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_03_02.png'/>" alt="산림치유 이미지 02" />
                                    <img src="<c:url value='/forest/assets/images/program_03_03.png'/>" alt="산림치유 이미지 03" />
                                </div>

								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo">
                                        <p><span>담당부서</span> : 산림과</p>
									</div>
									<div class="main__contents--eduProgramLine"></div>
									<div class="main__contents--eduProgramInfo">
                                        <p><span>문의</span> : 031-6193-3747/3786</p>
									</div>
								</div>
							</div>
						</div>
						<div id="panel4" class="main__contents--eduProgramArea main__contents--wood" role="tabpanel" tabindex="0" aria-labelledby="tab4" hidden>
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle wood-title">
									<p>목재문화체험</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/woodQR.png'/>" alt="목재문화체험 프로그램 QR 코드" class="qrcodeArea wood-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">손으로 느끼는 나무의 따뜻함</p>
                                <p class="main__contents--eduProgramContentsExplanation">자연 속 자원인 목재를 활용해 직접 만들고 꾸미는 창의적 목공체험 프로그램으로, 손으로 배우는 즐거움과 성취감을 느낄 수 있습니다. 아이부터 어른까지 누구나 참여할 수 있어 가족 단위 체험에도 적합합니다.</p>

                                <div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_04_01.png'/>" alt="목재문화체험 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_04_02.png'/>" alt="목재문화체험 이미지 02" />
                                    <img src="<c:url value='/forest/assets/images/program_04_03.png'/>" alt="목재문화체험 이미지 03" />
								</div>
								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo wood-Info">
                                        <p><span>문의</span> : 031-6193-3747/3786</p>
									</div>
								</div>
							</div>
						</div>
						<div id="panel5" class="main__contents--eduProgramArea main__contents--youForest" role="tabpanel" tabindex="0" aria-labelledby="tab5" hidden>
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle youForest-title">
									<p>행복한 숲, 너의 숲</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/youForestQR.png'/>" alt="행복한 숲, 너의 숲 프로그램 QR 코드" class="qrcodeArea youForest-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">자연 속 배움, 함께하는 즐거움</p>
                                <p class="main__contents--eduProgramContentsExplanation">유치원, 학교, 법인 등 다양한 단체를 대상으로 운영되는 용인산림교육센터의 대표 산림교육 프로그램입니다. 천연염색, 생태놀이, 숲 멍때리기, 목공체험 등을 통해 자연과 교감하고 창의력과 협동심을 키울 수 있습니다.</p>

                                <div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_05_01.png'/>" alt="행복한 숲 너의 숲 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_05_02.png'/>" alt="행복한 숲 너의 숲 이미지 02" />
                                </div>
								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo">
                                        <p><span>담당부서</span> : 산림과</p>
									</div>
									<div class="main__contents--eduProgramLine"></div>
									<div class="main__contents--eduProgramInfo">
                                        <p><span>문의</span> : 031-6193-3353</p>
									</div>
								</div>
							</div>
						</div>
						<div id="panel6" class="main__contents--eduProgramArea main__contents--infant" role="tabpanel" tabindex="0" aria-labelledby="tab6" hidden>
							<div class="main__contents--eduProgramTitleArea">
								<div class="main__contents--eduProgramPhotoTitle infant-title">
									<p>유아숲체험</p>
								</div>
								<div class="main__contents--eduProgramQRcode">
									<img src="<c:url value='/forest/assets/images/infantQR.png'/>" alt="유아숲체험 프로그램 QR 코드" class="qrcodeArea infant-QRcode">
								</div>
							</div>
							<div class="main__contents--eduProgramContents">
                                <p class="main__contents--eduProgramContentsTitle">숲이 교실이 되는 시간</p>
                                <p class="main__contents--eduProgramContentsExplanation">유아가 자연 속에서 뛰놀며 오감을 자극하고, 놀이를 통해 배움을 경험할 수 있도록 조성된 열린 체험 공간입니다. 형식보다 경험과 감성을 중시하며, 유아의 창의력·모험심·자연친화력을 자연스럽게 길러줍니다.</p>

                               <div class="main__contents--imgList">
                                    <img src="<c:url value='/forest/assets/images/program_06_01.png'/>" alt="유아숲체험 이미지 01" />
                                    <img src="<c:url value='/forest/assets/images/program_06_02.png'/>" alt="유아숲체험 이미지 02" />
                                    <img src="<c:url value='/forest/assets/images/program_06_03.png'/>" alt="유아숲체험 이미지 03" />
                                </div>
								<div class="main__contents--eduProgramInfoArea">
									<div class="main__contents--eduProgramInfo">
                                        <p><span>담당부서</span> : 산림과</p>
									</div>
									<div class="main__contents--eduProgramLine"></div>
									<div class="main__contents--eduProgramInfo">
                                        <p><span>문의</span> : 031-6193-3353</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</article>
			</section>
		</main>

		<aside class="main__controls" role="complementary" aria-label="보조 기능 컨트롤">
			<div class="main__controls--control main__controls--voice">
				<p>음성 안내</p>
				<button class="main__controls--pauseBtn voice-pauseBtn" aria-label="음성 안내 일시정지">
					<svg viewBox="0 0 24 28" fill="none" xmlns="http://www.w3.org/2000/svg" class="pauseBtn-icon" aria-hidden="true" focusable="false">
                        <path d="M20 28C18.9 28 17.9583 27.6083 17.175 26.825C16.3917 26.0417 16 25.1 16 24V4C16 2.9 16.3917 1.95833 17.175 1.175C17.9583 0.391667 18.9 0 20 0C21.1 0 22.0417 0.391667 22.825 1.175C23.6083 1.95833 24 2.9 24 4V24C24 25.1 23.6083 26.0417 22.825 26.825C22.0417 27.6083 21.1 28 20 28ZM4 28C2.9 28 1.95833 27.6083 1.175 26.825C0.391667 26.0417 0 25.1 0 24V4C0 2.9 0.391667 1.95833 1.175 1.175C1.95833 0.391667 2.9 0 4 0C5.1 0 6.04167 0.391667 6.825 1.175C7.60833 1.95833 8 2.9 8 4V24C8 25.1 7.60833 26.0417 6.825 26.825C6.04167 27.6083 5.1 28 4 28Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--playBtn voice-playBtn" aria-label="음성 안내 재생">
					<svg viewBox="0 0 21 26" fill="none" xmlns="http://www.w3.org/2000/svg" class="playBtn-icon" aria-hidden="true" focusable="false">
                        <path d="M0 23.3499V2.6499C0 2.08324 0.2 1.60824 0.6 1.2249C1 0.841569 1.46667 0.649902 2 0.649902C2.16667 0.649902 2.34167 0.674902 2.525 0.724902C2.70833 0.774902 2.88333 0.849902 3.05 0.949902L19.35 11.2999C19.65 11.4999 19.875 11.7499 20.025 12.0499C20.175 12.3499 20.25 12.6666 20.25 12.9999C20.25 13.3332 20.175 13.6499 20.025 13.9499C19.875 14.2499 19.65 14.4999 19.35 14.6999L3.05 25.0499C2.88333 25.1499 2.70833 25.2249 2.525 25.2749C2.34167 25.3249 2.16667 25.3499 2 25.3499C1.46667 25.3499 1 25.1582 0.6 24.7749C0.2 24.3916 0 23.9166 0 23.3499Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--reproductionBtn voice-replayBtn" aria-label="음성 안내 다시 재생">
					<svg viewBox="0 0 36 42" fill="none" xmlns="http://www.w3.org/2000/svg" class="reproductionBtn-icon" aria-hidden="true" focusable="false">
                        <path d="M18 41.8593C15.5 41.8593 13.1583 41.3843 10.975 40.4343C8.79167 39.4843 6.89167 38.201 5.275 36.5843C3.65833 34.9676 2.375 33.0676 1.425 30.8843C0.475 28.7009 0 26.3593 0 23.8593C0 23.2926 0.191667 22.8176 0.575 22.4343C0.958333 22.0509 1.43333 21.8593 2 21.8593C2.56667 21.8593 3.04167 22.0509 3.425 22.4343C3.80833 22.8176 4 23.2926 4 23.8593C4 27.7593 5.35833 31.0676 8.075 33.7843C10.7917 36.5009 14.1 37.8593 18 37.8593C21.9 37.8593 25.2083 36.5009 27.925 33.7843C30.6417 31.0676 32 27.7593 32 23.8593C32 19.9593 30.6417 16.6509 27.925 13.9343C25.2083 11.2176 21.9 9.85928 18 9.85928H17.7L19.4 11.5593C19.8 11.9593 19.9917 12.4259 19.975 12.9593C19.9583 13.4926 19.7667 13.9593 19.4 14.3593C19 14.7593 18.525 14.9676 17.975 14.9843C17.425 15.0009 16.95 14.8093 16.55 14.4093L11.4 9.25928C11 8.85928 10.8 8.39261 10.8 7.85928C10.8 7.32594 11 6.85928 11.4 6.45928L16.55 1.30928C16.95 0.909276 17.425 0.71761 17.975 0.734276C18.525 0.750943 19 0.959276 19.4 1.35928C19.7667 1.75928 19.9583 2.22594 19.975 2.75928C19.9917 3.29261 19.8 3.75928 19.4 4.15928L17.7 5.85928H18C20.5 5.85928 22.8417 6.33428 25.025 7.28428C27.2083 8.23428 29.1083 9.51761 30.725 11.1343C32.3417 12.7509 33.625 14.6509 34.575 16.8343C35.525 19.0176 36 21.3593 36 23.8593C36 26.3593 35.525 28.7009 34.575 30.8843C33.625 33.0676 32.3417 34.9676 30.725 36.5843C29.1083 38.201 27.2083 39.4843 25.025 40.4343C22.8417 41.3843 20.5 41.8593 18 41.8593Z" fill="#3C3F49"/>
                    </svg>
				</button>
			</div>
			<button class="main__controls--homeBtn" aria-label="메인 페이지로 이동">
				<svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                    <mask id="mask0_604_1013" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="48" height="48">
                    <rect width="48" height="48" fill="#D9D9D9" />
                    </mask>
                    <g mask="url(#mask0_604_1013)">
                    <path d="M12 37.8141H18.6925V27.7371C18.6925 27.2251 18.8657 26.7957 19.212 26.4491C19.5587 26.1027 19.988 25.9296 20.5 25.9296H27.5C28.012 25.9296 28.4413 26.1027 28.788 26.4491C29.1343 26.7957 29.3075 27.2251 29.3075 27.7371V37.8141H36V20.1216C36 20.0192 35.9775 19.9264 35.9325 19.8431C35.8878 19.7597 35.827 19.6859 35.75 19.6216L24.3655 11.0641C24.2628 10.9744 24.141 10.9296 24 10.9296C23.859 10.9296 23.7372 10.9744 23.6345 11.0641L12.25 19.6216C12.173 19.6859 12.1122 19.7597 12.0675 19.8431C12.0225 19.9264 12 20.0192 12 20.1216V37.8141ZM9 37.8141V20.1216C9 19.5492 9.128 19.0071 9.384 18.4951C9.64033 17.9827 9.99433 17.5609 10.446 17.2296L21.831 8.65257C22.4627 8.17057 23.1847 7.92957 23.997 7.92957C24.8093 7.92957 25.5333 8.17057 26.169 8.65257L37.554 17.2296C38.0057 17.5609 38.3597 17.9827 38.616 18.4951C38.872 19.0071 39 19.5492 39 20.1216V37.8141C39 38.6321 38.7045 39.3366 38.1135 39.9276C37.5225 40.5186 36.818 40.8141 36 40.8141H28.1155C27.6032 40.8141 27.1738 40.6407 26.8275 40.2941C26.4808 39.9477 26.3075 39.5184 26.3075 39.0061V28.9296H21.6925V39.0061C21.6925 39.5184 21.5192 39.9477 21.1725 40.2941C20.8262 40.6407 20.3968 40.8141 19.8845 40.8141H12C11.182 40.8141 10.4775 40.5186 9.8865 39.9276C9.2955 39.3366 9 38.6321 9 37.8141Z" fill="white"/>
                    </g>
                </svg>
			</button>
			<button id="lowScreenBtn" class="main__controls--btn main__controls--lowScreenBtn" aria-label="화면 높이 조절 버튼">
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="lowScreenBtn-icon" aria-hidden="true" focusable="false">
                    <path d="M5 45.5C3.625 45.5 2.44792 45.0104 1.46875 44.0312C0.489583 43.0521 0 41.875 0 40.5V30.5C0 29.125 0.489583 27.9479 1.46875 26.9688C2.44792 25.9896 3.625 25.5 5 25.5H40C41.375 25.5 42.5521 25.9896 43.5312 26.9688C44.5104 27.9479 45 29.125 45 30.5V40.5C45 41.875 44.5104 43.0521 43.5312 44.0312C42.5521 45.0104 41.375 45.5 40 45.5H5ZM5 20.5C3.625 20.5 2.44792 20.0104 1.46875 19.0312C0.489583 18.0521 0 16.875 0 15.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5H40C41.375 0.5 42.5521 0.989583 43.5312 1.96875C44.5104 2.94792 45 4.125 45 5.5V15.5C45 16.875 44.5104 18.0521 43.5312 19.0312C42.5521 20.0104 41.375 20.5 40 20.5H5ZM40 5.5H5V15.5H40V5.5Z" fill="#3C3F49" />
                </svg>
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="highScreenBtn-icon" aria-hidden="true" focusable="false">
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
	<audio id="accessibilityAudio" src="<c:url value='/forest/assets/mp3/forestRoad.mp3'/>" aria-label="사이트 음성 안내"></audio> 
    <script src="<c:url value='/forest/js/swiper-bundle.min.js'/>"></script>
    <script src="<c:url value='/forest/js/footer-swiper.js'/>"></script>
    <script src="<c:url value='/forest/js/script.js'/>"></script>
    <script src="<c:url value='/forest/js/aside-accessibility.js'/>"></script>
    <script src="<c:url value='/forest/js/sub-page.js'/>"></script>

	<script>
	const contextPath = App.rootPath;

        const navBtns = document.querySelectorAll(".main__navigation > ul li button");
        const accessibilityAudio = document.getElementById("accessibilityAudio");

        navBtns.forEach(function (btn) {
            btn.addEventListener("click", function () {
                const tabSound = this.dataset.area;

                accessibilityAudio.src = `\${contextPath}/forest/assets/mp3/\${tabSound}.mp3`;
                
                voiceMode();

                function voiceMode() {
                    if (localStorage.getItem("voiceMode") === "voiceOffMode") {
                        accessibilityAudio.pause();
                        accessibilityAudio.currentTime = 0;

                    } else {
                        accessibilityAudio.play();
                    }
                }
            });
        });
        	
	</script>
    
    <%@ include file="/cuda/jsp/js/voice.js.jsp" %>
    <%@ include file="/cuda/jsp/js/touch.js.jsp" %>
</body>
</html>