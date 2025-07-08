 var swiper = new Swiper(".mySwiper", {
    // 여기에 Swiper 옵션을 추가합니다.
    loop: true, // 무한 루프
    autoplay: {
      delay: 3000, // 2.5초마다 자동 재생
      disableOnInteraction: false, // 사용자 조작 후에도 자동 재생 계속
    },
    effect: 'fade', // ★ 페이드 효과 추가
    fadeEffect: {
      crossFade: true // ★ 이미지 전환 시 부드러운 교차 페이드 효과 (선택 사항)
    },
    pagination: {
      el: ".swiper-pagination", // 페이지네이션 요소
      clickable: true, // 페이지네이션 클릭 가능
    },
    navigation: {
      nextEl: ".swiper-button-next", // 다음 버튼
      prevEl: ".swiper-button-prev", // 이전 버튼
    },
    // 페이드 효과를 사용할 때는 보통 slidesPerView를 1로 설정합니다.
    slidesPerView: 1, 
    spaceBetween: 0 // 간격은 필요 없습니다.
});