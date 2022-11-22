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
        <title>JSP Page</title>
    </head>
    
    <script>
        
        var subTotal = 0;
        var price0 = 2;
    
        function testButton0 (form){ 
            //alert (form.menu0.checked);
            if(form.menu0.checked === true && subTotal >= 0){
                subTotal = subTotal + price0;
                alert(subTotal);
            }else{
                subTotal = subTotal - price0;
                alert(subTotal);
            }
        }
        function testButton1 (form){ alert (form.menu1.checked);}
        function testButton2 (form){ alert (form.menu2.checked);}
        function testButton3 (form){ alert (form.menu3.checked);}
        function testButton4 (form){ alert (form.menu4.checked);}
        function testButton5 (form){ alert (form.menu5.checked);}
        function testButton6 (form){ alert (form.menu6.checked);}
        function testButton7 (form){ alert (form.menu7.checked);}
        function testButton8 (form){ alert (form.menu8.checked);}
        function testButton9 (form){ alert (form.menu9.checked);}
        function testButton10 (form){ alert (form.menu10.checked);}
        function testButton11 (form){ alert (form.menu11.checked);}
        function testButton12 (form){ alert (form.menu12.checked);}
        function testButton13 (form){ alert (form.menu13.checked);}
        function testButton14 (form){ alert (form.menu14.checked);}
        function testButton15 (form){ alert (form.menu15.checked);}
        function testButton16 (form){ alert (form.menu16.checked);}
        function testButton17 (form){ alert (form.menu17.checked);}
        function testButton18 (form){ alert (form.menu18.checked);}
        function testButton19 (form){ alert (form.menu19.checked);}
        function testButton20 (form){ alert (form.menu20.checked);}
        function testButton21 (form){ alert (form.menu21.checked);}
        function testButton22 (form){ alert (form.menu22.checked);}
        function testButton23 (form){ alert (form.menu23.checked);}
        function testButton24 (form){ alert (form.menu24.checked);}
        function testButton25 (form){ alert (form.menu25.checked);}
        function testButton26 (form){ alert (form.menu26.checked);}
    
    </script>
    
    <body>
        <h1>Welcome to the Bill Calculator Application</h1>
        
                                <%-- Initial reservations are shown in table format --%>
				<p> <% BillCalculator b = new BillCalculator();%> </p>
                                <form name="test">
                                    Please select your Menu:<br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton0(this.form)">
                                    <input type="checkbox" id="menu0" name="menu0" value="0">
                                    <label for="menu0"><%out.print(b.ShowSelectionMenu(0));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton1(this.form)">
                                    <input type="checkbox" id="menu1" name="menu1">
                                    <label for="menu1"><%out.print(b.ShowSelectionMenu(1));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton2(this.form)">
                                    <input type="checkbox" id="menu2" name="menu2">
                                    <label for="menu2"><%out.print(b.ShowSelectionMenu(2));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton3(this.form)">
                                    <input type="checkbox" id="menu3" name="menu3">
                                    <label for="menu3"><%out.print(b.ShowSelectionMenu(3));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton4(this.form)">
                                    <input type="checkbox" id="menu4" name="menu4">
                                    <label for="menu4"><%out.print(b.ShowSelectionMenu(4));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton5(this.form)">
                                    <input type="checkbox" id="menu5" name="menu5">
                                    <label for="menu5"><%out.print(b.ShowSelectionMenu(5));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton6(this.form)">
                                    <input type="checkbox" id="menu6" name="menu6">
                                    <label for="menu6"><%out.print(b.ShowSelectionMenu(6));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton7(this.form)">
                                    <input type="checkbox" id="menu7" name="menu7">
                                    <label for="menu7"><%out.print(b.ShowSelectionMenu(7));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton8(this.form)">
                                    <input type="checkbox" id="menu8" name="menu8">
                                    <label for="menu8"><%out.print(b.ShowSelectionMenu(8));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton9(this.form)">
                                    <input type="checkbox" id="menu9" name="menu9">
                                    <label for="menu9"><%out.print(b.ShowSelectionMenu(9));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton10(this.form)">
                                    <input type="checkbox" id="menu10" name="menu10">
                                    <label for="menu10"><%out.print(b.ShowSelectionMenu(10));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton11(this.form)">
                                    <input type="checkbox" id="menu11" name="menu11">
                                    <label for="menu11"><%out.print(b.ShowSelectionMenu(11));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton12(this.form)">
                                    <input type="checkbox" id="menu12" name="menu12">
                                    <label for="menu12"><%out.print(b.ShowSelectionMenu(12));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton13(this.form)">
                                    <input type="checkbox" id="menu13" name="menu13">
                                    <label for="menu13"><%out.print(b.ShowSelectionMenu(13));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton14(this.form)">
                                    <input type="checkbox" id="menu14" name="menu14">
                                    <label for="menu14"><%out.print(b.ShowSelectionMenu(14));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton15(this.form)">
                                    <input type="checkbox" id="menu15" name="menu15">
                                    <label for="menu15"><%out.print(b.ShowSelectionMenu(15));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton16(this.form)">
                                    <input type="checkbox" id="menu16" name="menu16">
                                    <label for="menu16"><%out.print(b.ShowSelectionMenu(16));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton17(this.form)">
                                    <input type="checkbox" id="menu17" name="menu17">
                                    <label for="menu17"><%out.print(b.ShowSelectionMenu(17));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton18(this.form)">
                                    <input type="checkbox" id="menu18" name="menu18">
                                    <label for="menu18"><%out.print(b.ShowSelectionMenu(18));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton19(this.form)">
                                    <input type="checkbox" id="menu19" name="menu19">
                                    <label for="menu19"><%out.print(b.ShowSelectionMenu(19));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton20(this.form)">
                                    <input type="checkbox" id="menu20" name="menu20">
                                    <label for="menu20"><%out.print(b.ShowSelectionMenu(20));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton21(this.form)">
                                    <input type="checkbox" id="menu21" name="menu21">
                                    <label for="menu21"><%out.print(b.ShowSelectionMenu(21));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton22(this.form)">
                                    <input type="checkbox" id="menu22" name="menu22">
                                    <label for="menu22"><%out.print(b.ShowSelectionMenu(22));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton23(this.form)">
                                    <input type="checkbox" id="menu23" name="menu23">
                                    <label for="menu23"><%out.print(b.ShowSelectionMenu(23));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton24(this.form)">
                                    <input type="checkbox" id="menu24" name="menu24">
                                    <label for="menu24"><%out.print(b.ShowSelectionMenu(24));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton25(this.form)">
                                    <input type="checkbox" id="menu25" name="menu25">
                                    <label for="menu25"><%out.print(b.ShowSelectionMenu(25));%></label><br>
                                    <INPUT TYPE="button" NAME="button" Value="Calculate" onClick="testButton26(this.form)">
                                    <input type="checkbox" id="menu26" name="menu26">
                                    <label for="menu26"><%out.print(b.ShowSelectionMenu(26));%></label><br>
                                    <input type="submit" value="Submit">
                                </form>
    </body>
</html>
