// express
const app = require("express");
// http, app
const http = require("http");
// socket.io
const socketio = require("socket.io")(http);
// MySQL
const mysql = require("mysql");

var connection = mysql.createConnection({
  host: "mysql-mm.chvivg7pudki.ap-northeast-2.rds.amazonaws.com",
  port: "3306",
  user: "bit",
  password: "bit",
  database: "toti"
});

// mysql 연결
connection.connect();

var server = http
  .createServer(function(req, res) {
    res.writeHead(200, { "Content-Type": "text/html" });
    res.end();
  })
  .listen(82, function() {
    console.log("listening 82 port");
  });

// 소켓 서버 생성
var io = socketio.listen(server);

io.sockets.on("connection", function(socket) {
  // 사용자의 방 이름, 사용자 명, socket.id 값을 저장할 변수
  const loginIds = new Array();

  var roomInfo;
  // 채팅방 입장시 실행
  socket.on("join", function(data) {
    socket.leave(socket.id);
    socket.join(data.room);

    loginIds.push({
      room: data.room, // 접속한 채팅방의 이름
      user: data.user, // 유저의 이름
      target: data.target
    });

    // 입장한 유저의 정보를 출력한다.
    io.sockets.in(data.room).emit("contact", {
      name: data.name,
      message: data.user + "님이 접속했습니다."
    });

    chatLog(data);

    roomInfo = loginIds[0];
  });

  socket.on("disconnect", function() {
    if (roomInfo != undefined) {
      io.sockets.in(roomInfo.room).emit("contact", {
        message: roomInfo.user + "님이 접속을 종료했습니다."
      });
    }
  });


  socket.on("send_msg", function(data) {
    socket.emit("send_msg", data);
    socket.broadcast.in(data.room).emit("receiv_msg", data);

    console.log(data.message, data.room, data.name, data.time);

    connection.query(
      "insert into toti_chatlog(message, message_date, room_num, room_user) VALUES (?, ?, ?, ?)",
      [data.message, data.time, data.room, data.name],
      function(error, results) {
        if (error) {
          console.log(error);
        }
        // console.log(results);
        
        connection.query("update toti_chatroom set last_msg = ? where room_num = ?", [data.message, data.room],
        function(error, results) {
          if (error) {
            console.log(error);
          }
        })
      }
    );
  });

  function chatLog(data) {
    // 채팅 로그가 저장될 변수
    const log = new Array();

    connection.query(
      "select * from toti_chatlog where room_num = ?",
      [data.room],
      function(error, results) {
        if (error) {
          console.log(error);
        }
        for (var i = 0; i < results.length; i++) {
          log.push({
            message_num: results[i].message_num,
            message: results[i].message,
            message_date: results[i].message_date,
            room_user: results[i].room_user
          });    
        }
        // 여기에 콜백 함수
        // io.sockets.in(data.room).emit("loadChatLog", log);
        socket.emit("loadChatLog", log);
      }
    );
  }
});
