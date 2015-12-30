
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/main.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home for Gaurav</title>
</head>
<body>

	<!-- Header -->

	<header class="primary-header container group">

		<h1 class="logo">
			Gaurav's <br> Webpage
		</h1>

		<h3 class="tagline">August 24&ndash;26th &mdash; Chicago, IL</h3>

		<nav class="nav primary-nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/offers">Show
						Current Offers</a></li>
				<li><a href="${pageContext.request.contextPath}/addnewoffer">Add
						New Offers</a></li>
				<li><a href="register.html">Register</a></li>
			</ul>
		</nav>

	</header>

	<!-- Hero -->

	<section class="hero container">

		<h2>
			Welcome from
			<c:out value="${welcomename}" />
		</h2>

		<p>under construction..............</p>

		<a class="btn btn-alt" href="register.html">Register Now</a>

	</section>


   <!-- Teasers -->

    <section class="row">
      <div class="grid">

        <!-- Speakers -->

        <!-- <section class="teaser col-1-3">
          <h5>Speakers</h5>
          <a href="speakers.html">
            <img src="assets/images/home/speakers.jpg" alt="Professional Speaker">
            <h3>World-Class Speakers</h3>
          </a>
          <p>Joining us from all around the world are over twenty fantastic speakers, here to share their stories.</p>
        </section>

        Schedule

       <section class="teaser col-1-3">
          <h5>Schedule</h5>
          <a href="schedule.html">
            <img src="assets/images/home/schedule.jpg" alt="Conference Attendees">
            <h3>Three Inspiring Days</h3>
          </a>
          <p>Enjoy three inspiring and action-packed days of talks, gatherings, and all-around good times.</p>
        </section>

        Venue

       <section class="teaser col-1-3">
          <h5>Venue</h5>
          <a href="venue.html">
            <img src="assets/images/home/venue.jpg" alt="The Chicago Theatre">
            <h3>The Chicago Theatre</h3>
          </a>
          <p>Within the heart of downtown Chicago, The Chicago Theatre will provide a beautiful conference venue.</p>
        </section>
 -->
      </div>
    </section>


	<!-- Footer -->

	<footer class="primary-footer container group">

		<small>&copy; Gaurav's webpage</small>

		<nav class="nav">
			<ul>
				<li><a href="${pageContext.request.contextPath}/">Home</a></li>
				<li><a href="${pageContext.request.contextPath}/offers">Show
						Current Offers</a></li>
				<li><a href="${pageContext.request.contextPath}/addnewoffer">Add
						New Offers</a></li>
				<li><a href="register.html">Register</a></li>
			</ul>
		</nav>

	</footer>
</body>
</html>
