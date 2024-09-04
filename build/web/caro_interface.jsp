<%-- 
    Document   : caro_interface
    Created on : Jul 20, 2023, 12:41:52 AM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CARO</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
            }

            .board {
                display: inline-block;
                border-collapse: collapse;
            }

            .cell {
                width: 50px;
                height: 50px;
                border: 1px solid #000;
            }

            .cell.empty {
                background-color: #f0f0f0;
            }

            .cell.x {
                background-color: #f44336;
                color: #fff;
            }

            .cell.o {
                background-color: #2196F3;
                color: #fff;
            }
        </style>
    </head>
    <div style="color: red"></div>
    <body>
        </br></br></br></br></br></br></br></br></br></br></br></br>
        <h1>C A R O</h1>
        <form action="MainController">
            
            <table class="board">
                <tr>
                    <td id="1" class="cell empty"  onclick="mark(this)"></td>
                    <td id="2" class="cell empty"  onclick="mark(this)"></td>
                    <td id="3" class="cell empty"  onclick="mark(this)"></td>
                </tr>
                <tr>
                    <td id="4" class="cell empty"  onclick="mark(this)"></td>
                    <td id="5" class="cell empty"  onclick="mark(this)"></td>
                    <td id="6" class="cell empty"  onclick="mark(this)"></td>
                </tr>
                <tr>
                    <td id="7" class="cell empty" onclick="mark(this)"></td>
                    <td id="8" class="cell empty" onclick="mark(this)"></td>
                    <td id="9" class="cell empty" onclick="mark(this)"></td>
                </tr>
                
            </table>
            </br></br></br>
            <input type="button" onclick="resetBoard()" value="Reset">
        </form>
    </body>

    <script>
        let current = 'X';
        function mark(cell) {
            if (cell.innerHTML === '') {
                cell.innerHTML = current;
                current = current === 'X' ? 'O' : 'X';
                checkWin();
            }
        }
        function checkWin() {
            const cells = document.querySelectorAll('.cell');

            for (let i = 0; i < 3; i++) {
                if (cells[i * 3].innerHTML !== '' && cells[i * 3].innerHTML === cells[i * 3 + 1].innerHTML && cells[i * 3 + 1].innerHTML === cells[i * 3 + 2].innerHTML) {
                    announceWinner(cells[i * 3].innerHTML);
                    return;
                }
            }

            for (let i = 0; i < 3; i++) {
                if (cells[i].innerHTML !== '' && cells[i].innerHTML === cells[i + 3].innerHTML && cells[i + 3].innerHTML === cells[i + 6].innerHTML) {
                    announceWinner(cells[i].innerHTML);
                    return;
                }
            }

            if (cells[0].innerHTML !== '' && cells[0].innerHTML === cells[4].innerHTML && cells[4].innerHTML === cells[8].innerHTML) {
                announceWinner(cells[0].innerHTML);
                return;
            }

            if (cells[2].innerHTML !== '' && cells[2].innerHTML === cells[4].innerHTML && cells[4].innerHTML === cells[6].innerHTML) {
                announceWinner(cells[2].innerHTML);
                return;
            }
        }
            
            function announceWinner(winner) {
            out.print('Người chơi '+ winner +' thắng!');
            resetBoard();
        }

        function resetBoard() {
            const cells = document.querySelectorAll('.cell');
            cells.forEach(cell => {
                cell.innerHTML = '';
            });
        }
        
    </script>

</html>
