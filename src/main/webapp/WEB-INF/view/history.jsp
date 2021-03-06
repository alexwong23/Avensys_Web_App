<%@ page import ="java.util.*" %>
<%@ page import ="com.cafe.Bill" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
    <tag:header/>
    <body>
        <tag:navbar/>
        <div class="jumbotron">
            <h1>Bill History</h1>
            <p>We kept a record of all your previous bills.</p>
        </div>

        <div class="container">
            <div class="row justify-content-md-center">
              <table class="table">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Datetime</th>
                    <th scope="col">Total($)</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody>
                    <%
                        List<Bill> allBills = (List<Bill>) request.getAttribute("allBills");
                        int counter = 1;
                        for(Bill b: allBills) {
                            out.println("<tr>");
                            out.println("<th scope=\"row\">" + counter + "</th>");
                            out.println("<td>some datetime</td>");
                            out.println("<td>$" + b.getTotal() + "</td>");
                            if(b.getIsPaid()) {
                                out.println("<td><a class=\"btn btn-secondary\" href=\"/cafe/history/" + counter + "\" role=\"button\">View Order</a></td>");
                            } else {
                                out.println("<td><a class=\"btn btn-success\" href=\"/cafe/bill\" role=\"button\">Pay now</a></td>");
                            }
                            out.println("</tr>");
                            counter++;
                        }
                    %>
                </tbody>
              </table>
            </div>
        </div>

        <br>

        <tag:footer/>
        <tag:script/>
    </body>
</html>
