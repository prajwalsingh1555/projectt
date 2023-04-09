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
            padding-top: 60px;
        }
        input
        {
            height: 48px;
            width: 320px;
            background-color: #ffeeee;
            border-radius: 11px;
            border-style: ridge;
            padding-left: 20px;
            font-size: 1rem;
        }
        button
        {
          
          height: 30px;
            width: 117px;
            background-color: #c12020;
            border-radius: 11px;
            border-style: ridge;
            padding-left: 9px;

        }
        h2{
          color: aliceblue;
          font-weight: bold;
        }
        .gg
        {
          margin-top: -45px;
          height: 38px;
          width: 80px;
          float: left;
          padding-left: 42px;
        }
      </style>
    </head>

    <body>
            <div class="main">

              
              
               <div class="navbar">
                   <ul>
                      <li><a href="index.jsp">NEW ACCOUNT</a></li>
                      <li><a href="about.html">WITHORAW</a></li>
                      <li><a href="diposit.jsp">DIPOSIT</a></li>
                      <li><a href="about.html">BALANCE</a></li>
                      <li><a href="about.html">CLOSE-ACCOUNT</a></li>
                 </ul>

        
             </div>
            
             <div class="frm">
            
                <form action="addAccount">
                 <img src="https://www.artamax.com/wp-content/uploads/2020/02/hexa-logo2.jpg" alt="" class="gg"><br>
                  <H2>-Registration Form-</H2>
                    <input type="text" id="username" name="username" placeholder="Enter-Name" value="prajwal" readonly required><br><br>
                    
                    <input type="email" id="email" name="email" placeholder="Enter-Email" required><br><br>
                    
             
                    
                     <input type="text" id="username" name="amount" placeholder="Enter-Amount" required><br><br>
                    
                    <input type="text" id="email" name="Address" placeholder="Enter-Address" required><br><br>
                    
                    <button type="submit">submit</button>
                  </form>
            
            </div>
        

 
    </div>


    </body>

    </html>

    