<%-- 
    Document   : searchtrain
    Created on : Oct 11, 2023, 10:45:32?PM
    Author     : Samsa
--%>
<%@page import="dbPack.DbManager" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IRCTC</title>
    <link rel="stylesheet" href="css/searchtrain.css">
    <link rel="stylesheet" href="css/header.css"
</head>
<body>
    
    <!-- Header section start -->
    <jsp:include page="header.jsp"/>
    <!-- Header section end -->
    
    <div class="searchbox">
        <form action="controller.jsp" method="post">
            <input type="hidden" name="page" value="searchtrain">
            <input type="text" name="fromstation" id="fromstation" class="searchinputbox" placeholder="FROM">
            <img src="/assets/arrowicon.png" alt="">
            <input type="text" name="tostation" id="tostation" class="searchinputbox" placeholder="TO">
            <input type="date" name="date" id="date" class="searchinputbox">
            <select name="class" id="class" class="searchinputbox">
                <option selected>All Classes</option>
                <option value="firstac">AC First Class (1A)</option>
                <option value="firstac">AC Second Class (2A)</option>
                <option value="firstac">AC Third Class (3A)</option>
                <option value="firstac">Slepper (SL)</option>
                <option value="firstac">Second Setting (2S)</option>
            </select>
            <select name="quota" id="quota" class="searchinputbox">
                <option selected>GENERAL</option>
                <option selected>LADIES</option>
                <option selected>DUTY PASS</option>
                <option selected>TATKAL</option>
                <option selected>PREMIUM TATKAL</option>
            </select>
            <button class="modifysearch" type="submit">Modify Search</button>
            <div class="serchcheckbox">
            <input type="checkbox" name="date" id="date" ><span>Flexible With Date</span>
            <input type="checkbox" name="berth" id="berth"><span>Train With Available Berth</span>
            <input type="checkbox" name="person" id="person"><span>Person With Disability Concession</span>
            <input type="checkbox" name="pass" id="pass"><span>Railway Pass Concession</span>
            </div>
        </form>
    </div>

    <div class="mainbox">
        <div class="filterbox"></div>
        <div class="trainbox">
            <div class="leftbtn">
            <button class="durationbtn">Short By | Duration</button>
            <button class="showbtn">Show Available Train</button>
            <button class="previousbtn">Previous Day</button>
            <button class="nextbtn">Next Day</button>
            </div>

                <%
                  DbManager dm=new DbManager();
                  ResultSet rs=dm.select("select * from  trainschedule");
                  while(rs.next())
                  {
                %>
            <div class="showtrain">
                <div class="trainnamebox">
                    <div class="trainname">
                        <h2><%=rs.getString("trainname")%> <span><%=rs.getString("trainno")%></span></h2>
                    </div>
                    <div class="week">
                        <h4>RUNS ON: M T W T F S S</h4>
                    </div>
                    <div class="schedule">
                        <h2>Train Schedule</h2>
                    </div>

                </div>

                <div class="arrivaldepature">
                    <div class="trainarrival">
                        <h3><%=rs.getString("arrialtime")%> <span>| <%=rs.getString("fromstation")%> </span></h3>
                    </div>

                    <div class="timming">
                        <p>01:10</p>
                    </div>

                    <div class="depature">
                        <h3><%=rs.getString("depaturetime")%> <span>| <%=rs.getString("tostation")%></span></h3>
                    </div>
                </div>

                <div class="trainseat">
                    <div class="secondsetting">
                        <h4>Second Setting (2S)</h4>
                        <p>Available <%=rs.getString("secondsetting")%></p>
                        <p>Price :- <%=rs.getString("secondsettingfare")%></p>
                    </div>
                    
                    <div class="slepper">
                        <h4>Slepper (SL)</h4>
                        <p>Available <%=rs.getString("slepper")%></p>
                        <p>Price :- <%=rs.getString("slepperfare")%></p>
                    </div>
                    <div class="thirdac">
                        <h4>Third Ac (3 Tire)</h4>
                        <p>Available <%=rs.getString("thirdac")%></p>
                        <p>Price :- <%=rs.getString("thirdacfare")%></p>
                    </div>
                    <div class="secondac">
                        <h4>Second AC (2 Tire)</h4>
                        <p>Available <%=rs.getString("secondac")%></p>
                        <p>Price :- <%=rs.getString("secondacfare")%></p>
                    </div>
                    <div class="firstac">
                        <h4>First AC (1 Tire)</h4>
                        <p>Available <%=rs.getString("firstac")%></p>
                        <p>Price :- <%=rs.getString("firstacfare")%></p>
                    </div>

                </div>

                    <button class="bookbtn" type="submit">BOOK NOW</button>
            </div>
            <%}%>
        </div>
    </div>
</body>
</html>
