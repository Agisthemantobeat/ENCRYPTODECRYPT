<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
    </head>
<body id="Body1" runat="server">
    <h1 id="H1"  runat="server">
    <title>Team Members</title>    
    <link rel="stylesheet" href="StyleSheet.css"/>
    <link rel="stylesheet" href="teamcss.css" />
</h1>
    <form id="form1" runat="server">
        
           <div class="header">
            <div class="inner-header">
                <div class="logo-container">
                    <h1>pgy</h1><span>encryptodecrypt</span>
                    
                </div>
                <ul class="navigation">
            <a href="index.aspx"><li>Home</li></a>
            <a href="About.aspx"><li>About</li></a>
            <a href="Contact Us.aspx"><li>Contact Us</li></a>
            <a href="Team.aspx"><li>Team</li></a>
            
        
                <%--</ul>--%>
            </div>
            
        </div>>
        </form>
<br>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="apoorv.jpeg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>APOORV GUPTA</h2>
        <p class="title">CEO & Founder</p>
        <p>Database Designer and <br />Administrator &<br /> middle ware developer.</p>
        <p>apoorv.gupta@hcl.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="astitva.jpeg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>ASTITVA DUBEY</h2>
        <p class="title">CEO & Founder</p>
        <p>Database Designer and <br />Administrator &<br /> middle ware developer.</p>
        <p>astitva.dubey@hcl.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="IMG_20200301_120535.jpeg"  alt="John" style="width:100%">
      <div class="container">
        <h2>ANKUSH</h2>
        <p class="title">Designer</p>
        <p>Frontend developer & Designer</p>
        <p>ankush.ank@hcl.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
 <div class="column">
    <div class="card">
      <img src="saksham.jpeg"  alt="John" style="width:100%">
      <div class="container">
        <h2>SAKSHAM KATIYAR</h2>
        <p class="title">Technical Writer</p>
        <p>Frontend designer, <br />Technical Writer & Communication Lead</p>
        <p>saksham.katiyar@hcl.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>
</body>
</html>
