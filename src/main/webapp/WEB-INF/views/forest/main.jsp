<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/cuda/jsp/js/Define.js.jsp"%>
<%@ include file="/cuda/jsp/js/App.js.jsp"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>용인산림교육센터</title>
<link rel="stylesheet" href="<c:url value="/forest/css/swiper-bundle.min.css"/>">
<link rel="stylesheet" href="<c:url value="/forest/css/style.css"/>">
</head>
<body class="main-body">
	<div class="container page">
		<header role="banner" aria-label="사이트 헤더">
			<a href="<c:url value="/"/>" aria-label="메인 페이지로 이동"> <img class="header__logo" src="<c:url value="/forest/assets/images/용인시_심볼 1.png"/>" alt="용인시 로고" />
				<h1 class="header__title">용인산림교육센터</h1>
			</a>
			<p id="current-time" class="current-time" aria-live="polite"></p>
		</header>
		<main id="mainContent" tabindex="-1">
			<section class="main__content">
				<h1 class="sr-only">용인산림교육센터 소개</h1>
				<article>
					<p class="main__title--content">배움과 쉼, 자연이 함께하는 산림교육센터</p>
					<h2 class="main__title">용인산림교육센터 방문을 환영합니다.</h2>

					<div class="main__menu">
						<button class="main__menu--btn" aria-label="센터소개 페이지로 이동">
							<div class="main__menu--iconArea">
								<svg viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                <mask id="mask0_564_184" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="32" height="33">
                                <rect y="0.5" width="32" height="32" fill="#D9D9D9" />
                                </mask>
                                <g mask="url(#mask0_564_184)">
                                <path
										d="M15.9743 25.836C15.7726 25.836 15.5721 25.809 15.373 25.755C15.1739 25.7012 14.9914 25.6273 14.8257 25.5333C13.8803 24.9691 12.8927 24.5448 11.8627 24.2603C10.8329 23.9757 9.76756 23.8333 8.66667 23.8333C7.85311 23.8333 7.054 23.9235 6.26933 24.1037C5.48467 24.2841 4.72822 24.5496 4 24.9C3.52489 25.1187 3.07278 25.0861 2.64367 24.8023C2.21456 24.5188 2 24.1171 2 23.5973V9.14634C2 8.85901 2.07611 8.59356 2.22833 8.35001C2.38033 8.10645 2.59144 7.92912 2.86167 7.81801C3.76411 7.37867 4.70467 7.04923 5.68333 6.82967C6.662 6.6099 7.65644 6.50001 8.66667 6.50001C9.964 6.50001 11.2272 6.68378 12.4563 7.05134C13.6854 7.41889 14.8667 7.93601 16 8.60267V23.9153C17.1249 23.2042 18.3117 22.6795 19.5603 22.341C20.809 22.0026 22.0667 21.8333 23.3333 21.8333C24.0991 21.8333 24.8226 21.8872 25.5037 21.995C26.185 22.1026 26.8889 22.2726 27.6153 22.505C27.7093 22.5308 27.797 22.533 27.8783 22.5117C27.9594 22.4901 28 22.4196 28 22.3V7.32567C28.2307 7.39412 28.4559 7.47023 28.6757 7.55401C28.8952 7.63778 29.1093 7.7429 29.318 7.86934C29.5453 7.98045 29.7158 8.14278 29.8293 8.35634C29.9431 8.57012 30 8.79923 30 9.04367V23.5717C30 24.0914 29.779 24.491 29.337 24.7703C28.8952 25.0499 28.4239 25.0846 27.923 24.8743C27.2034 24.5323 26.4578 24.2733 25.686 24.0973C24.9142 23.9213 24.13 23.8333 23.3333 23.8333C22.224 23.8333 21.1458 23.9757 20.0987 24.2603C19.0518 24.5448 18.0557 24.9691 17.1103 25.5333C16.9446 25.6273 16.7642 25.7012 16.5693 25.755C16.3744 25.809 16.1761 25.836 15.9743 25.836ZM19.6897 19.577C19.4846 19.7599 19.2628 19.7967 19.0243 19.6873C18.7859 19.5778 18.6667 19.3871 18.6667 19.1153V8.75401C18.6667 8.67356 18.6833 8.59445 18.7167 8.51667C18.75 8.43889 18.7958 8.37101 18.854 8.31301L24.2897 2.87701C24.4948 2.67189 24.72 2.62278 24.9653 2.72967C25.2107 2.83634 25.3333 3.03245 25.3333 3.318V14.2257C25.3333 14.3281 25.3132 14.4161 25.273 14.4897C25.2328 14.5632 25.1837 14.6291 25.1257 14.6873L19.6897 19.577ZM14 22.9487V9.81301C13.1642 9.39923 12.2984 9.07689 11.4027 8.84601C10.5069 8.61534 9.59489 8.50001 8.66667 8.50001C7.84444 8.50001 7.06367 8.57567 6.32433 8.72701C5.585 8.87834 4.89144 9.08812 4.24367 9.35634C4.17522 9.38212 4.11756 9.41845 4.07067 9.46534C4.02356 9.51245 4 9.57012 4 9.63834V22.346C4 22.4658 4.04056 22.5363 4.12167 22.5577C4.203 22.579 4.29067 22.5726 4.38467 22.5383C5.04267 22.3008 5.72089 22.1239 6.41933 22.0077C7.11756 21.8915 7.86667 21.8333 8.66667 21.8333C9.66333 21.8333 10.6154 21.9363 11.523 22.1423C12.4308 22.3483 13.2564 22.6171 14 22.9487Z"
										fill="white" />
                                </g>
                                </svg>
							</div>
							<p class="main__menu--menuTitle">센터소개</p>
						</button>
						<button class="main__menu--btn" aria-label="교육프로그램 페이지로 이동">
							<div class="main__menu--iconArea">
								<svg viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                    <mask id="mask0_564_32" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="32" height="33">
                                    <rect y="0.5" width="32" height="32" fill="#D9D9D9" />
                                    </mask>
                                    <g mask="url(#mask0_564_32)">
                                    <path
										d="M10.8206 26.346C10.2706 26.346 9.79967 26.1502 9.4079 25.7587C9.01634 25.3669 8.82056 24.896 8.82056 24.346V22.218C8.82056 21.8764 8.93601 21.5902 9.1669 21.3593C9.39801 21.1284 9.68423 21.013 10.0256 21.013H12.6666V17.346C11.9657 17.3958 11.249 17.3253 10.5166 17.1347C9.78412 16.944 9.14779 16.6068 8.60756 16.123C8.48223 16.0019 8.3829 15.8657 8.30956 15.7143C8.23645 15.563 8.1999 15.4027 8.1999 15.2333V14.0897H6.98956C6.83267 14.0897 6.68067 14.0607 6.53356 14.0027C6.38645 13.9444 6.2509 13.8534 6.1269 13.7297L3.34056 10.9433C3.09301 10.6956 2.97556 10.4068 2.98823 10.077C3.00112 9.747 3.13667 9.46578 3.3949 9.23333C4.03934 8.68289 4.8419 8.27689 5.80256 8.01533C6.76323 7.75378 7.67345 7.623 8.53323 7.623C9.26056 7.623 9.96756 7.706 10.6542 7.872C11.3411 8.03777 12.0119 8.31122 12.6666 8.69233V8.44867C12.6666 7.91978 12.8506 7.47133 13.2186 7.10333C13.5866 6.73533 14.035 6.55133 14.5639 6.55133H24.9289C25.5898 6.55133 26.1558 6.78733 26.6269 7.25933C27.0978 7.73133 27.3332 8.29877 27.3332 8.96166V23.0127C27.3332 23.9444 27.0106 24.7329 26.3652 25.378C25.7199 26.0233 24.9315 26.346 23.9999 26.346H10.8206ZM14.6666 21.013H21.4872C21.8137 21.013 22.0918 21.1279 22.3216 21.3577C22.5516 21.5877 22.6666 21.8659 22.6666 22.1923V23.0127C22.6666 23.3904 22.7943 23.7071 23.0499 23.9627C23.3055 24.2182 23.6221 24.346 23.9999 24.346C24.3777 24.346 24.6943 24.2182 24.9499 23.9627C25.2055 23.7071 25.3332 23.3904 25.3332 23.0127V8.96166C25.3332 8.84189 25.2948 8.74355 25.2179 8.66666C25.141 8.58978 25.0427 8.55133 24.9229 8.55133H15.0769C14.9571 8.55133 14.8588 8.58978 14.7819 8.66666C14.705 8.74355 14.6666 8.84189 14.6666 8.96166V10.018L22.0562 17.4077C22.2089 17.5572 22.3022 17.7276 22.3362 17.9187C22.37 18.1096 22.3451 18.2977 22.2616 18.483C22.1778 18.6686 22.0605 18.816 21.9096 18.9253C21.7589 19.0349 21.5662 19.0897 21.3316 19.0897C21.1976 19.0897 21.0681 19.0608 20.9432 19.003C20.8181 18.9452 20.7139 18.875 20.6306 18.7923L16.9999 15.1617L16.4896 15.6717C16.2042 15.9572 15.9128 16.2051 15.6152 16.4153C15.3179 16.6256 15.0017 16.7973 14.6666 16.9307V21.013ZM7.33823 12.0897H8.9949C9.33623 12.0897 9.62245 12.2052 9.85356 12.4363C10.0845 12.6672 10.1999 12.9534 10.1999 13.295V14.8283C10.5606 15.0574 10.911 15.2138 11.2512 15.2973C11.5915 15.3811 11.9317 15.423 12.2719 15.423C12.8308 15.423 13.3371 15.3324 13.7909 15.1513C14.2447 14.9702 14.6801 14.6711 15.0972 14.254L15.5949 13.7563L13.4972 11.659C12.8186 10.9803 12.0579 10.4713 11.2152 10.132C10.3726 9.79267 9.47856 9.623 8.53323 9.623C7.98612 9.623 7.45923 9.682 6.95256 9.8C6.44567 9.918 5.97079 10.0779 5.5279 10.2797L7.33823 12.0897ZM20.6666 23.0127H10.8206V24.346H20.9692C20.8599 24.1547 20.7821 23.9464 20.7359 23.7213C20.6897 23.4964 20.6666 23.2602 20.6666 23.0127Z"
										fill="white" />
                                    </g>
                                </svg>
							</div>
							<p class="main__menu--menuTitle">교육프로그램</p>
						</button>
						<button class="main__menu--btn" aria-label="시설안내 페이지로 이동">
							<div class="main__menu--iconArea">
								<svg viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                <mask id="mask0_564_759" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="32" height="33">
                                <rect y="0.5" width="32" height="32" fill="#D9D9D9" />
                                </mask>
                                <g mask="url(#mask0_564_759)">
                                <path
										d="M3.1543 26.7307V6.88467C3.1543 6.682 3.19652 6.49967 3.28096 6.33767C3.36563 6.17567 3.4883 6.03234 3.64896 5.90767L8.7773 2.18967C8.99374 2.03767 9.22985 1.96167 9.48563 1.96167C9.74163 1.96167 9.97896 2.03767 10.1976 2.18967L15.326 5.90767C15.4866 6.03234 15.6093 6.17567 15.694 6.33767C15.7784 6.49967 15.8206 6.682 15.8206 6.88467V9.936H27.6413C27.9829 9.936 28.2691 10.0514 28.5 10.2823C28.7309 10.5134 28.8463 10.7997 28.8463 11.141V26.7307C28.8463 27.0722 28.7309 27.3584 28.5 27.5893C28.2691 27.8204 27.9829 27.936 27.6413 27.936H4.3593C4.01774 27.936 3.73152 27.8204 3.50063 27.5893C3.26974 27.3584 3.1543 27.0722 3.1543 26.7307ZM5.15396 25.936H8.48763V22.6027H5.15396V25.936ZM5.15396 20.6027H8.48763V17.2693H5.15396V20.6027ZM5.15396 15.2693H8.48763V11.936H5.15396V15.2693ZM5.15396 9.936H8.48763V6.60267H5.15396V9.936ZM10.4873 9.936H13.821V6.60267H10.4873V9.936ZM10.4873 25.936H26.8466V11.936H10.4873V25.936ZM19.744 15.2693H22.667C22.9503 15.2693 23.1877 15.3652 23.3793 15.557C23.5711 15.7486 23.667 15.9861 23.667 16.2697C23.667 16.5532 23.5711 16.7907 23.3793 16.982C23.1877 17.1736 22.9503 17.2693 22.667 17.2693H19.744C19.4606 17.2693 19.2231 17.1734 19.0313 16.9817C18.8397 16.7899 18.744 16.5522 18.744 16.2687C18.744 15.9853 18.8397 15.7479 19.0313 15.5563C19.2231 15.365 19.4606 15.2693 19.744 15.2693ZM19.744 20.6027H22.667C22.9503 20.6027 23.1877 20.6986 23.3793 20.8903C23.5711 21.0819 23.667 21.3194 23.667 21.603C23.667 21.8866 23.5711 22.124 23.3793 22.3153C23.1877 22.5069 22.9503 22.6027 22.667 22.6027H19.744C19.4606 22.6027 19.2231 22.5068 19.0313 22.315C18.8397 22.1232 18.744 21.8856 18.744 21.602C18.744 21.3187 18.8397 21.0812 19.0313 20.8897C19.2231 20.6983 19.4606 20.6027 19.744 20.6027ZM15.8206 16.2697C15.8206 16.5532 15.7249 16.7907 15.5333 16.982C15.3415 17.1736 15.1039 17.2693 14.8203 17.2693C14.537 17.2693 14.2995 17.1734 14.108 16.9817C13.9166 16.7899 13.821 16.5522 13.821 16.2687C13.821 15.9853 13.9169 15.7479 14.1086 15.5563C14.3002 15.365 14.5377 15.2693 14.8213 15.2693C15.1046 15.2693 15.3421 15.3652 15.5336 15.557C15.725 15.7486 15.8206 15.9861 15.8206 16.2697ZM14.8203 22.6027C14.537 22.6027 14.2995 22.5068 14.108 22.315C13.9166 22.1232 13.821 21.8856 13.821 21.602C13.821 21.3187 13.9169 21.0812 14.1086 20.8897C14.3002 20.6983 14.5377 20.6027 14.8213 20.6027C15.1046 20.6027 15.3421 20.6986 15.5336 20.8903C15.725 21.0819 15.8206 21.3194 15.8206 21.603C15.8206 21.8866 15.7249 22.124 15.5333 22.3153C15.3415 22.5069 15.1039 22.6027 14.8203 22.6027Z"
										fill="white" />
                                </g>
                                </svg>
							</div>
							<p class="main__menu--menuTitle">시설안내</p>
						</button>
						<button class="main__menu--btn" aria-label="층별안내 페이지로 이동">
							<div class="main__menu--iconArea">
								<svg viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                    <mask id="mask0_564_209" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="32" height="33">
                                    <rect y="0.5" width="32" height="32" fill="#D9D9D9" />
                                    </mask>
                                    <g mask="url(#mask0_564_209)">
                                    <path
										d="M16 18.441C15.8033 18.441 15.6123 18.4153 15.427 18.364C15.2414 18.3127 15.0572 18.24 14.8743 18.146L3.99229 12.359C3.7734 12.2341 3.61618 12.0802 3.52062 11.8973C3.42484 11.7145 3.37695 11.5137 3.37695 11.295C3.37695 11.0761 3.42484 10.8752 3.52062 10.6923C3.61618 10.5095 3.7734 10.3556 3.99229 10.2307L14.8743 4.44368C15.0572 4.34968 15.2414 4.27701 15.427 4.22568C15.6123 4.17435 15.8033 4.14868 16 4.14868C16.1966 4.14868 16.3876 4.17435 16.573 4.22568C16.7585 4.27701 16.9427 4.34968 17.1256 4.44368L28.0203 10.2307C28.2392 10.3556 28.3965 10.5095 28.4923 10.6923C28.5881 10.8752 28.636 11.0761 28.636 11.295C28.636 11.5137 28.5881 11.7145 28.4923 11.8973C28.3965 12.0802 28.2392 12.2341 28.0203 12.359L17.1256 18.146C16.9427 18.24 16.7585 18.3127 16.573 18.364C16.3876 18.4153 16.1966 18.441 16 18.441ZM16 16.4797L25.8306 11.295L16 6.11035L6.18195 11.295L16 16.4797ZM16 21.6847L26.6716 16.036C26.7247 16.0051 26.906 15.9752 27.2153 15.9463C27.482 15.9632 27.7003 16.0632 27.8703 16.2463C28.0405 16.4292 28.1256 16.654 28.1256 16.9207C28.1256 17.1051 28.085 17.2717 28.0036 17.4203C27.9225 17.5692 27.7896 17.6932 27.605 17.7923L17.1256 23.3513C16.9427 23.4453 16.7585 23.518 16.573 23.5693C16.3876 23.6205 16.1966 23.646 16 23.646C15.8033 23.646 15.6123 23.6205 15.427 23.5693C15.2414 23.518 15.0572 23.4453 14.8743 23.3513L4.40762 17.7923C4.22295 17.6932 4.08795 17.5692 4.00262 17.4203C3.91706 17.2717 3.87429 17.1051 3.87429 16.9207C3.87429 16.654 3.96151 16.4292 4.13595 16.2463C4.31018 16.0632 4.53062 15.9632 4.79729 15.9463C4.89129 15.9292 4.98195 15.9288 5.06929 15.945C5.1564 15.9612 5.24695 15.9916 5.34095 16.036L16 21.6847ZM16 26.8897L26.6716 21.241C26.7247 21.2103 26.906 21.1805 27.2153 21.1513C27.482 21.1685 27.7003 21.2685 27.8703 21.4513C28.0405 21.6342 28.1256 21.859 28.1256 22.1257C28.1256 22.3103 28.085 22.477 28.0036 22.6257C27.9225 22.7743 27.7896 22.8982 27.605 22.9973L17.1256 28.5563C16.9427 28.6503 16.7585 28.723 16.573 28.7743C16.3876 28.8257 16.1966 28.8513 16 28.8513C15.8033 28.8513 15.6123 28.8257 15.427 28.7743C15.2414 28.723 15.0572 28.6503 14.8743 28.5563L4.40762 22.9973C4.22295 22.8982 4.08795 22.7743 4.00262 22.6257C3.91706 22.477 3.87429 22.3103 3.87429 22.1257C3.87429 21.859 3.96151 21.6342 4.13595 21.4513C4.31018 21.2685 4.53062 21.1685 4.79729 21.1513C4.89129 21.1342 4.98195 21.1338 5.06929 21.15C5.1564 21.1662 5.24695 21.1966 5.34095 21.241L16 26.8897Z"
										fill="white" />
                                    </g>
                                </svg>
							</div>
							<p class="main__menu--menuTitle">층별안내</p>
						</button>
					</div>
					<div class="main__menu--event">
						<div class="main__menu--eventArea">
							<div class="main__menu--eventTitle">
								<p>고객센터</p>
							</div>
							<div class="main__menu--eventContents">
								<p>031-6193-3352</p>
							</div>
						</div>
						<div class="main__menu--eventArea">
							<div class="main__menu--eventTitle">
								<p>상담시간</p>
							</div>
							<div class="main__menu--eventContents">
								<p>09:00~18:00</p>
							</div>
						</div>
					</div>
				</article>
				<div class="main__content--videoArea">
					<video id="sign-video" class="sign-video" aria-label="수어 안내 영상">
						<source src="<c:url value="/forest/assets/video/ym_main.mp4"/>" type="video/mp4">
						<p>
							현재 사용하시는 브라우저는 비디오 재생을 지원하지 않습니다. <a href="<c:url value='/forest/assets/video/ym_intro.mp4'/>">영상 다운로드</a>
						</p>
					</video>
				</div>
			</section>
		</main>
		<aside class="main__controls" role="complementary" aria-label="보조 기능 컨트롤">
			<div class="main__controls--control main__controls--voice">
				<p>수어/음성 안내</p>
				<button class="main__controls--pauseBtn voice-pauseBtn" aria-label="수어 영상 일시정지">
					<svg viewBox="0 0 24 28" fill="none" xmlns="http://www.w3.org/2000/svg" class="pauseBtn-icon" aria-hidden="true" focusable="false">
                        <path d="M20 28C18.9 28 17.9583 27.6083 17.175 26.825C16.3917 26.0417 16 25.1 16 24V4C16 2.9 16.3917 1.95833 17.175 1.175C17.9583 0.391667 18.9 0 20 0C21.1 0 22.0417 0.391667 22.825 1.175C23.6083 1.95833 24 2.9 24 4V24C24 25.1 23.6083 26.0417 22.825 26.825C22.0417 27.6083 21.1 28 20 28ZM4 28C2.9 28 1.95833 27.6083 1.175 26.825C0.391667 26.0417 0 25.1 0 24V4C0 2.9 0.391667 1.95833 1.175 1.175C1.95833 0.391667 2.9 0 4 0C5.1 0 6.04167 0.391667 6.825 1.175C7.60833 1.95833 8 2.9 8 4V24C8 25.1 7.60833 26.0417 6.825 26.825C6.04167 27.6083 5.1 28 4 28Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--playBtn voice-playBtn" aria-label="수어 영상 재생">
					<svg viewBox="0 0 21 26" fill="none" xmlns="http://www.w3.org/2000/svg" class="playBtn-icon" aria-hidden="true" focusable="false">
                        <path d="M0 23.3499V2.6499C0 2.08324 0.2 1.60824 0.6 1.2249C1 0.841569 1.46667 0.649902 2 0.649902C2.16667 0.649902 2.34167 0.674902 2.525 0.724902C2.70833 0.774902 2.88333 0.849902 3.05 0.949902L19.35 11.2999C19.65 11.4999 19.875 11.7499 20.025 12.0499C20.175 12.3499 20.25 12.6666 20.25 12.9999C20.25 13.3332 20.175 13.6499 20.025 13.9499C19.875 14.2499 19.65 14.4999 19.35 14.6999L3.05 25.0499C2.88333 25.1499 2.70833 25.2249 2.525 25.2749C2.34167 25.3249 2.16667 25.3499 2 25.3499C1.46667 25.3499 1 25.1582 0.6 24.7749C0.2 24.3916 0 23.9166 0 23.3499Z" fill="#3C3F49" />
                    </svg>
				</button>
				<button class="main__controls--reproductionBtn voice-replayBtn" aria-label="수어 영상 다시 재생">
					<svg viewBox="0 0 36 42" fill="none" xmlns="http://www.w3.org/2000/svg" class="reproductionBtn-icon" aria-hidden="true" focusable="false">
                        <path
							d="M18 41.8593C15.5 41.8593 13.1583 41.3843 10.975 40.4343C8.79167 39.4843 6.89167 38.201 5.275 36.5843C3.65833 34.9676 2.375 33.0676 1.425 30.8843C0.475 28.7009 0 26.3593 0 23.8593C0 23.2926 0.191667 22.8176 0.575 22.4343C0.958333 22.0509 1.43333 21.8593 2 21.8593C2.56667 21.8593 3.04167 22.0509 3.425 22.4343C3.80833 22.8176 4 23.2926 4 23.8593C4 27.7593 5.35833 31.0676 8.075 33.7843C10.7917 36.5009 14.1 37.8593 18 37.8593C21.9 37.8593 25.2083 36.5009 27.925 33.7843C30.6417 31.0676 32 27.7593 32 23.8593C32 19.9593 30.6417 16.6509 27.925 13.9343C25.2083 11.2176 21.9 9.85928 18 9.85928H17.7L19.4 11.5593C19.8 11.9593 19.9917 12.4259 19.975 12.9593C19.9583 13.4926 19.7667 13.9593 19.4 14.3593C19 14.7593 18.525 14.9676 17.975 14.9843C17.425 15.0009 16.95 14.8093 16.55 14.4093L11.4 9.25928C11 8.85928 10.8 8.39261 10.8 7.85928C10.8 7.32594 11 6.85928 11.4 6.45928L16.55 1.30928C16.95 0.909276 17.425 0.71761 17.975 0.734276C18.525 0.750943 19 0.959276 19.4 1.35928C19.7667 1.75928 19.9583 2.22594 19.975 2.75928C19.9917 3.29261 19.8 3.75928 19.4 4.15928L17.7 5.85928H18C20.5 5.85928 22.8417 6.33428 25.025 7.28428C27.2083 8.23428 29.1083 9.51761 30.725 11.1343C32.3417 12.7509 33.625 14.6509 34.575 16.8343C35.525 19.0176 36 21.3593 36 23.8593C36 26.3593 35.525 28.7009 34.575 30.8843C33.625 33.0676 32.3417 34.9676 30.725 36.5843C29.1083 38.201 27.2083 39.4843 25.025 40.4343C22.8417 41.3843 20.5 41.8593 18 41.8593Z"
							fill="#3C3F49" />
                    </svg>
				</button>
			</div>
			<button id="lowScreenBtn" class="main__controls--btn main__controls--lowScreenBtn" aria-label="화면 높이 조절 버튼">
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="lowScreenBtn-icon" aria-hidden="true" focusable="false">
                    <path d="M5 45.5C3.625 45.5 2.44792 45.0104 1.46875 44.0312C0.489583 43.0521 0 41.875 0 40.5V30.5C0 29.125 0.489583 27.9479 1.46875 26.9688C2.44792 25.9896 3.625 25.5 5 25.5H40C41.375 25.5 42.5521 25.9896 43.5312 26.9688C44.5104 27.9479 45 29.125 45 30.5V40.5C45 41.875 44.5104 43.0521 43.5312 44.0312C42.5521 45.0104 41.375 45.5 40 45.5H5ZM5 20.5C3.625 20.5 2.44792 20.0104 1.46875 19.0312C0.489583 18.0521 0 16.875 0 15.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5H40C41.375 0.5 42.5521 0.989583 43.5312 1.96875C44.5104 2.94792 45 4.125 45 5.5V15.5C45 16.875 44.5104 18.0521 43.5312 19.0312C42.5521 20.0104 41.375 20.5 40 20.5H5ZM40 5.5H5V15.5H40V5.5Z" fill="#3C3F49" />
                </svg>
				<svg viewBox="0 0 45 46" fill="none" xmlns="http://www.w3.org/2000/svg" class="highScreenBtn-icon" aria-hidden="true" focusable="false">
                    <path d="M5 20.5C3.625 20.5 2.44792 20.0104 1.46875 19.0312C0.489583 18.0521 0 16.875 0 15.5V5.5C0 4.125 0.489583 2.94792 1.46875 1.96875C2.44792 0.989583 3.625 0.5 5 0.5H40C41.375 0.5 42.5521 0.989583 43.5312 1.96875C44.5104 2.94792 45 4.125 45 5.5V15.5C45 16.875 44.5104 18.0521 43.5312 19.0312C42.5521 20.0104 41.375 20.5 40 20.5H5ZM5 45.5C3.625 45.5 2.44792 45.0104 1.46875 44.0312C0.489583 43.0521 0 41.875 0 40.5V30.5C0 29.125 0.489583 27.9479 1.46875 26.9688C2.44792 25.9896 3.625 25.5 5 25.5H40C41.375 25.5 42.5521 25.9896 43.5312 26.9688C44.5104 27.9479 45 29.125 45 30.5V40.5C45 41.875 44.5104 43.0521 43.5312 44.0312C42.5521 45.0104 41.375 45.5 40 45.5H5ZM5 40.5H40V30.5H5V40.5Z" fill="#3C3F49" />
                </svg>
				<span class="lowScreenBtn-label">낮은 화면</span>
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

	<script>
        const container = document.querySelector(".container");

        // 수어 영상 및 제어 버튼 요소 가져오기
        const signVideo = document.getElementById('sign-video');
        const voicePauseBtn = document.querySelector('.voice-pauseBtn');
        const voicePlayBtn = document.querySelector('.voice-playBtn');
        const voiceReplayBtn = document.querySelector('.voice-replayBtn');

        // 낮은화면
        const lowScreenBtn = document.getElementById("lowScreenBtn"); // lowScreenBtn 변수 선언 위치 변경
        const label = lowScreenBtn?.querySelector(".lowScreenBtn-label");
        const lowIcon = document.querySelector(".lowScreenBtn-icon");
        const highIcon = document.querySelector(".highScreenBtn-icon");
        const footer = document.getElementById("footer"); // footer 변수 선언 위치 변경
        const footerBg = footer ? footer.querySelector('.footer-bg') : null; 

        // 비디오 상태를 로컬 스토리지에 저장하는 함수
        function saveVideoState() {
            if (signVideo.paused) {
                localStorage.setItem('voiceMode', 'voiceOffMode'); // 'voiceOffMode'로 저장
            } else {
                localStorage.setItem('voiceMode', 'voiceOnMode'); // 'voiceOnMode'로 저장
            }
        }

        // 영상 재생 함수
        function playVideo() {
            // 이미 재생 중이 아니라면 재생 시도
            if (signVideo.paused) {
                signVideo.play().then(() => {
                    voicePlayBtn.style.display = 'none'; // 재생 버튼 숨김
                    voicePauseBtn.style.display = 'flex'; // 일시정지 버튼 보임
                    saveVideoState(); // 상태 저장
                    console.log("영상 재생");
                }).catch(error => {
                    console.warn("자동 재생이 차단되었습니다:", error);
                    // 자동 재생 실패 시 (브라우저 정책 등), 일시정지 상태로 간주하고 재생 버튼 보이게
                    voicePlayBtn.style.display = 'flex';
                    voicePauseBtn.style.display = 'none';
                    saveVideoState(); // 현재 상태 저장 (voiceOffMode)
                });
            }
        }

        // 영상 일시정지 함수
        function pauseVideo() {
            // 이미 일시정지 중이 아니라면 일시정지
            if (!signVideo.paused) {
                signVideo.pause();
                voicePlayBtn.style.display = 'flex'; // 재생 버튼 보임
                voicePauseBtn.style.display = 'none'; // 일시정지 버튼 숨김
                saveVideoState(); // 상태 저장
                console.log("영상 일시정지");
            }
        }

        // 영상 다시 재생 함수
        function replayVideo() {
            signVideo.currentTime = 0; // 영상을 처음으로 되감기
            playVideo(); // 재생 함수 호출 (내부에서 버튼 상태 및 로컬 스토리지 업데이트)
            console.log("영상 다시 재생");
        }

        // 이벤트 리스너 연결
        voicePlayBtn.addEventListener('click', playVideo);
        voicePauseBtn.addEventListener('click', pauseVideo);
        voiceReplayBtn.addEventListener('click', replayVideo);

        // 영상이 끝났을 때 일시정지 상태로 변경하고 상태 저장
        signVideo.addEventListener('ended', function() {
            voicePlayBtn.style.display = 'flex'; // 재생 버튼 보임
            voicePauseBtn.style.display = 'none'; // 일시정지 버튼 숨김
            saveVideoState(); // 상태 저장
            console.log("영상 종료 및 재생 버튼 표시");
        });


        if (lowScreenBtn && footer && container) {
            const moveFooter = (toTop) => {
                // 애니메이션 클래스 초기화
                footer.classList.remove("moving-in", "moving-out");

                // 부드러운 전환을 위해 클래스 추가 → DOM 재배치까지 delay
                footer.classList.add("moving-out");

                setTimeout(() => {
                    if (toTop) {
                        container.insertBefore(footer, container.firstChild);
                        footer.dataset.moved = "true";
                        localStorage.setItem("lowScreenState", "true");
                        label && (label.innerText = "높은 화면");
                        lowIcon && (lowIcon.style.display = "none");
                        highIcon && (highIcon.style.display = "block");
//                         footerBg && (footerBg.src="\${footerImgPath}");
                    } else {
                        container.appendChild(footer);
                        footer.dataset.moved = "false";
                        localStorage.setItem("lowScreenState", "false");
                        label && (label.innerText = "낮은 화면");
                        lowIcon && (lowIcon.style.display = "block");
                        highIcon && (highIcon.style.display = "none");
//                         footerBg && (footerBg.src="\${footerImgPath}");
                    }

                    // 이동 후 부드러운 진입 애니메이션
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
            const mainBody = document.querySelector('.main-body');
            if (mainBody) {
                mainBody.classList.add('loaded');
            } else {
                console.error('main-body 요소를 찾을 수 없습니다.');
            }

            const savedMode = localStorage.getItem('voiceMode');

            // 로컬 스토리지 상태에 따라 초기 버튼 가시성 설정
            if (savedMode === 'voiceOnMode' || savedMode === null) {
                // 'voiceOnMode'이거나 저장된 값이 없으면 (첫 방문), 재생 시도 및 일시정지 버튼 표시
                signVideo.play().then(() => {
                    voicePlayBtn.style.display = 'none';
                    voicePauseBtn.style.display = 'flex';
                    saveVideoState(); // 재생 성공 시 상태 저장
                }).catch(error => {
                    console.warn("자동 재생이 차단되었습니다:", error);
                    // 자동 재생 실패 시, 일시정지 상태로 간주하고 재생 버튼 표시
                    voicePlayBtn.style.display = 'flex';
                    voicePauseBtn.style.display = 'none';
                    saveVideoState(); // 일시정지 상태로 저장
                });
            } else { // savedMode === 'voiceOffMode'
                // 'voiceOffMode'이면, 영상 일시정지 및 재생 버튼 표시
                signVideo.pause(); // 명시적으로 일시정지
                voicePlayBtn.style.display = 'flex';
                voicePauseBtn.style.display = 'none';
                saveVideoState(); // 일시정지 상태 저장
            }
        });

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


        const menuBtn = document.querySelectorAll(".main__menu--btn");
            
        // 각 버튼에 대한 개별 함수를 연결
        menuBtn[0].addEventListener('click', centerPage);
        menuBtn[1].addEventListener('click', eduPage);
        menuBtn[2].addEventListener('click', facilityPage);
        menuBtn[3].addEventListener('click', floorPage);

        function centerPage() {
            const page = document.querySelector(".page");
            
            page.classList.add("fade-out");

            setTimeout(function () {
                location.replace("<c:url value="/forest/center-intro"/>");
            }, 500); // 0.5초
        }

        function eduPage() {
            const page = document.querySelector(".page");
            
            page.classList.add("fade-out");

            setTimeout(function () {
                location.replace("<c:url value="/forest/education-program"/>");
            }, 500); // 0.5초
        }

        function facilityPage() {
            const page = document.querySelector(".page");
            
            page.classList.add("fade-out");

            setTimeout(function () {
                location.replace("<c:url value="/forest/facility-guide"/>");
            }, 500); // 0.5초
        }

        function floorPage() {
            const page = document.querySelector(".page");
            
            page.classList.add("fade-out");

            setTimeout(function () {
                location.replace("<c:url value="/forest/floor-guide"/>");
            }, 500); // 0.5초
        }
    </script>
    
	<%@ include file="/cuda/jsp/js/voice.js.jsp" %>
	<%@ include file="/cuda/jsp/js/touch.js.jsp" %>
</body>
</html>