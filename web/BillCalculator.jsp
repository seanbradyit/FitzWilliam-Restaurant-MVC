<%-- 
    Document   : BillCalculator
    Created on : 30-Oct-2022, 01:04:15
    Author     : seanb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="BillCalculator.BillCalculator"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Bill Calculations</title>
    </head>
    
    
    
    <body>
        <h1>Welcome to the Bill Calculator Application</h1>
        
                                <%-- Initial reservations are shown in table format --%>
				<p> <% BillCalculator b = new BillCalculator();%> </p>
                                <form name="test">
                                    Please select your Menu:<br>
                                        1- Mark your selection<br>
                                            2- Choose 'Calculate'<br>
                                                3- Choose 'Show Total'<br>

                                        If you need to redo order or make a new one then select 'NEW'<br>
                                    <p>Beverages</p>
                                    <input type="checkbox" id="menu0" name="menu0" value="0">
                                    <label for="menu0"><%out.print(b.ShowSelectionMenu(0) + " -- ");%><%out.print("Price: " + b.SourcePrices(0));%></label><br>
                                    <input type="checkbox" id="menu1" name="menu1">
                                    <label for="menu1"><%out.print(b.ShowSelectionMenu(1) + " -- ");%><%out.print("Price: " + b.SourcePrices(1));%></label><br>
                                    <input type="checkbox" id="menu2" name="menu2">
                                    <label for="menu2"><%out.print(b.ShowSelectionMenu(2) + " -- ");%><%out.print("Price: " + b.SourcePrices(2));%></label><br>
                                    <input type="checkbox" id="menu3" name="menu3">
                                    <label for="menu3"><%out.print(b.ShowSelectionMenu(3) + " -- ");%><%out.print("Price: " + b.SourcePrices(3));%></label><br>
                                    <input type="checkbox" id="menu4" name="menu4">
                                    <label for="menu4"><%out.print(b.ShowSelectionMenu(4) + " -- ");%><%out.print("Price: " + b.SourcePrices(4));%></label><br>
                                    <input type="checkbox" id="menu5" name="menu5">
                                    <label for="menu5"><%out.print(b.ShowSelectionMenu(5) + " -- ");%><%out.print("Price: " + b.SourcePrices(5));%></label><br>
                                    <p>Appetizer</p>
                                    <input type="checkbox" id="menu6" name="menu6">
                                    <label for="menu6"><%out.print(b.ShowSelectionMenu(6) + " -- ");%><%out.print("Price: " + b.SourcePrices(6));%></label><br>
                                    <input type="checkbox" id="menu7" name="menu7">
                                    <label for="menu7"><%out.print(b.ShowSelectionMenu(7) + " -- ");%><%out.print("Price: " + b.SourcePrices(7));%></label><br>
                                    <input type="checkbox" id="menu8" name="menu8">
                                    <label for="menu8"><%out.print(b.ShowSelectionMenu(8) + " -- ");%><%out.print("Price: " + b.SourcePrices(8));%></label><br>
                                    <input type="checkbox" id="menu9" name="menu9">
                                    <label for="menu9"><%out.print(b.ShowSelectionMenu(9) + " -- ");%><%out.print("Price: " + b.SourcePrices(9));%></label><br>
                                    <input type="checkbox" id="menu10" name="menu10">
                                    <label for="menu10"><%out.print(b.ShowSelectionMenu(10) + " -- ");%><%out.print("Price: " + b.SourcePrices(10));%></label><br>
                                    <input type="checkbox" id="menu11" name="menu11">
                                    <label for="menu11"><%out.print(b.ShowSelectionMenu(11) + " -- ");%><%out.print("Price: " + b.SourcePrices(11));%></label><br>
                                    <input type="checkbox" id="menu12" name="menu12">
                                    <label for="menu12"><%out.print(b.ShowSelectionMenu(12) + " -- ");%><%out.print("Price: " + b.SourcePrices(12));%></label><br>
                                    <p>Main Course</p>
                                    <input type="checkbox" id="menu13" name="menu13">
                                    <label for="menu13"><%out.print(b.ShowSelectionMenu(13) + " -- ");%><%out.print("Price: " + b.SourcePrices(13));%></label><br>
                                    <input type="checkbox" id="menu14" name="menu14">
                                    <label for="menu14"><%out.print(b.ShowSelectionMenu(14) + " -- ");%><%out.print("Price: " + b.SourcePrices(14));%></label><br>
                                    <input type="checkbox" id="menu15" name="menu15">
                                    <label for="menu15"><%out.print(b.ShowSelectionMenu(15) + " -- ");%><%out.print("Price: " + b.SourcePrices(15));%></label><br>
                                    <input type="checkbox" id="menu16" name="menu16">
                                    <label for="menu16"><%out.print(b.ShowSelectionMenu(16) + " -- ");%><%out.print("Price: " + b.SourcePrices(16));%></label><br>
                                    <input type="checkbox" id="menu17" name="menu17">
                                    <label for="menu17"><%out.print(b.ShowSelectionMenu(17) + " -- ");%><%out.print("Price: " + b.SourcePrices(17));%></label><br>
                                    <input type="checkbox" id="menu18" name="menu18">
                                    <label for="menu18"><%out.print(b.ShowSelectionMenu(18) + " -- ");%><%out.print("Price: " + b.SourcePrices(18));%></label><br>
                                    <input type="checkbox" id="menu19" name="menu19">
                                    <label for="menu19"><%out.print(b.ShowSelectionMenu(19) + " -- ");%><%out.print("Price: " + b.SourcePrices(19));%></label><br>
                                    <input type="checkbox" id="menu20" name="menu20">
                                    <label for="menu20"><%out.print(b.ShowSelectionMenu(20) + " -- ");%><%out.print("Price: " + b.SourcePrices(20));%></label><br>
                                    <input type="checkbox" id="menu21" name="menu21">
                                    <label for="menu21"><%out.print(b.ShowSelectionMenu(21) + " -- ");%><%out.print("Price: " + b.SourcePrices(21));%></label><br>
                                    <p>Dessert</p>
                                    <input type="checkbox" id="menu22" name="menu22">
                                    <label for="menu22"><%out.print(b.ShowSelectionMenu(22) + " -- ");%><%out.print("Price: " + b.SourcePrices(22));%></label><br>
                                    <input type="checkbox" id="menu23" name="menu23">
                                    <label for="menu23"><%out.print(b.ShowSelectionMenu(23) + " -- ");%><%out.print("Price: " + b.SourcePrices(23));%></label><br>
                                    <input type="checkbox" id="menu24" name="menu24">
                                    <label for="menu24"><%out.print(b.ShowSelectionMenu(24) + " -- ");%><%out.print("Price: " + b.SourcePrices(24));%></label><br>
                                    <input type="checkbox" id="menu25" name="menu25">
                                    <label for="menu25"><%out.print(b.ShowSelectionMenu(25) + " -- ");%><%out.print("Price: " + b.SourcePrices(25));%></label><br>
                                    <input type="checkbox" id="menu26" name="menu26">
                                    <label for="menu26"><%out.print(b.ShowSelectionMenu(26) + " -- ");%><%out.print("Price: " + b.SourcePrices(26));%></label><br>
                                    <p> </p>
                                    <p> </p>
                                    <p> </p>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton0(this.form)">
                                    <INPUT TYPE="button" NAME="button" Value="Show Total" onClick="showCost(this.form)">
                                    <INPUT TYPE="button" NAME="button" Value="NEW" onClick="unchecked()">
                                </form>
                                    
                                    <script>

                                        var check = false;
                                        var subTotal = 0;
                                        var Total = 0;
                                        var FixedTotal = 0;
                                        var rate = 0.05;
                                        var price0 = 2, price1 = 2, price2 = 1, price3 = 3, price4 = 2,
                                                price5 = 2, price6 = 6, price7 = 7, price8 = 9, price9 = 9,
                                                    price10 = 11, price11 = 13, price12 = 7, price13 = 16, price14 = 14,
                                                        price15 = 14, price16 = 12, price17 = 20, price18 = 21, price19 = 19,
                                                            price20 = 14, price21 = 15, price22 = 6, price23 = 4, price24 = 6, price25 = 5, price26 = 6;

                                        function testButton0 (form){ 
                                                if(check === false){
                                                    if(form.menu0.checked === true){subTotal = subTotal + price0;}
                                                    if(form.menu1.checked === true){subTotal = subTotal + price1;}
                                                    if(form.menu2.checked === true){subTotal = subTotal + price2;}
                                                    if(form.menu3.checked === true){subTotal = subTotal + price3;}
                                                    if(form.menu4.checked === true){subTotal = subTotal + price4;}
                                                    if(form.menu5.checked === true){subTotal = subTotal + price5;}
                                                    if(form.menu6.checked === true){subTotal = subTotal + price6;}
                                                    if(form.menu7.checked === true){subTotal = subTotal + price7;}
                                                    if(form.menu8.checked === true){subTotal = subTotal + price8;}
                                                    if(form.menu9.checked === true){subTotal = subTotal + price9;}
                                                    if(form.menu10.checked === true){subTotal = subTotal + price10;}
                                                    if(form.menu11.checked === true){subTotal = subTotal + price11;}
                                                    if(form.menu12.checked === true){subTotal = subTotal + price12;}
                                                    if(form.menu13.checked === true){subTotal = subTotal + price13;}
                                                    if(form.menu14.checked === true){subTotal = subTotal + price14;}
                                                    if(form.menu15.checked === true){subTotal = subTotal + price15;}
                                                    if(form.menu16.checked === true){subTotal = subTotal + price16;}
                                                    if(form.menu17.checked === true){subTotal = subTotal + price17;}
                                                    if(form.menu18.checked === true){subTotal = subTotal + price18;}
                                                    if(form.menu19.checked === true){subTotal = subTotal + price19;}
                                                    if(form.menu20.checked === true){subTotal = subTotal + price20;}
                                                    if(form.menu21.checked === true){subTotal = subTotal + price21;}
                                                    if(form.menu22.checked === true){subTotal = subTotal + price22;}
                                                    if(form.menu23.checked === true){subTotal = subTotal + price23;}
                                                    if(form.menu24.checked === true){subTotal = subTotal + price24;}
                                                    if(form.menu25.checked === true){subTotal = subTotal + price25;}
                                                    if(form.menu26.checked === true){subTotal = subTotal + price26;}

                                                    checked();
                                                }
                                        }
                                        
                                        function checked(){
                                            check = true;
                                            Total = subTotal+subTotal*rate;
                                            FixedTotal = Total.toFixed(2);
                                        }

                                        function unchecked(){
                                            check = false;
                                            subTotal = 0;
                                        }
                                        
                                        function showCost(form){
                                            alert("Your subTotal is... " + FixedTotal + " Press the NEW button for another order");
                                        }

                                //      
                                //        function testButton1 (form){
                                //            if(form.menu1.checked === true){subTotal = subTotal + price1;alert(subTotal);}else{
                                //                if(subTotal < 0){subTotal = 0;}else{subTotal = subTotal - price1;}alert(subTotal);}
                                //        }

                                    </script>
                                    
    </body>
</html>
