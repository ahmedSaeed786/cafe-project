<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <title>E.mail</title>
    <style>
    
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;display=swap");
@import url("https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,500;1,600;1,700&amp;display=swap");
@import url('https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Rajdhani:wght@500;600;700&display=swap');
*{
    padding: 0%;
    margin: auto;
}
body{
    background-color: black;
    /* overflow-y: hidden; */
}

p {
    font-size: 20px;
}

html{
    /* overflow-Y: hidden; */
}
#container{
  
        width: 100%;
    height: auto;
    background-color: black;
    margin-bottom: 20px;
    padding-bottom: 20px;
}

table td{
 font-size:15px !important;
 font-family: 'Poppins', sans-serif !important;
}
p{
        font-size: 20px;
    color: white;
    margin-left: 30px
}
.box1{
    width: 100%;
 
    display: table;
}

.box2{
    width: 100%;
}

.blackdiv{
    display: flex;
}

.blackdiv{
    width: 95%;
  
    border: 5px solid white;
    margin: auto;
    box-sizing: border-box;
    position: relative;
    top: 50px;
    border-radius: 10px;
}

.box1 h1{
    font-family: 'Rajdhani';
    font-size: 30px;
    line-height: 1.2;
    color: #fff;
    font-weight: 600;
    margin: 0 0 28px;
   
 
}

.thank{
    font-family: 'Rajdhani';
    font-size: 60px;
    line-height: 1.2;
    color: #fff;
    font-weight: 600;
    margin: 0 0 28px;
    text-align: center;
}

.heading{
    width: 55%;
    display: flex;
    justify-content: center;
}

h3{
    color: white;
    font-size: 25px;
    text-align: center;
    font-family: 'Poppins', sans-serif;
}

h4{
    color: white;
    font-size: 25px;
   
    font-family: 'Poppins', sans-serif;
    margin-left: 30px;
}

table th{
    color: white;
    font-size: 15px;
    padding: 3em;
    /* border-bottom: 1px solid white; */
    padding-left: 66px;
    padding-top: 0px;
    font-family:  'Poppins', sans-serif;
}

table td{
    color: white;
    padding-left: 5em;
    padding-top: 30px;
    font-size: 13px;
    text-align: center;
    font-family:  'Poppins', sans-serif;
    text-align: inherit;
}

.box1 h2{
    font-family: 'Rajdhani';
    font-size: 30px;
    line-height: 1.2;
     color:#bd0f0f;
    font-weight: 600;
       margin: 0 28px;
       text-transform: capitalize;
}

.box2 h2{
    font-family: 'Rajdhani';
    font-size: 30px;
    line-height: 1.2;
     color:#bd0f0f;
    font-weight: 600;
    margin: 0 0 28px;
    text-transform: capitalize;
}
 
.box2:before {
    content: '';
    position: absolute;
    width: 3px;
    height: 265px;
    background-color: rgb(160, 13, 13);
    top: 77px;
    left: -30px;
}

.box2{
    position: relative;
    font-family: 'Poppins', sans-serif;
    letter-spacing: 3px;
    width: 32%;
}

.box2 table{
    letter-spacing: 1px;
}

table tr{
    border-bottom: 1px solid white;
}

button{
    width: 180px;
    height: 40px;
    border: 1px solid rgb(160, 13, 13);
    background-color: black;
    color: rgb(160, 13, 13);
    font-weight: bold;
    padding: 10px;
    border-radius: 5px;
    position: relative;
    top: 25px;
    left: 220px;
}


button:active{
    transform: translateY(4px);
}

@media only screen and (min-width: 300px) and (max-width: 519px) {
.thank{
    font-size: 32px;
    margin-top: 22px;
}

.heading{
    width: 100%;
}

.heading h3{
    font-size: 14px;
}

.heading h4{
    font-size: 14px;
      color:#bd0f0f;
       margin-left: 30px;
}

.blackdiv{
    width: 100%;
    display: block;
    overflow: scroll;
}

.box1 table{
    width: 100%;
}

.box1 h2{
    font-size: 28px;
    padding-left: 20px;
    padding-top: 20px;
}

.box2{
    width: 100%;
    margin: 0%;
    padding: 0%;
}

#container {
    width: 88%;
    height: auto;
}

.box1 {
    width: 100%;
    box-sizing: border-box;
    padding: 10px;
}

.box2 {
    width: 100%;
    box-sizing: border-box;
    padding: 10px;
}

.box2 h2 {
    width: 100%;
    padding-left: 25PX;
    padding-top: 15PX;
    font-size: 28px;
}
}

@media only screen and (min-width: 768px) and (max-width: 991px) {
    .thank{
    font-size: 44px;
    padding-top: 15px;
}

.heading{
    width: 100%;
}

.heading h3{
    font-size: 18px;
}

.heading h4{
    font-size: 18px;
}

.blackdiv{
    width: 100%;
    height: auto;
    display: block;
    overflow: scroll;
}

.blackdiv .box1{
    width: 80%;
    margin-top: 25px;
}

.blackdiv .box2{
    width: 80%;
    margin-top: 25px;
}

}

@media only screen and (min-width: 992px) and (max-width: 1199px) {
    .thank{
        font-size: 53px;
        padding-top: 15px;
    }

    .heading{
        width: 90%;
    }

    .heading h3{
        font-size: 22px;
    }

    .heading h4{
        font-size: 22px;
          color:#bd0f0f;
          margin-left: 30px;
    }

    .blackdiv{
        width: 100%;
        height: auto;
        overflow: scroll;
        display: block;
    }

    .blackdiv .box1{
        width: 100%;
        padding: 25px;
    }

    .box1 h2{
        font-size: 38px;
    }

    .box2 h2{
        font-size: 38px;
    }

    .blackdiv .box2{
        width: 100%;
        padding: 25px;
    }
    
}

@media only screen and (min-width: 1200px) and (max-width: 1440px) {

    .thank{
        font-size: 62px;
        margin-top: 15px;
    }
    
    .heading{
        width: 85%;
    }

    .heading h3{
        font-size: 20px;
    }

    .heading h4{
        font-size: 20px;
        color:#bd0f0f;
    }

    .blackdiv{
        width: 100%;
        height: auto;
        overflow: scroll;
        display: flex;
    }

    .box1 h2{
        margin-top: -50px;
        color:#bd0f0f;
    }
    .blackdiv .box1 table {
        margin-left: 12px;
        margin-top: 20px;
    }
    .ok{
        margin-top:200px;
    }
    }
    </style>
</head>
<body>
    <div id="container">
        
        <h1 class="thank">BOOKING Expired</h1>
        <div class="heading">
            <h3><span  style="color:#bd0f0f;">{{ $c->game_name ?? 0 }}(id:{{ $c->id ?? 0 }})</span> Booking Expire At</h3>
            <h4 style="color:#bd0f0f;">{{ $i->expiry_time ?? 0 }}</h4>
        </div>


        <div class="blackdiv">

            <div class="box1">
                <h2 style="text-">Dear {{ $c->name ?? 0}}</h2>  
               
                
                    
                <p>
                    We hope you had a great time during your recent booking with us. We wanted to remind you that your booking for the dates <span style="color:#bd0f0f;"> 
                    {{$c->expiry_time ?? 0}}</span> has now expired.
                </p>
                <p>Don't worry, though! You can still book with us again. We would love to have you back and we are currently offering [Promotion/Discount] for all our customers.</p>
                <p>To rebook or make a new booking please  <a href="https://marksman.pk/booking" style="text-decoration:none;color:red;">click me</a>.</h5>
                <p>Thank you for choosing our booking site and we hope to see you soon.</h5>
                <h4 style="color:#bd0f0f;">Regards by,</h4> 
                <h2>Marksman Arena</h2>

          
    </div>
    <div class="ok">
        
    </div>
    <style>
        @media only screen and (min-width: 1200px) and (max-width: 1365px) {}

        @media only screen and (min-width: 992px) and (max-width: 1199px) {}

        @media only screen and (min-width: 768px) and (max-width: 991px) {}

        @media only screen and (min-width: 300px) and (max-width: 519px) {} 
    </style>
</body>
</html>