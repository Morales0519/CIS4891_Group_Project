<template:basic htmlTitle="Create a Ticket" bodyTitle="Create a Ticket">
<!DOCTYPE html>
<html>
    <head>
        <title>Berry's Bed and Breakfast</title>
        <style>
        * {
        	box-sizing: border-box;
        }
        .box {
        	text-align: center;
        	float: left;
        	width: 70%;
        	padding: 20px;
        }
        .clearfix::after{
        	content: "";
        	clear: both;
        	display: table;
        }
        body{
        	background-color: #f2f2f2;
        	width: 100%;
        }
        div{
        	border-radius: 5px;
        	background-color: #e6e6e6;
        	padding: 20px;
        }
        h2{
        	text-align: center;
        }
        input[type=text], input[type=password]{
        	width: 100%;
        	padding: 15px 20px;
        	margin: 5px 0px;
        	display: inline-block;
        	border: 2px solid #ccc;
        	border-radius: 5px;
        	box-sizing: border-box;
        }
        input[type=submit]{
        	width: 100%;
        	background-color: #990099;
        	color: white;
        	padding: 15px 20px;
        	margin: 5px 0px;
        	border: none;
        	border-radius: 5px;
        	cursor: pointer;
        }
        input[type=submit]:hover{
        	background-color: #800080;
        }
        </style>
    </head>
    <body>
        <h2>Please tell us about your reservation</h2> <br /><br />
        <div>
        <form method="POST" action="tickets" enctype="multipart/form-data">
            <input type="hidden" name="action" value="create"/>
            <b>Reservation Name</b><br/>
            <input type="text" name="reservationName" placeholder="J Jonah Jameson" required><br/><br/>
            <b>Reason for trip</b><br/>
            <input type="text" name="subject" placeholder="Pleasure" required><br/><br/>
            <b>Address</b><br/>
            <input type="text" name="address" placeholder="1600 Pennsylvania Ave" required><br/><br/>
            <b>When will you arrive?</b><br/>
            <input type="text" name="arrivalDate" placeholder="10/15/2019" required><br/><br/>
            <b>When will you depart?</b><br/>
            <input type="text" name="departureDate" placeholder="10/31/2019" required><br/><br/>
            <input type="submit" value="Submit"/>
        </form>
        </div>
    </body>
</html>

</template:basic>
