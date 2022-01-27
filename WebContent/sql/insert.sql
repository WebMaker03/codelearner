
use codelearner2;



/* 가상데이터 insert */

/*users 테이블*/
insert into users(userid, userpw, u_name, age, email) values('kim', 'a1234567', '김유저', 15, 'email3@gmail.com');
insert into users(userid, userpw, u_name, age, email) values('hong', 'a1234567', '홍길동', 20,'email1@gmail.com');
insert into users(userid, userpw, u_name, age, email) values('lim', 'a1234567', '임꺽정', 30, 'email2@gmail.com');

select * from users;

/* challenges 테이블 */
/* 공부 */
insert into challenges(c_name, theme, fee, period, img, info) values('하루 1시간 공부','공부', 3000 ,30,'공부1.jpg', '하루에 1시간씩만 투자해서 부담없이 꾸준하게 공부하자!');
insert into challenges(c_name, theme, fee, period, img, info) values('하루 3시간 공부','공부', 3000 ,30,'공부5.jpg', '한 달동안 꾸준히 3시간씩 투자해서 공부해 불 수 있는 기회');
insert into challenges(c_name, theme, fee, period, img, info) values('하루 6시간 공부','공부', 3000 ,30,'공부6.jpg', '한 달동안 꾸준히 6시간씩 투자해서 공부해 불 수 있는 기회');
insert into challenges(c_name, theme, fee, period, img, info) values('도서관 출석체크 9:00AM','공부', 3000 ,30,'공부2.jpg', '아침 9시까지 도서관 가기, 오늘부터 함께 시작해볼까요?');
insert into challenges(c_name, theme, fee, period, img, info) values('하루에 영단어 30개씩 외우기','공부', 1400 ,14,'공부3.jpg', '하루에 30개씩 새로운 영단어를 외워봐요.');
insert into challenges(c_name, theme, fee, period, img, info) values('학원가기','공부', 3000 ,30,'공부4.jpg', '한 달동안 빠지지 않고 학원 성실히 등원하기!');
insert into challenges(c_name, theme, fee, period, img, info) values('인강듣기','공부', 3000 ,30,'공부8.jpg', '신청만하고 안듣게 되는 인터넷 강의! 챌린지로 함께 꾸준히 들어봐요.');
insert into challenges(c_name, theme, fee, period, img, info) values('카페에서 공부하기','공부', 1400 , 14,'공부7.jpg', '자유로운 분위기의 카페에서 집중하며 공부해봐요!');

/* 독서 */
insert into challenges(c_name, theme, fee ,period, img, info) values('하루 30분 책읽기','독서', 3000 ,30, '독서1.jpg','하루에 30분씩만 투자해서 독서를 해봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('하루 1시간 책읽기','독서', 3000 ,30, '독서2.jpg','하루에 1시간씩 독서를 해봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('도서관 가기','독서', 1400 , 14, '독서3.jpg','2주간 도서관 출석체크하기!');
insert into challenges(c_name, theme, fee ,period, img, info) values('자기 전 책읽기','독서', 1400 ,14, '독서4.jpg','자기 전 휴대폰은 그만! 독서를 하며 하루를 마무리 해봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('오전 책읽기','독서', 3000 ,30, '독서5.jpg','상쾌한 아침, 책읽기로 하루를 시작해봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('신문 읽기','독서', 3000 ,30, '독서6.jpg','못 읽은채 쌓여가는 뉴스들! 밀리지 않고 읽기.');

/* 운동 */
insert into challenges(c_name, theme, fee ,period, img, info) values('헬스장 가기','운동', 1400, 14, '운동9.jpg', '규칙적으로 꾸준하게 헬스장을 나가봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('하루 30분 걷기/달리기','운동', 1400, 14, '운동1.jpg','매일매일 산책을 나가보아요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('아침운동 하기','운동', 1400, 14, '운동4.jpg','상쾌한 아침부터 운동을 나가볼까요?');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일매일 홈트레이닝','운동', 3000, 30, '운동7.jpg','집에서도 할 수 있다! 영상을 보며 함께해요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('자전거 타기','운동', 1400, 14, '운동11.jpg','자전거로 함께 유산소 운동을 해봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일 플랭크 하기','운동', 1400, 14, '운동10.jpg','정확한 자세로 매일 플랭크 하고 코어를 키워봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일 스쿼트 하기','운동', 1400, 14, '운동14.jpg','매일매일 스쿼트로 하체 근육을 키워봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('줄넘기 하기','운동', 3000, 30, '운동12.jpg','헬스장을 가지 않고도 줄넘기로 꾸준한 운동효과를 볼 수 있어요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('홈 요가','운동', 1400, 14, '운동13.jpg','바른 자세와 예쁜 몸매를 원한다면 요가를 시작해봅시다!');

/* 생활습관 */
insert into challenges(c_name, theme, fee ,period, img, info) values('미라클모닝(아침 7시 기상)','생활습관', 3000, 30, '생활습관2.jpg','하루의 시작을 7시에! 한 달동안 기상 습관을 들여봐요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('집밥 요리하기','생활습관', 1400, 14, '생활습관9.jpg','불필요한 외식과 배달 음식을 줄여봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('책상 정리하기','생활습관', 1400, 14, '생활습관12.jpg','매일매일 책상 정리하고 기분 좋게 공부하기!');
insert into challenges(c_name, theme, fee ,period, img, info) values('다이어리 쓰기','생활습관', 3000, 30, '생활습관10.jpg','하루 일과나 내가 느꼈던 감정들을 다이어리에 차곡차곡 정리해봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('아침 명상','생활습관', 1400, 14, '생활습관11.jpg','명상을 통해 스트레스를 풀고 자신을 돌아보는 시간을 가져봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('휴대폰 5시간 이하로 쓰기','생활습관', 3000, 30, '생활습관13.jpg','휴대폰 사용기록을 인증하고 스마트폰 의존성을 줄여봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('과일/채소 먹기','생활습관', 1400, 14, '생활습관8.jpg','매일 신선한 야채나 과일을 먹고 영양소를 채워봐요!');

select * from challenges;

/* myC 테이블 */

/* 진행중챌린지*/
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(1, 1, true, '2021-06-01 00:00:00','2021-06-30 00:00:00', 50, '공부1.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(2, 1, true, '2021-06-01 00:00:00','2021-06-30 00:00:00', 60, '공부5.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(3, 1, true, '2021-06-01 00:00:00','2021-06-30 00:00:00', 70, '공부6.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(4, 1, true, '2021-06-01 00:00:00','2021-06-30 00:00:00', 80, '공부2.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(5, 1, true, '2021-06-15 00:00:00','2021-06-30 00:00:00', 50, '공부3.jpg');

insert into myC(c_code, u_code, state, startD, finishD, achievementPercentage, img) values(2, 1, true , '2021-06-01 00:00:00', '2021-06-30 00:00:00', 60, '챌린지사진5');
insert into myC(c_code, u_code, state, startD, finishD, achievementPercentage, img) values(3, 3, true ,'2021-06-15 00:00:00', '2021-06-30 00:00:00', 70, '챌린지사진6');

/* 끝난챌린지*/
insert into myC(c_code, u_code, state ,startD, finishD, achievementPercentage, img) values(1, 1, true, '2021-05-17 00:00:00','2021-05-31 00:00:00', 50, '챌린지사진1');
insert into myC(c_code, u_code, state, startD, finishD, achievementPercentage, img) values(2, 2, true , '2021-05-01 00:00:00', '2021-05-31 00:00:00', 60, '챌린지사진2');
insert into myC(c_code, u_code, state, startD, finishD, achievementPercentage, img) values(3, 3, true ,'2021-05-17 00:00:00', '2021-05-31 00:00:00', 70, '챌린지사진3');


select * from myC;

/* verification 테이블*/
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-17','인증텍스트1', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-18','인증텍스트2', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-23','인증텍스트3', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 3, '2021-06-22','인증텍스트4', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 4, '2021-06-21','인증텍스트5', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 5, '2021-06-20','인증텍스트6', 2);

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 2, '2021-06-17','인증텍스트', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 3, '2021-06-17','인증텍스트', 5);
select * from verification;


/* post, comments*/

insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물1','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물2','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물3','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물4','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물5','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'게시물6','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');

insert into post (u_code, c_code, p_title,p_text) values(2,1,'게시물제목7','포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용포스트내용');
insert into post (u_code, c_code, p_title,p_text) values(3,3,'게시물제목3','게시물3');
select* from post;

insert into comments (u_code,p_code,cm_text) values(1,1,'1번 포스트 유저1 댓글1');
insert into comments (u_code,p_code,cm_text) values(2,1,'1번 포스트 유저2 댓글2');
insert into comments (u_code,p_code,cm_text) values(2,1,'1번 포스트 유저2 댓글3');
insert into comments (u_code,p_code,cm_text) values(1,1,'1번 포스트 유저1 댓글4');

insert into comments (u_code,p_code,cm_text) values(1,2,'2번 포스트 유저1 댓글1');
insert into comments (u_code,p_code,cm_text) values(1,2,'2번 포스트 유저1 댓글2');

insert into comments (u_code,p_code,cm_text) values(3,3,'댓글3');
select* from comments;