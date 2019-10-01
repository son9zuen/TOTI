<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- contact section -->
<section class="contact-section">
	<!-- section background -->
	<div class="bg-container-static"></div>
	<!-- end section background -->

	<!-- half overlay -->
	<div class="half-overlay right"></div>
	<!-- end half overlay -->

	<!-- content -->
	<div
		class="content col-md-10 col-md-offset-1 col-sm-12 col-xs-12 no-pad centering-y col-sm-rlt">
		<!-- details -->
		<div class="col-md-4 col-sm-12">
			<!-- office -->
			<div class="details">
				<h5>office</h5>
				<p>
					Pure Pixels <br />India
				</p>
			</div>
			<!-- end office -->

			<!-- phone -->
			<div class="details">
				<h5>phone</h5>
				<p>
					+123 4567 890<br />+123 4567 891
				</p>
			</div>
			<!-- end phone -->

			<!-- email -->
			<div class="details">
				<h5>email</h5>
				<p>
					support@yourdoain.com<br />info@yourdoain.com
				</p>
			</div>
			<!-- end email -->

			<!-- social media -->
			<div class="details">
				<h5>stay connected</h5>

				<!-- social media container -->
				<div class="social-media-container">
					<a class="social-media" href="#"><i class="fa fa-facebook"></i></a>
					<a class="social-media" href="#"><i class="fa fa-twitter"></i></a>
					<a class="social-media" href="#"><i class="fa fa-behance"></i></a>
				</div>
				<!-- end social media container -->
			</div>
			<!-- end social media -->
		</div>
		<!-- end details -->

		<!-- contact form container -->
		<div class="contact-form-container col-md-8 col-sm-12 col-xs-12">
			<h5>DROP US A LINE</h5>
			<form class="contact-form" action="contact.php" method="post"
				enctype="multipart/form-data">
				<!-- left side -->
				<div class="col-md-6 col-sm-12 no-pad">
					<div class="input-container">
						<input type="text" id="name" name="name" /> <label for="name">name</label>

						<div class="input-border-bottom"></div>
					</div>
				</div>
				<!-- end left side -->

				<!-- right side -->
				<div class="col-md-6 col-sm-12 no-pad">
					<div class="input-container">
						<input type="email" id="email" name="email" /> <label for="email">email</label>

						<div class="input-border-bottom"></div>
					</div>
				</div>
				<!-- end right side -->

				<!-- full width -->
				<div class="col-xs-12 text-center no-pad">
					<div class="input-container no-mrg">
						<textarea id="message" name="message"></textarea>
						<label for="message">message</label>

						<div class="input-border-bottom"></div>
					</div>

					<!-- notification container -->
					<div class="col-xs-12 notif-container no-pad">
						<div class="form-notif"></div>
					</div>
					<!-- end notification container -->

					<!-- button container -->
					<div class="col-xs-12 no-pad text-left mrg-top-xs">
						<button type="submit" class="button button-green button-small">send</button>
					</div>
					<!-- end button container -->
				</div>
				<!-- end full width -->
			</form>
		</div>
		<!-- end contact form container -->
	</div>
	<!-- end content -->
</section>
<!-- end contact section --> 

 