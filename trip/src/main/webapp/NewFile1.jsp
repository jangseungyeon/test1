<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
  margin: 0;
}
html, body{
  z-index: 0;
  position: absolute;
  margin: 0;
  width: 100%;
  height: 100vh;
  background: #1E1C41;
  display: grid;
  grid-template-columns: 1fr;
  align-items: center;
  justify-items: center;
  overflow: hidden;
}
.content{
  grid-column: 3/span 8;
  position: relative;
  z-index: 0;   /*fix!*/
/*   min-width: 1fr; */
  min-width: 60%;
  margin: 0 10%;
  height: 60vh;
/*   max-height: 500px; */
  background: white;
  
  /* grid layout*/
  display: grid;
  grid-template-columns: 5fr 3fr;
  grid-template-rows: 3fr 1fr;
}
h1,h2{
  text-transform: uppercase;
  font-family: 'PT Sans', sans-serif;
  letter-spacing: .05em;
}
h1{
  font-size: 6vw;
  -webkit-text-stroke: 2px black;
}
h2{
  font-size: 2vw;
  color: #FC2B78;
}
p{
  color: #A6A6A6;
  font-style: italic;
  font-size: .8em;
  line-height: 1.5em;
}

.intro{
  padding: 5em 3em 2em 3em;
  background: white;
  grid-column: 0;
}
button{
  display: block;
  margin-top: 20px;
  border-radius: 50%;
  width: 40px;
  height: 40px;
  border: none;
  background-color: #F42B71;
  transition: all .3s ease;
}
button:hover{
  cursor: pointer;
  transform: scaleX(1.05) scaleY(1.05);
  box-shadow: 0 2px 3px 1px rgba(0,0,0,.1);
}
button:focus{
  outline: none;
}
button img:first-child{
  width: 80%;
  filter: invert(100%);
}
.image{
  background: url('https://images.unsplash.com/photo-1523329748863-dae9a2ede2e5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80');
  background-position: center;
  background-size: cover;
  grid-row: span 2;
}
nav{
  background-color: #F5F5F7;
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  padding-right: 30%;
}
nav a{
  font-size: .8em;
  font-weight: 700;
  letter-spacing: .05em;
  color:  #707070;
  text-decoration: none;
  text-transform: uppercase;
  font-family: 'PT Sans', sans-serif;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all .3s ease;
}
nav a:hover{
  
}
.circle{
  position: absolute;
  border-radius: 50%;
}
.orbitPathCentered{
  display: grid;
  align-items: center;
  justify-items: center;
}
/******************************************************/

/******************************************************/
/* circle04 */
.circle04{
  right: 90%;
  top: 60%;
  width: 5vw;
  padding-top: 5vw;
  transform-origin: 40% 50%;
  background: linear-gradient(#FDE213, #EF9004);  /*light yellow to dark yellow*/
  animation: rotateBob 12s linear infinite;
}
@keyframes rotate{
  0%{
    transform: rotateZ(0deg);
  }
  100%{
    transform: rotateZ(360deg);
  }
}
@keyframes rotatePath{
  0%{
    transform: rotateZ(0deg);
  }
  100%{
    transform: rotateZ(360deg);
  }
}
@keyframes rotatePathInside{
  0%{
    transform: translateX(-50%) translateY(-50%) rotateZ(0deg);
  }
  100%{
    transform: translateX(-50%) translateY(-50%) rotateZ(360deg);
  }
}
@keyframes rotateBob{
  0%{
    transform: translateY(0) rotateZ(0deg);
  }
  50%{
    transform: translateY(-3vh) rotateZ(180deg);
  }
  100%{
    transform: translateY(0) rotateZ(360deg);
  }
}
@media only screen and (max-width: 600px){
  .content{
    margin: 0;
    grid-template-columns: 1fr;
    grid-template-rows: 5fr 30px 6fr;

    min-height: 80vh;
    max-height: 100vh;
  }
  .content .intro{
    grid-row: 3;
  }
  .content .image{
    grid-row: 1; 
    background-position: 0% 20%;
  }
  .content nav{
    grid-row: 2;
  }
  body{
    grid-auto-rows: 1fr;
    align-items: start;
  }
}
</style>


</head>
<body>
<div class="content">
  <div class="intro">
    <h2>Senses Around</h2>
    <h1>Senses</h1>
    <p>
      Senses Around is Taiwanese Mandopop artist Yoga Lin's second Mandarin studio album. It was released 30 October 2009 by HIM International Music. A second edition Senses Around was released on 18 December 2009 with a bonus DVD containing live footage from Lin's Yoga's Trick album release concert in Taipei.
    </p>
    <button><img src="https://cdn.onlinewebfonts.com/svg/img_76971.png" alt=""></button>
  </div>
  <div class="image"></div>
  <nav>
  <a href="#">About</a>
  <a href="#">Work</a>
  <a href="#">Blog</a>
  <a href="#">Contact</a>
</nav>
</div>
<div class="circle circle01">
  <div class="circle orbiting-circle01"></div>
</div>

<div class="circle orbitPathCentered border-blue orbitPath01-border"></div>
<div class="circle orbitPathCentered orbitPath01"></div>

<div class="circle orbitPathCentered border-blue orbitPath02-border"></div>
<div class="circle orbitPathCentered orbitPath02"></div>
<div class="circle circle02"></div>

<div class="circle border-orange circle03"></div>
<div class="circle circle04"></div>
</body>
</html>