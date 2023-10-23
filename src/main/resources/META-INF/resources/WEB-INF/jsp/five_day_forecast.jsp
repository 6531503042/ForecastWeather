<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${city}'s Five Day Forecast</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
    crossorigin="anonymous">
</head>
<body>

<header style="background-color: #15ffaa; text-align: center;">
    <h1>${city}'s Five Day Weather Forecast <i class="bi bi-cloud-sun"></i></h1>
    <a href="/" class="btn btn-link">Return to Weather Search</a>
</header>

<div class="container mt-4">
    <table class="table table-hover table-sm">
        <tbody>
            <tr>
                <td>
                    <button class="btn btn-info btn-lg" style="width: 100%;" value="${days[0]}" onclick="showDay(0)">
                        ${days[0]} <i class="bi bi-sun" style="font-size: 20px;"></i>
                        <p class="text-center">Today</p>
                    </button>
                </td>
                <td>
                    <button class="btn btn-info btn-lg" style="width: 100%;" value="${days[1]}" onclick="showDay(1)">
                        ${days[1]} <i class="bi bi-cloud-sun" style="font-size: 20px;"></i>
                        <p class="text-center">Tomorrow</p>
                    </button>
                </td>
                <td>
                    <button class="btn btn-info btn-lg" style="width: 100%;" value="${days[2]}" onclick="showDay(2)">
                        ${days[2]} <i class="bi bi-calendar" style="font-size: 20px;"></i>
                    </button>
                </td>
                <td>
                    <button class="btn btn-info btn-lg" style="width: 100%;" value="${days[3]}" onclick="showDay(3)">
                        ${days[3]} <i class="bi bi-calendar" style="font-size: 20px;"></i>
                    </button>
                </td>
                <td>
                    <button class="btn btn-info btn-lg" style="width: 100%;" value="${days[4]}" onclick="showDay(4)">
                        ${days[4]} <i class="bi bi-calendar" style="font-size: 20px;"></i>
                    </button>
                </td>
            </tr>
        </tbody>
    </table>
</div>

<div class="container mt-4">
    <table class="table table-striped table-sm">
        <thead>
            <tr style="background-color: #000000; color: #ffffff;">
                <td id="current_day" style="background-color: #15ffaa; color: #150015">
                    ${days[0]} (Today)
                </td>
                <td>Country</td>
                <td>Country (ISO code)</td>
                <td>Temperature (&#176;C)</td>
                <td>Minimum Temperature (&#176;C)</td>
                <td>Maximum Temperature (&#176;C)</td>
                <td>Weather</td>
                <td>Weather Description</td>
                <td>Pressure</td>
                <td>Humidity</td>
            </tr>
        </thead>

        <!-- Forecast Data -->
        <c:forEach items="${weather_data[0]}" var="list">
            <tr>
                <td>${list.time}</td>
                <td>${list.country}</td>
                <td>${list.countryISOCode}</td>
                <td>${list.temperature}</td>
                <td>${list.tempMin}</td>
                <td>${list.tempMax}</td>
                <td>${list.weather}</td>
                <td>${list.weatherDesc}</td>
                <td>${list.pressure}</td>
                <td>${list.humidity}</td>
            </tr>
        </c:forEach>
    </table>
</div>

<script src="/js/five-day-forecast.js"></script>
</body>
</html>
