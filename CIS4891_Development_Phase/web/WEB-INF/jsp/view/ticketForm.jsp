<template:basic htmlTitle="Create a Ticket" bodyTitle="Create a Ticket">
<!DOCTYPE html>
<html>
    <head>
        <title>DRS Warehousing</title>
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
            
            <b>Item Name</b><br/>
            <input type="text" name="subject" placeholder="DDR4 16 GB RAM" required><br/><br/>
            <b>Item Description</b><br/>
            <input type="text" name="description" placeholder="A component for building computers" required><br/><br/>
            <b>Price</b><br/>
            <input type="number" name="price" placeholder="$100" min="0" required><br/><br/>
            <b>Quantity</b><br/>
            <input type="number" name="quantity" placeholder="1000" min="0" required><br/><br/>
            <b>Image</b>
            <input type="file" name="file1" multiple accept='image/*' required><br/><br/>
            <input type="submit" value="Submit"/>
        </form>
        </div>
    </body>
</html>

</template:basic>
