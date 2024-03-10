*{
    margin: 0;
    padding: 0;
    font-family: 'Roboto',sans-serif;
}
.container{
    width: 100%;
    height: 100vh;
    background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url(https://tse4.mm.bing.net/th?id=OIP.tMYivTwDc6rW2IQHvERI_gHaEQ&pid=Api&P=0&h=180);
    background-position: center;
    background-size: cover;
    padding-left: 8%;
    padding-right: 8%;
    box-sizing: border-box;

}
.navbar{
    height: 12%;
    display: flex;
    align-items: center;

}
.logo{
    width: 50px;
    cursor: pointer;
}
nav{
    flex: 1;
    text-align: right;
}
nav ul li{
    list-style: none;
    display: inline-block;
    margin-left: 60px;
}
nav ul li a{
    text-decoration: none;
    color: #fff;
    font-size: 13px;

}
.row{
    display: flex;
    height: 88%;
    align-items: center;
}
.col{
    flex-basis: 50%;

}
h1{
    color: #fff;
    font-size: 60px;
}
p{
    color: #fff;
    font-size: 11px;
    line-height: 15px;
}
button{
    width: 180px;
    color: #000;
    font-size: 12px;
    padding: 12px 0;
    background: #fff;
    border: 0;
    border-radius: 20px;
    outline: none;
    margin-top: 30px;
}
.card{
    width: 200px;
    height: 230px;
    display: inline-block;
    border-radius: 10px;
    padding: 15px 25px;
    box-sizing: border-box;
    cursor: pointer;
    margin: 10px 15px;
   
    background-position: center;
    background-size: cover;
    transition: transform 0.5s;
}
.button {
  display: inline-block;
  padding: 5px 20px;
  background-color: #007bff;
  color: #fff;
  text-decoration: none;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.button:hover {
  background-color: #0056b3;
}
.button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  text-decoration: none;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.button:hover {
  background-color: #0056b3;
}

.card1{
    background-image: url(https://tse4.mm.bing.net/th?id=OIP.AyHtt42_4ntcz-OtEV6_wAHaEK&pid=Api&P=0&h=180);

}
.card2{
    background-image: url(https://tse2.mm.bing.net/th?id=OIP.cLu4mkrC20u1S_Lk4xs1mQHaEK&pid=Api&P=0&h=180);

}
.card3{
    background-image: url(https://tse2.mm.bing.net/th?id=OIP.oHDdJMVCLHT45ABYIQYdpgHaCm&pid=Api&P=0&h=180);

}
.card4{
    background-image:url(https://tse3.mm.bing.net/th?id=OIP.wDO3hbzVRodTVxeRZlvoXgHaEo&pid=Api&P=0&h=180);
}
.card:hover{
    transform: translateY(-10px);

}
h5{
    color: #fff;
    text-shadow: 0 0 5px #999;
}
.card p{
    text-shadow: 0 0 15px #000 ;
    font-size: 8px;
}
.card {
    position: relative;
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 20px;
}

.button {
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
}

