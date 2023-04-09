<html>

    <head>
      <style>
      
        body {
          padding: 0;
          margin: 0;
        }

        .navbar {
          display: flex;
          background-color: #3f51b5;
          font-family: sans-serif;
        }

        ul {
          display: flex;
          flex-direction: row;
          list-style: none;
        }

        ul>li>a {
          padding: 0 12px;
          color: white;
          font-size: 12px;
        }

        @media screen and (max-width: 992px) {
          ul>li>a {
            font-size: 16px;
            padding: 0 6px;
          }

          .navbar {
            background-color: #2689B9;
            background: linear-gradient(to right, #40B6C0 40%, #2689B9 80%);
          }

        }
        img{
            height: 422px;
            width: 1070px;
        }
        .frm{
            background-image: url('https://www.matrixx.com/wp-content/uploads/2019/03/TataCommunications-LP-Hero-5.jpg');
            height: 422px;
            width: 1079px;
            padding-top: 95px;
        }
        input
        {
            height: 32px;
            width: 313px;
            background-color: #000000;
            border-radius: 11px;
            border-style: ridge;
            padding-left: 20px;
        }
      </style>
    </head>

    <body>
            <div class="main">

              

               <div class="navbar">
                   <ul>
                       <li><a class="active" href="index.html"><b>HOME</b></a></li>
                      <li><a href="works.html">NEW ACOUNT</a></li>
                      <li><a href="about.html">ABOUT</a></li>
                 </ul>

        
             </div>

             <div class="frm">
              <center>
                <form>
                    <input type="text" id="username" name="username" placeholder="Enter-Name" required><br><br>
                    
                    <input type="email" id="email" name="email" placeholder="Enter-Email" required><br><br>
                    
                    <input type="password" id="password" name="password" placeholder="Enter-?" required><br><br>

                    <input type="password" id="confirm-password" name="confirm-password" placeholder="Enter-?" required><br><br>
                     
                    <button type="submit">submit</button>
                  </form>
                </center>
            </div>
        

       
    </div>


    </body>

    </html>
