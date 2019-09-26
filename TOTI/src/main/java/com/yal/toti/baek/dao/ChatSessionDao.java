package com.yal.toti.baek.dao;

import java.util.List;

import com.yal.toti.baek.domain.ChatRoomInfo;
import com.yal.toti.baek.domain.EstInfo;
import com.yal.toti.baek.domain.MemberInfo;

public interface ChatSessionDao {
	public MemberInfo selectMemberById(String uid);

	public List<EstInfo> selectAllList(int user);

	public String searchChatRoom(int user, int target, int category);

	public int insertChatRoom(int user, int target, int category, int roomnum);

	public List<ChatRoomInfo> selectChatRoomListByUser(int user);

}
