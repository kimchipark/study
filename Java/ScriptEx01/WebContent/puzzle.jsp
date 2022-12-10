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
        var YLEN = 3, // �� ����
            XLEN = 3, // �� ����
            blank = YLEN * XLEN - 1, // ��ĭ ��ġ
            BLANK = 0, // ��ĭ�� ��
            board = [], // ���� �迭 (YLEN x XLEN)
            boardEl = $('#board'); // ���̺� ������Ʈ

        function initPuzzle() { // ���� �����͸� �ʱ�ȭ
            board = [];
            for (var y = 0; y < YLEN; y++) 
            {
                board[y] = []; // �� �ึ�� �� �迭 ����
                for (var x = 0; x < XLEN; x++) 
                {
                    var idx = y * XLEN + x;
                    if (idx < blank) board[y][x] = idx + 1; // ������� ���� �Ҵ�
                    else board[y][x] = BLANK; // ������ ��ĭ ����
                }
            }
            // �̵� ����
            var moves = ['r', 'l', 'd', 'u'];
            for (var z = 0; z < 500; z++) 
            { // 500ȸ ���� �������� �̵�
                move(moves[parseInt(Math.random() * 4,10)], false);
            }
            // ������ �ʱ�ȭ �� ȭ�� ����
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

        function updateBoard() { // ���� �����͸� ȭ�鿡 ǥ��
            boardEl.empty(); // ���̺��� ����
            var html = '';
            for (var y = 0; y < YLEN; y++) 
            {
                html += '<tr>';
                for (var x = 0; x < XLEN; x++) 
                {
                    if (board[y][x] != BLANK) html += '<td class="num" data-index="' + (y * XLEN + x) + '">' + board[y][x] + '</td>';
                    else html += '<td class="blank">&nbsp;</td>'; // ��ĭ
                }
                html += '</tr>';
            }
            boardEl.html(html);

            $('td.num', boardEl).click(numClick);
        }

        function moveTo(to) 
        { // ��ĭ�� to ��ġ�� �̵�
            // ��ĭ�� to ��ġ�� ���� �ű��
            board[parseInt(blank / YLEN,10)][blank % XLEN] = board[parseInt(to / YLEN,10)][to % XLEN];
            // to ��ġ�� ��ĭ �� ����
            board[parseInt(to / YLEN,10)][to % XLEN] = BLANK;
            // to ��ġ�� ��ĭ���� ����
            blank = to;
            // ȭ�� ����
            updateBoard();
        }

        function isEnd() {
            for (var y = 0; y < YLEN; y++) {
                for (var x = 0; x < XLEN; x++) {
                    var expect = y * XLEN + x + 1;  // ��밪
                    if (y * XLEN + x < YLEN * XLEN - 1) { // ������ ĭ�� ����
                        if (board[y][x] != expect) return; // ��밪�� �ƴϸ� �ߴ�
                    }
                }
            }
            // ���� ���� �ڵ尡 ���� �ƴٸ�. ����.
            alert('ok');
        }

        function move(d, human) { // �̵� (������ ���)
            // d : �̵� ����
            // human : ����� �̵� �ߴ��� ���� (�ʱ�ȭ�� ����)
            switch (d) {
                case 'r': // right : ��ĭ�� �� ������ �ƴϸ� ��ĭ�� �������� �̵�
                    if (blank % XLEN > 0) moveTo(blank - 1);
                    break;
                case 'l': // left : ��ĭ�� �� ������ �ƴϸ� ��ĭ�� �������� �̵�
                    if (blank % XLEN < XLEN - 1) moveTo(blank + 1);
                    break;
                case 'd': // down : ��ĭ�� �� ���� �ƴϸ� ��ĭ�� ���� �̵�
                    if (parseInt(blank / YLEN,10) > 0) moveTo(blank - XLEN);
                    break;
                case 'u': // up : ��ĭ�� �� �Ʒ��� �ƴϸ� ��ĭ�� �Ʒ��� �̵�
                    if (parseInt(blank / YLEN,10) < YLEN - 1) moveTo(blank + XLEN);
                    break;
            }
            // ����� �������ٸ� �Ϸ� ���� üũ
            if (human) isEnd();
        }

        initPuzzle(); // ���� ������ �ʱ�ȭ

    })(jQuery);
    </script>
</body>
</html>