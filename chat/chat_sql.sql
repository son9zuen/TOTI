select est.est_idx, est.mento_idx, request.m_idx, request.cate_idx from toti.toti_estimatee as est join toti.toti_request as request on est.request_idx = request.request_idx;

select est.est_idx, req.cate_idx, est.mento_idx, req.m_idx, est.est_price, est.est_cont from toti.toti_estimatee as est join toti.toti_request as req on est.request_idx = req.request_idx where mento_idx = 3;

select * from toti.toti_request;

select * from toti.toti_chatroom;

select * from toti.toti_member;

select * from toti.toti_estimatee;

select est.est_idx, req.cate_idx, est.mento_idx, req.m_idx, est.est_price, est.est_cont from toti.toti_estimatee as est join toti.toti_request as req on est.request_idx = req.request_idx where mento_idx = 3;

select m_name from toti.toti_chatroom as chatroom join toti.toti_member as member on chatroom.room_user = member.m_idx;

select chatroom.room_num, chatroom.room_cat, chatroom.room_user, chatroom.last_msg, chatroom.room_target, member.m_name from toti.toti_chatroom as chatroom join toti.toti_member as member on chatroom.room_target = member.m_idx;

select chatroom.room_num, chatroom.room_cat,
cate.cate_name,
chatroom.room_user,
chatroom.last_msg,
chatroom.room_target,
(select m_name from toti.toti_member where m_idx
= room_user) as username, (select m_name from toti.toti_member where
m_idx = room_target) as targetname from
toti.toti_chatroom as chatroom
join toti.toti_member
as member on
chatroom.room_target = member.m_idx
join toti.toti_cate as cate on
chatroom.room_cat = cate.cate_idx where
room_user =
1 or
room_target = 1 order by cate_name;
       
       
select chatlog.message, chatlog.message_date, chatlog.room_num, chatlog.room_user, member.m_name from toti.toti_chatlog as chatlog join toti.toti_member as member on chatlog.room_user = member.m_idx where room_num = 19;

select * from toti.toti_chatlog where room_num = 19;


SELECT mentor.mento_idx, member.m_id, member.m_name, member.m_gender, member.m_photo, member.m_date, mentor.p_shot, mentor.p_pay, mentor.p_edu, mentor.p_career, mentor.p_long

FROM toti.toti_mentor_profile as mentor join toti.toti_member as member on mentor.mento_idx = member.m_idx;


SELECT * FROM toti.toti_review as review join toti.toti_member as member on review.m_idx = member.m_idx;