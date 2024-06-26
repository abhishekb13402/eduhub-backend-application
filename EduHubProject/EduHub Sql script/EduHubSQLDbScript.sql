USE [EduHubDBProject]
GO
/****** Object:  Table [dbo].[AssessmentQuestions]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssessmentQuestions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[QuestionText] [nvarchar](max) NOT NULL,
	[CorrectAns] [nvarchar](max) NOT NULL,
	[OptA] [nvarchar](max) NOT NULL,
	[OptB] [nvarchar](max) NOT NULL,
	[OptC] [nvarchar](max) NOT NULL,
	[OptD] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AssessmentQuestions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Certificates]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificates](
	[CertificateId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CertiCreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Certificates] PRIMARY KEY CLUSTERED 
(
	[CertificateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courses]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_courses] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrollments]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollments](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
 CONSTRAINT [PK_Enrollments] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[ModuleName] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ResultId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CourseId] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[ResultId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29-04-2024 10:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](12) NOT NULL,
	[UserPassword] [nvarchar](12) NOT NULL,
	[FullName] [nvarchar](20) NOT NULL,
	[UserEmail] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[courses] ON 

INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (25, N'Password Generator', N'Password Generator and Copy Password with JavaScript')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (26, N'Captcha Generator', N'Captcha Generator')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (27, N'HEX Color Generator', N'HEX Color Generator')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (28, N'Scrollwheel of Mouse', N'Scrollwheel of Mouse')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (29, N'Random Quote Generator', N'Random Quote Generator')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (30, N'Rock Paper Scissors Game', N'Rock Paper Scissors Game')
INSERT [dbo].[courses] ([CourseId], [CourseName], [Description]) VALUES (31, N'Vowel Checker Application', N'Vowel Checker Application')
SET IDENTITY_INSERT [dbo].[courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (16, 25, N'HTML FILE', N'<html>
    <head>
        <title>Password Generator</title>
        <link href="style.css" rel="stylesheet">
    </head>
<body>
    <div class="container">
        <h1>Password Generator</h1>
        <input type="text" id="password" placeholder="Password will appear here.">
        <button id="copyButton"class="button">Copy Password</button>
        <button id="generateButton"class="button">Generate Password</button>
        
    </div>
    <script src="script.js"></script>
</body>
</html>')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (17, 25, N'CSS FILE', N'*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}
body{
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background-color: #b2b2b2;
    font-family: monospace;
}
.container{
    position: relative;
    width: 450px;
    text-align: center;
}
.container h1{
    font-size: 2.5rem;
    color: #333;
}
.container input{
    position: relative;
    width: 100%;
    height: 60px;
    border: none;
    margin: 15px 0px 20px;
    background-color: #f5f5f5;
    padding: 0 40px;
    font-size: 1.5rem;
    letter-spacing: 2px;
    border-radius: 8px;
    color: #333;
}
.container .button{
    display: inline-block;
    position: relative;
    cursor: pointer;
    background-color: coral;
    color: #333;
    /* margin-top: 15px;     */
    font-size: 2rem;
    padding: 10px 15px;
    border-radius: 8px;
}
.container .button:hover{
    background-color: chocolate;
    color: black;
}
#copyButton{
    margin-bottom: 5px;
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (18, 25, N'JS FILE', N'const generateButton=document.getElementById("generateButton");
const copyButton=document.getElementById("copyButton");
const show=document.getElementById("show");
const passwordInput=document.getElementById("password");

generateButton.onclick=function generatePassword(){
    const character = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*_";
    const pwdLength =16;
    let password="";

    for(let i=0;i<pwdLength;i++){
        let genratePwd = Math.floor(Math.random() * character.length)
        password += character.substring(genratePwd,genratePwd+1);
    }
    passwordInput.value=password;
}

copyButton.onclick=function copyPwd(){
    const passwordValue = passwordInput.value;
    if(passwordValue.trim()==="")
    {
        alert("Password is empty. Generate a password first.");
    }else{
        navigator.clipboard.writeText(passwordValue).then(function(){
        alert("Your new Password is: "+passwordValue);
        passwordInput.value="";
        });
    }
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (20, 25, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Password%20Generator')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (21, 26, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Captcha Generator</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
        <div class="container">
            <h2 class="status" id="_status"></h2>
            <div class="generator-box">
                <input type="text" readonly id="_generator" class="generator">
            </div>
            <div class="your-chance">
                <input type="text" class="client-text" id="_client-text" placeholder="Enter the Captcha!!">
            </div>
            <button class="submit" id="_submit" type="button">Submit</button>
            <button class="refresh" id="_refresh" type="button">Refresh</button>
        </div>
    <script src="script.js"></script>
</body>
</html>')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (22, 26, N'CSS FILE', N'*{
   box-sizing: border-box;
   margin: 0;
   padding: 0;
   font-family: sans-serif; 
}
body{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(to right,#d4fc79,#96e6a1);
    animation: colorChange 10s infinite alternate;
}
@keyframes colorChange {
    0%{
        background: #e0c3fc;
    }
    100%{
        background: #c3e8fc;
    }   
}
.container{
    display: flex;
    flex-direction: column;
    align-items: center;
    background: rgba(255, 255, 255, 0.7);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    width: 50%;
}
h2{
    font-size: 2.5rem;
    text-align: center;
    color: #4a90e2;
    text-shadow: 2px 2px 4px #ccc;
    margin-bottom: 20px;
}
div{
    margin: 1rem;
}
button{
    margin: 0.5rem;
    font-size: 1.5rem;
    padding: 0.8rem;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s, transform 0.2s;
}
button:hover{
    transform: scale(1.1);
}
.generator{
   font-size: 2rem;
   padding: 1rem;
   background: #3a3a3a; 
   color: #fff;
   text-align: center;
   border-radius: 5px;
   width: 250px;
   box-shadow: 2px 2px 4px #444;
}
.client-text{
    text-align: center;
    width: 100%;
    padding: 0.8rem;
    font-size: 1.5rem;
    border: none;
    border-radius: 5px;
    background: #96e6a1;
}
.submit{
    background-color: #5e5e5e;
    color: whitesmoke;
}
.submit:hover{
    background: #828282;
}
.refresh{
    background-color: #5e5e5e;
    color: whitesmoke;
}
.refresh:hover{
    background-color: #e0e0e0;

}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (23, 26, N'JAVASCRIPT FILE', N'const display = document.getElementById("_status");
const body = document.body;
const submit = document.getElementById("_submit");
const refresh = document.getElementById("_refresh");

const char = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
let captcha = "";

body.onload = function generateCaptcha(){
    const captchaLength = 6;
    for(let i = 0; i<captchaLength; i++){
        const randomIndex = Math.floor(Math.random() * char.length);
        captcha += char.substring(randomIndex,randomIndex + 1);
    }

    document.getElementById("_generator").value = captcha;
    display.innerText = "Captcha Generator"
}

submit.onclick = function chekckInput(){
    const input = document.getElementById("_client-text").value;

    if(input === ""){
        display.innerText = "Please Enter the text Shown below👇";
    }else if(input === captcha){
        display.innerText = "Matched😎";
    }else{
        display.innerText = "Not-Matched😖";
    }
}

refresh.onclick = function refreshCaptcha(){

    let newCaptcha = "";
    for(let i = 0; i < captcha.length;i++){
        const randomChar = char[Math.floor(Math.random() * char.length)]
        newCaptcha += randomChar;
    }
    captcha = newCaptcha;
    document.getElementById("_generator").value = captcha;
    display.innerText = "Captcha Generator"
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (24, 26, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Captcha%20Generator')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (25, 27, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HEX Color Generator</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
 
    <div class="container">
        <h1>HEX Color Generator</h1>
        <div class="color-box" id="colorBox">
            <span id="colorText">#FFFFFF</span>
        </div>
        <button id="generteBtn">Generate Color</button>
    </div>

 <script src="script.js"></script>   
</body>
</html>')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (26, 27, N'CSS FILE', N'body{
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f2f2f2;
    font-family: Arial, Helvetica, sans-serif;
    height: 100vh;
}
.container{
    text-align: center;
    background-color: #fff;
    padding: 30px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
    border-radius: 10px;
}
.color-box{
    width: 300px;
    height: 150px;
    background-color: #fff7f7;
    border-radius: 8px;
    margin: 20px auto;
    font-weight: bolder;
    display: flex;
    justify-content: center;
    align-items: center;
    box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.1);
}
#colorText{
    font-size: 24px;
     color: #333;     
}
button{
    background-color: #333;
    color: #ffffff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
button:hover{
    background-color: #555;
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (27, 27, N'JAVASCRIPT FILE', N'const generateBtn = document.getElementById("generteBtn");
generateBtn.addEventListener("click",updateColor)

function getRandomColor(){

    const letters = "0123456789ABCDEF";
    let color = "#";

    for(let i = 0; i < 6; i++){
        color += letters[Math.floor(Math.random() * 16)];
        console.log(color);
    }
    return color;
}

function updateColor(){
    const colorBox = document.getElementById("colorBox");
    const colorText = document.getElementById("colorText");

    const randomColor = getRandomColor();

    colorBox.style.backgroundColor = randomColor;
    colorText.textContent = randomColor;
}

')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (28, 27, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/HEX%20Color%20Generator')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (29, 28, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scrollwheel of Mouse</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
    <div class="container">
        <h1>Use Scrollwheel of Mouse and to Zoom-In-Out</h1>
    </div>

    <script src="script.js"></script>
</body>
</html>')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (30, 28, N'CSS FILE', N'
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 90vh;
    width: 100%;
    position: fixed;
    font-family: Arial, Helvetica, sans-serif;
    background-color: rgb(112, 125, 242);
    text-align: center;
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (31, 28, N'JAVASCRIPT FILE', N'const zoomScreen = document.querySelector(".container");

let zoom = 1;
let zoomSpeed = 0.1;

document.addEventListener("wheel",(e)=>{

    if(e.deltaY > 0){

        zoomScreen.style.transform = `scale(${(zoom += zoomSpeed)})`;

    }else{

        zoomScreen.style.transform = `scale(${(zoom -= zoomSpeed)})`;

    }

});')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (32, 28, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Mouse%20Wheel')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (33, 29, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Random Quote Generator</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Random Quote Generator</h1>
        <div class="quote-container">
            <p class="quote" id="quote"></p>
            <button id="new-quote-btn">New Quote</button>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>
')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (34, 29, N'CSS FILE', N'body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}
.container {
    width: 80%;
    margin: 50px auto;
    text-align: center;
}
h1 {    color: #333;}
.quote-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.quote {
    font-size: 20px;
    color: #333;
}
#new-quote-btn {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 20px;
}
#new-quote-btn:hover {
    background-color: #0056b3;
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (35, 29, N'JS FILE', N'const quoteElement = document.getElementById(''quote'');
const newQuoteBtn = document.getElementById(''new-quote-btn'');

newQuoteBtn.addEventListener(''click'', getQuote);

function getQuote() {
    fetch(''https://api.quotable.io/random'')
        .then(response => response.json())
        .then(data => {
            quoteElement.textContent = `"${data.content}" - ${data.author}`;
        })
        .catch(error => {
            console.error(''Error fetching quote:'', error);
            quoteElement.textContent = ''Failed to fetch quote. Please try again later.'';
        });
}

// Initial fetch
getQuote();
')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (36, 29, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Random%20Quote%20Generator')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (37, 30, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Rock Paper Scissors Game</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <h1>Rock Paper Scissors</h1>
  <div class="choices">
    <button onclick="play(''rock'')">Rock</button>
    <button onclick="play(''paper'')">Paper</button>
    <button onclick="play(''scissors'')">Scissors</button>
  </div>
  <div id="result"></div>
  <script src="script.js"></script>
</body>
</html>
')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (38, 30, N'CSS FILE', N'body {
    font-family: Arial, sans-serif;
    text-align: center;
  }
  
  h1 {
    margin-top: 50px;
  }
  
  .choices {
    display: flex;
    justify-content: center;
    margin-top: 20px;
  }
  
  .choices button {
    margin: 0 10px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
  }
  
  #result {
    margin-top: 20px;
    font-size: 24px;
  }
  ')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (39, 30, N'JS FILE', N'function play(playerChoice) {
    const choices = [''rock'', ''paper'', ''scissors''];
    const computerChoice = choices[Math.floor(Math.random() * 3)];
  
    const result = document.getElementById(''result'');
    let message;
  
    if (playerChoice === computerChoice) {
      message = ''It\''s a tie!'';
    } else if (
      (playerChoice === ''rock'' && computerChoice === ''scissors'') ||
      (playerChoice === ''paper'' && computerChoice === ''rock'') ||
      (playerChoice === ''scissors'' && computerChoice === ''paper'')
    ) {
      message = ''You win!'';
    } else {
      message = ''Computer wins!'';
    }
  
    result.textContent = `You chose ${playerChoice}, computer chose ${computerChoice}. ${message}`;
  }
  ')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (40, 30, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Rock%20Paper%20Scissors%20Game')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (41, 31, N'HTML FILE', N'<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vowel Checker Application</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="container">
        <h1>Vowel Checker</h1>
        <textarea id="inputText" placeholder="Enter your text here">
        </textarea>
        <button onclick="checkVowels()">Count Vowels</button>
        <p id="result">Result</p>
    </div>
    
    <script src="scipt.js"></script>
</body>
</html>')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (42, 31, N'CSS FILE', N'/* style.css */

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h1 {
    color: #333;
}

textarea {
    width: 100%;
    height: 100px;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    resize: none;
}

button {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

p#result {
    font-size: 18px;
    color: #333;
    margin-top: 20px;
}
')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (43, 31, N'JS FILE', N'function checkVowels(){

 let text = document.getElementById("inputText").value;
 let vowelCount = 0;

  text = text.toLowerCase();

  for(let i = 0; i < text.length; i++){

    let char = text.charAt(i);
    if (isVowel(char)){
        vowelCount++;
    }
  }

  const result = document.getElementById(''result'');
  result.textContent = "Total Vowels: " + vowelCount;

}


function isVowel(char){
    const vowels = ["a","e","i","o","u"];
    return vowels.includes(char);
}')
INSERT [dbo].[Modules] ([ModuleId], [CourseId], [ModuleName], [Content]) VALUES (44, 31, N'Resource File GitHub Url and Screenshot', N'https://github.com/abhishekb13402/EduHub-frontend/tree/main/src/components/EduHubCourses/Vowel%20Counter')
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (1, N'Abhi', N'12344', N'Abhishek Bhatt', N'abhi@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (2, N'Mayur', N'12344', N'Mayur Jadav', N'mayur@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (4, N'Admin', N'Admin', N'Admin', N'Admin@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (14, N'Aum', N'12344', N'Aum Bhatt', N'aum@gmail.com')
INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (15, N'testenroll', N'testenroll', N'testenroll', N'testenroll')
INSERT [dbo].[Users] ([Id], [UserName], [UserPassword], [FullName], [UserEmail]) VALUES (16, N'wwww', N'qqqqqq', N'qqq', N'qqqq')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[AssessmentQuestions]  WITH CHECK ADD  CONSTRAINT [FK_AssessmentQuestions_courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AssessmentQuestions] CHECK CONSTRAINT [FK_AssessmentQuestions_courses_CourseId]
GO
ALTER TABLE [dbo].[Certificates]  WITH CHECK ADD  CONSTRAINT [FK_Certificates_courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Certificates] CHECK CONSTRAINT [FK_Certificates_courses_CourseId]
GO
ALTER TABLE [dbo].[Certificates]  WITH CHECK ADD  CONSTRAINT [FK_Certificates_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Certificates] CHECK CONSTRAINT [FK_Certificates_Users_UserId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_courses_CourseId]
GO
ALTER TABLE [dbo].[Enrollments]  WITH CHECK ADD  CONSTRAINT [FK_Enrollments_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Enrollments] CHECK CONSTRAINT [FK_Enrollments_Users_UserId]
GO
ALTER TABLE [dbo].[Modules]  WITH CHECK ADD  CONSTRAINT [FK_Modules_courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Modules] CHECK CONSTRAINT [FK_Modules_courses_CourseId]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_courses_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[courses] ([CourseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_courses_CourseId]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Users_UserId]
GO
