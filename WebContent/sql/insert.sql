
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
insert into challenges(c_name, theme, fee ,period, img, info) values('신문 읽기','독서', 1000 ,10, '독서6.jpg','못 읽은채 쌓여가는 뉴스들! 밀리지 않고 읽기.');

/* 운동 */
insert into challenges(c_name, theme, fee ,period, img, info) values('헬스장 가기','운동', 1400, 14, '운동9.jpg', '규칙적으로 꾸준하게 헬스장을 나가봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('하루 30분 걷기/달리기','운동', 1400, 14, '운동1.jpg','매일매일 산책을 나가보아요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('아침운동 하기','운동', 1400, 14, '운동4.jpg','상쾌한 아침부터 운동을 나가볼까요?');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일매일 홈트레이닝','운동', 3000, 30, '운동7.jpg','집에서도 할 수 있다! 영상을 보며 함께해요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('자전거 타기','운동', 1400, 14, '운동11.jpg','자전거로 함께 유산소 운동을 해봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일 플랭크 하기','운동', 1400, 14, '운동10.jpg','정확한 자세로 매일 플랭크 하고 코어를 키워봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('매일 스쿼트 하기','운동', 1400, 14, '운동14.jpg','매일매일 스쿼트로 하체 근육을 키워봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('줄넘기 하기','운동', 1000, 10, '운동12.jpg','헬스장을 가지 않고도 줄넘기로 꾸준한 운동효과를 볼 수 있어요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('홈 요가','운동', 1400, 14, '운동13.jpg','바른 자세와 예쁜 몸매를 원한다면 요가를 시작해봅시다!');

/* 생활습관 */
insert into challenges(c_name, theme, fee ,period, img, info) values('미라클모닝(아침 7시 기상)','생활습관', 3000, 30, '생활습관2.jpg','하루의 시작을 7시에! 한 달동안 기상 습관을 들여봐요.');
insert into challenges(c_name, theme, fee ,period, img, info) values('집밥 요리하기','생활습관', 1400, 14, '생활습관9.jpg','불필요한 외식과 배달 음식을 줄여봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('책상 정리하기','생활습관', 1400, 14, '생활습관12.jpg','매일매일 책상 정리하고 기분 좋게 공부하기!');
insert into challenges(c_name, theme, fee ,period, img, info) values('다이어리 쓰기','생활습관', 3000, 30, '생활습관10.jpg','하루 일과나 내가 느꼈던 감정들을 다이어리에 차곡차곡 정리해봐요!');
insert into challenges(c_name, theme, fee ,period, img, info) values('아침 명상','생활습관', 1400, 14, '생활습관11.jpg','명상을 통해 스트레스를 풀고 자신을 돌아보는 시간을 가져봅시다.');
insert into challenges(c_name, theme, fee ,period, img, info) values('휴대폰 5시간 이하로 쓰기','생활습관', 1400, 14, '생활습관13.jpg','휴대폰 사용기록을 인증하고 스마트폰 의존성을 줄여봅시다!');
insert into challenges(c_name, theme, fee ,period, img, info) values('과일/채소 먹기','생활습관', 1400, 14, '생활습관8.jpg','매일 신선한 야채나 과일을 먹고 영양소를 채워봐요!');

select * from challenges;

/* myC 테이블 */

/* 진행중챌린지*/
insert into myC(c_code, u_code, state ,startD, finishD, img) values(1, 1, true, '2021-06-05 00:00:00','2021-07-04 00:00:00', '공부1.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(2, 1, true, '2021-06-05 00:00:00','2021-07-04 00:00:00', '공부5.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(3, 1, true, '2021-06-05 00:00:00','2021-07-04 00:00:00', '공부6.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(4, 1, true, '2021-06-05 00:00:00','2021-07-04 00:00:00', '공부2.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(5, 1, true, '2021-06-21 00:00:00','2021-07-05 00:00:00', '공부3.jpg');

insert into myC(c_code, u_code, state, startD, finishD, img) values(1, 2, true , '2021-06-05 00:00:00','2021-06-04 00:00:00','챌린지사진5');
insert into myC(c_code, u_code, state, startD, finishD, img) values(2, 2, true , '2021-06-05 00:00:00','2021-07-04 00:00:00','챌린지사진5');

insert into myC(c_code, u_code, state, startD, finishD, img) values(1, 3, true ,'2021-06-05 00:00:00', '2021-07-04 00:00:00', '챌린지사진6');

/* 끝난챌린지*/
insert into myC(c_code, u_code, state ,startD, finishD, img) values(14, 1, false, '2021-05-02 00:00:00', '2021-05-11 00:00:00', '독서6.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(22, 1, false, '2021-05-02 00:00:00', '2021-05-11 00:00:00', '운동14.jpg');
insert into myC(c_code, u_code, state ,startD, finishD, img) values(29, 1, false, '2021-05-02 00:00:00', '2021-05-15 00:00:00', '생활습관13.jpg');

insert into myC(c_code, u_code, state, startD, finishD, img) values(27, 2, false , '2021-05-01 00:00:00', '2021-05-31 00:00:00' ,'생활습관10.jpg');
insert into myC(c_code, u_code, state, startD, finishD, img) values(5, 3,false ,'2021-05-17 00:00:00', '2021-05-31 00:00:00', '공부3.jpg');


select * from myC;

/* verification 테이블*/

/* 진행중 챌린지 인증 */

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-12','6/12일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-13','6/13일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-14','6/14일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-15','6/15일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-16','6/16일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-17','6/17일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-18','6/18일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-19','6/19일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-20','6/20일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values (1, 1, '2021-06-25','6/25일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-26','6/26일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-27','6/27일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-28','6/28일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 1, '2021-06-29','6/29일 공부 인증 완료.', 4);

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-12','6/12일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-13','6/13일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-14','6/14일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-15','6/15일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-16','6/16일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-17','6/17일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-18','6/18일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-19','6/19일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-20','6/20일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values (1, 2, '2021-06-25','6/25일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-26','6/26일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-27','6/27일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-28','6/28일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 2, '2021-06-29','6/29일 공부 인증 완료.', 5);
                                                                            
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-12','6/12일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-13','6/13일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-14','6/14일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-15','6/15일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-16','6/16일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-17','6/17일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-18','6/18일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-19','6/19일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-20','6/20일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-25','6/25일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-26','6/26일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 6, '2021-06-29','6/29일 공부 인증 완료.', 4);

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-12','6/12일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-13','6/13일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-14','6/14일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-15','6/15일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-16','6/16일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-17','6/17일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-18','6/18일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-19','6/19일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-20','6/20일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-25','6/25일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-26','6/26일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(2, 7, '2021-06-29','6/29일 공부 인증 완료.', 4);

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-12','6/12일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-13','6/13일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-14','6/14일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-15','6/15일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-16','6/16일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-17','6/17일 공부 인증 완료.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-18','6/18일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-19','6/19일 공부 인증 완료.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-20','6/20일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values (3, 8, '2021-06-25','6/25일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-26','6/26일 공부 인증 완료.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-27','6/27일 공부 인증 완료.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-28','6/28일 공부 인증 완료.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(3, 8, '2021-06-29','6/29일 공부 인증 완료.', 4);
                                                                         
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 3, '2021-06-17','6월 17일 인증합니다!', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 4, '2021-06-17','6월 17일 인증합니다!', 5);


/* 끝난 챌린지 인증*/
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 9, '2021-05-02','5/02일 줄넘기.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 9, '2021-05-03','5/03일 줄넘기.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 9, '2021-05-04','5/04일 줄넘기.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 9, '2021-05-05','5/05일 줄넘기.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 9, '2021-05-06','5/06일 줄넘기.', 4);

insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-02','5/02일자 신문 인증.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-03','5/03일자 신문 인증.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-04','5/04일자 신문 인증.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-05','5/05일자 신문 인증.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-06','5/06일자 신문 인증.', 4);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-07','5/07일자 신문 인증.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-08','5/08일자 신문 인증.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-09','5/09일자 신문 인증.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-10','5/10일자 신문 인증.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 10, '2021-05-11','5/11일자 신문 인증.', 4);


insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 11, '2021-05-02','5/02일 휴대폰 사용 인증.', 3);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 11, '2021-05-03','5/03일 휴대폰 사용 인증.', 1);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 11, '2021-05-04','5/04일 휴대폰 사용 인증.', 2);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 11, '2021-05-05','5/05일 휴대폰 사용 인증.', 5);
insert into verification(u_code, mc_code, v_date ,v_text, rating) values(1, 11, '2021-05-06','5/06일 휴대폰 사용 인증.', 4);



select * from verification;


/* post, comments*/
/*유저 다르게 1번 챌린지 게시판에 5개 정도*/
insert into post (u_code, c_code, p_title,p_text) values(1,1,'공부 자극 글귀 / 공부 자극 명언 / 동기부여에 좋은 공부 명언','1. 교육은 노후를 위한 최상의 양식이다 - 아리스토텔레스

2. 공부벌레들에게 잘해주십시오. 나중에 그 사람 밑에서 일하게 될 수도 있습니다 -빌게이츠

3. 잠은 무덤에서나 실컷 자자

4. 지금 자면 꿈을 꾸지만, 지금 공부하면 꿈을 이룰 수 있다.

5. 공부할 때의 고통은 잠깐이지만, 못배운 고통은 평생 따라다닌다.');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'공부팁 10가지','1. 공부에 불필요한 스트레스를 주지 말라.

2. 귀찮은 일은 내가 할수 있는 일이다.

3. 과제와 실력이 균형을 이뤄야 한다.

4. 비슷한것, 대조되는것, 헷갈리는것, 연관되는것은 연결하라.

5. 집중은 원인이 아니라 결과물이다.

6. 아는척하고 넘어가지 말라.

7. 단순암기는 0.5초로 반복하여 잇는다.

8. 강약을 조절하라.

9. 첫시험은 양치기다.

10. 공부는 경매다. ');
insert into post (u_code, c_code, p_title,p_text) values(1,1,'공부 집중력 향상시키기','집중력은 마음이나 주의를 집중할 수 있는 힘이다. 흔히 엉덩이를 오래 붙이느냐가 아니라 집중력이 관건이라고들 한다. 공부할 때, 업무를 볼 때, 어떤 사람들은 1시간에도 2시간의 효과를 내지만, 어떤 사람들은 보충학습에 야근해도 결과가 더 좋지 않은 사람들이 있다. 안타깝지만, 성과는 시간에 비례하지 않기 때문이다. 물론, 기본적인 능력 차이도 간과할 수 없지만, 대부분의 경우 집중력이 그 원인으로 작용한다. 많은 전문가가 성공의 주요 요소 중에서 집중력을 으뜸으로 꼽는다. 집중력은 생산성의 핵심이자 필수 요소이며 결과적으로 성패를 좌우하는 중요한 열쇠가 되기 때문이다. 집중력을 높이는 방법으로는 운동하기, 아침 식사 챙겨먹기 등이 있다.');
insert into post (u_code, c_code, p_title,p_text) values(2,1,'국어부문 수능꿀팁 완벽정리','▶비문학을 풀고 화작문을 풀 것. (논리구조가 비슷하기 때문)

▶주어진 증거들로만 답을 찾을 것.

▶한 문제에 너무 연연하지 말 것. 틀리더라도 시간 버는게 유리하다.

▶훑어보기 > 묻는 것을 보기 > 제대로 읽기 순으로 접근하는 것이 전략적이다.

▶인쇄상태 확인할 때, 전체적인 전략을 수립할 것.

▶문제푸는 방식을 공식화 시켜서 풀 것.

▶출제자가 주는 정보를 놓치지 말 것.');
insert into post (u_code, c_code, p_title,p_text) values(2,1,'수학부문 수능꿀팁 완벽정리','▶검토가 필요한 문제들은 우선순위를 정해서 검토할 것.

​

▶자신의 실수패턴을 알 수 있는 실수노트를 만들 것.

​

▶본인 기준, 최고의 선생님을 찾아서 방식을 따라할 것.

​

▶정답의 개수는 숫자별로 거의 동일하다.

​

▶ㄱㄴㄷ 문제의 답은 압도적으로 3,5번이 많다.');

insert into post (u_code, c_code, p_title,p_text) values(2,1,'수능직전,당일 꿀팁 모음','▶우황청심환 등의 안정제는 수능 1~2주 전에 확인 차 먹어볼 것.

​

▶모든 영역을 10분씩 짧게 두고 풀어보는 연습을 해볼 것.

​

▶수능 직전에는 11~12시에 자는 습관을 들일 것. (+아침식사 거르지 말 것)

​

▶수능시험 시간표에 맞추어 공부해 볼 것.

​

▶갑작으러운 카페인 섭취는 위험하니 조심할 것.

​

▶국어시험 전에는 문법을, 수학 전에는 오답노트를, 탐구 전에는 개념노트를 볼 것.');
insert into post (u_code, c_code, p_title,p_text) values(3,1,'[만점자가 알려주는 토익] 고득점 팁 전수','1) 너무 당연한 말이지만, 단어를 많이 외워야 합니다. 토익점수가 영어실력과 정비례한다고 보긴 어렵지만, 단어를 많이 알면 고득점에 반드시 유리할 뿐만 아니라 평생의 자산이 됩니다. LC와 RC모두 단어만 많이 알아도 절반 이상은 먹고 들어간다고 생각합니다. 

2) LC의 경우 대화에 나오는 매 단어를 들으려고 한다기 보다는 대화의 전반적인 흐름을 이해하려고 노력해야 합니다. 나무만 보다가는 숲을 놓칠 수 있다는 얘기입니다. LC파트가 시작되기 전 준비시간과 각 대화가 시작되기 전의 시간을 활용하여, 보기로 주어진 답안을 보고 핵심 단어를 찾아낸다면 대화의 전반적인 흐름을 파악하기가 매우 쉬워집니다. 예를 들어, 보기답안에 "Trip" 이라는 단어가 있다면, 여행에 관련된 이야기가 나오겠구나 하고 마음의 준비를 하면, 대화가 시작된 후, 내용을 이해하기가 훨씬 쉬워집니다.');
insert into post (u_code, c_code, p_title,p_text) values(3,1,'공부가 정말로 하기 싫을 때 따라해보세요','첫째. 가만히 앉아 눈을 감고 
가만히 있으세요.

이때 어떤 생각을 절대

의도적으로 하지도 말고

그냥 가만히 계세요. 

둘째. 텅 비어버린 상태가 되면 눈을 뜨세요.

그리고서 주섬 주섬 해야하는 공부 과제를
 
예를 들면 수학 문제집을 책상위에 펼치는 겁니다.

아무 생각도 하지 않구요. 

자연스럽게.





셋째. 이제 과제를 하시는데 중요한 건,

딱 한 문제에만 집중하는 것 입니다.

(이게 핵심입니다)

100문제도, 50문제도 아닌

딱 1문제 말이죠.



그렇게 한 문제만

집중해서 풀어 내세요.



어때요?');


insert into post (u_code, c_code, p_title,p_text) values(1,2,'안녕하세요.','열심히 해봐요!');
insert into post (u_code, c_code, p_title,p_text) values(1,2,'챌린지 화이팅~','공부 화이팅 ㅎㅎ');
insert into post (u_code, c_code, p_title,p_text) values(2,2,'오늘 공부 잘되네요','ㅎㅎ');

insert into post (u_code, c_code, p_title,p_text) values(1,3,'공부 힘드네요','ㅎㅎ 정말루');
insert into post (u_code, c_code, p_title,p_text) values(1,4,'도서관에서 공부 잘되네요','하하하하하하');
select* from post;

/*유저 다르게 5개 정도*/
insert into comments (u_code,p_code,cm_text) values(1,1,'다들 열심히 공부합니다!');
insert into comments (u_code,p_code,cm_text) values(2,1,'좋은 정보 감사합니다.');
insert into comments (u_code,p_code,cm_text) values(3,1,'퍼가요~');
insert into comments (u_code,p_code,cm_text) values(3,1,'감사합니다.');

insert into comments (u_code,p_code,cm_text) values(2,2,'유익한 정보네요^^');
insert into comments (u_code,p_code,cm_text) values(2,2,'대박');

insert into comments (u_code,p_code,cm_text) values(3,3,'대박대박');
select* from comments;
