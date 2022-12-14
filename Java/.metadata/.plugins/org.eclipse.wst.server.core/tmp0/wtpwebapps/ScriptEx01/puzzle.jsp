<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Sliding Puzzle</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <style type="text/css">
        #board {border: 1px solid #ccc;}
        #board td { width:30px; height:30px; padding:5px; text-align: center; }
        #board td.num {background-color: yellow; border:1px solid #000;  cursor: pointer;}
    </style>
</head>
<body>
    <div class="container">
    	<div class="page-header">
        </div>
        <table id="board">
        </table>

    </div>

    <script src="https://code.jquery.com/jquery-1.11.2.js"></script>
    <script>
    (function($) {
        "use strict";
        var YLEN = 3, // 행 길이
            XLEN = 3, // 열 길이
            blank = YLEN * XLEN - 1, // 빈칸 위치
            BLANK = 0, // 빈칸의 값
            board = [], // 보드 배열 (YLEN x XLEN)
            boardEl = $('#board'); // 테이블 엘리먼트

        function initPuzzle() { // 퍼즐 데이터를 초기화
            board = [];
            for (var y = 0; y < YLEN; y++) 
            {
                board[y] = []; // 각 행마다 열 배열 설정
                for (var x = 0; x < XLEN; x++) 
                {
                    var idx = y * XLEN + x;
                    if (idx < blank) board[y][x] = idx + 1; // 순서대로 숫자 할당
                    else board[y][x] = BLANK; // 마지막 빈칸 설정
                }
            }
            // 이동 방향
            var moves = ['r', 'l', 'd', 'u'];
            for (var z = 0; z < 500; z++) 
            { // 500회 동안 무작위로 이동
                move(moves[parseInt(Math.random() * 4,10)], false);
            }
            // 데이터 초기화 후 화면 갱신
            updateBoard();
        }

        function numClick() {
            var $this = $(this), index = parseInt($this.data('index')), x = index % YLEN, y = parseInt(index / XLEN);

            if (y > 0 && board[y-1][x] == BLANK) {
                move('u', true);
            } else if (y < YLEN - 1 && board[y+1][x] == BLANK) {
                move('d', true);
            } else if (x > 0 && board[y][x-1] == BLANK) {
                move('l', true);
            } else if (x < XLEN - 1 && board[y][x+1] == BLANK) {
                move('r', true);
            }
        }

        function updateBoard() { // 퍼즐 데이터를 화면에 표시
            boardEl.empty(); // 테이블을 비우고
            var html = '';
            for (var y = 0; y < YLEN; y++) 
            {
                html += '<tr>';
                for (var x = 0; x < XLEN; x++) 
                {
                    if (board[y][x] != BLANK) html += '<td class="num" data-index="' + (y * XLEN + x) + '">' + board[y][x] + '</td>';
                    else html += '<td class="blank">&nbsp;</td>'; // 빈칸
                }
                html += '</tr>';
            }
            boardEl.html(html);

            $('td.num', boardEl).click(numClick);
        }

        function moveTo(to) 
        { // 빈칸을 to 위치로 이동
            // 빈칸에 to 위치의 숫자 옮기고
            board[parseInt(blank / YLEN,10)][blank % XLEN] = board[parseInt(to / YLEN,10)][to % XLEN];
            // to 위치에 빈칸 값 설정
            board[parseInt(to / YLEN,10)][to % XLEN] = BLANK;
            // to 위치를 빈칸으로 설정
            blank = to;
            // 화면 갱신
            updateBoard();
        }

        function isEnd() {
            for (var y = 0; y < YLEN; y++) {
                for (var x = 0; x < XLEN; x++) {
                    var expect = y * XLEN + x + 1;  // 기대값
                    if (y * XLEN + x < YLEN * XLEN - 1) { // 마지막 칸은 제외
                        if (board[y][x] != expect) return; // 기대값이 아니면 중단
                    }
                }
            }
            // 여기 까지 코드가 진행 됐다면. 성공.
            alert('ok');
        }

        function move(d, human) { // 이동 (가능한 경우)
            // d : 이동 방향
            // human : 사람이 이동 했는지 여부 (초기화를 위해)
            switch (d) {
                case 'r': // right : 빈칸이 맨 좌측이 아니면 빈칸을 좌측으로 이동
                    if (blank % XLEN > 0) moveTo(blank - 1);
                    break;
                case 'l': // left : 빈칸이 맨 우측이 아니면 빈칸을 우측으로 이동
                    if (blank % XLEN < XLEN - 1) moveTo(blank + 1);
                    break;
                case 'd': // down : 빈칸이 멘 위가 아니면 빈칸을 위로 이동
                    if (parseInt(blank / YLEN,10) > 0) moveTo(blank - XLEN);
                    break;
                case 'u': // up : 빈칸이 맨 아래가 아니면 빈칸을 아래로 이동
                    if (parseInt(blank / YLEN,10) < YLEN - 1) moveTo(blank + XLEN);
                    break;
            }
            // 사람이 움직였다면 완료 여부 체크
            if (human) isEnd();
        }

        initPuzzle(); // 보드 데이터 초기화

    })(jQuery);
    </script>
</body>
</html>