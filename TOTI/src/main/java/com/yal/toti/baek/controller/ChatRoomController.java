package com.yal.toti.baek.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yal.toti.service.RoomService;

@RestController
@RequestMapping("chat/room")
public class ChatRoomController {

	@Autowired
	private RoomService service;

	@CrossOrigin
	@GetMapping("/{est_idx}/{cate_idx}/{user}/{m_idx}")
	public String searchChatRoom(@PathVariable("est_idx") int roomnum, @PathVariable("cate_idx") int category,
			@PathVariable("user") int user, @PathVariable("m_idx") int target) {

		System.out.println(roomnum + ", " + category + ", " + user + ", " + target);

		String room = service.searchChatRoom(roomnum, category, user, target);

		return room;
	}

}
