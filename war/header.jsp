<div id="navigation">
  <ul>
  <li><a href="#">Home</a></li>
  <li><a href="#">Women</a></li>
  <li style="float:right"><a href="#loginModal" data-toggle="modal">Login</a></li>
  <li style="float:right"><a href="#">My account</a></li>
  </ul>
</div>

<div align="right">
  <img src="https://d30y9cdsu7xlg0.cloudfront.net/png/23041-200.png" style="width: 60px; height: 60px; padding: 14px 16px;">
  
  <img src="http://www.fareraccolta.it/wp-content/uploads/2016/07/icona.png" style="width: 60px; height: 60px; padding: 14px 16px;">
</div>
<hr style="color: #F28C1D">
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="text-center"><h3 class="modal-title">Login</h3></div>
				</div>
				<div class="modal-body">
					<form role="form" action="LoginUser" method="post">
						<div class="form-group">
							<label for="mail">Email </label>
							<input type="email" class="form-control" id="email" style="border-radius: 0px;" name="email">
						</div>
						<div class="form-group">
							<label for="pwd">Password </label>
							<input type="password" class="form-control" id="pwd" style="border-radius: 0px;" name="pwd">
						</div>
						<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Sign in</button>
						<p><a href="#signupModal" data-dismiss="modal" data-toggle="modal">New user? Sign Up</a></p>
					</form>
				</div>
				
			</div>
			
		</div>
		
	</div>
	<div id="signupModal" class="modal fade" role="dialog">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="text-center"><h3 class="modal-title">Sign Up</h3></div>
				</div>
				<div class="modal-body">
					<form role="form" action="SignupUser" method="post">
						<div class="form-group">
							<label for="name"> Name </label>
							<input type="text" class="form-control" id="name" style="border-radius: 0px;" name="name" required>
						</div>
						
						<div class="form-group">
							<label for="email">Email </label>
							<input type="email" class="form-control" id="email" style="border-radius: 0px;" name="email" required>
						</div>
						<div class="form-group">
							<label for="pwd">Password </label>
							<input type="password" class="form-control" id="pwd" style="border-radius: 0px;" name="pwd" required>
						</div>
						<div class="form-group">
							<label for="pwd">Confirm Password </label>
							<input type="password" class="form-control" id="confirm" style="border-radius: 0px;" name="confirm" required>
						</div>
						<div class="form-group">
							<label for="pwd">Contact Number </label>
							<input type="text" class="form-control" id="cnum" style="border-radius: 0px;" name="cnum">
						</div>
						<button type="submit" class="btn btn-success btn-block" style="border-radius: 0px;">Sign up</button>
					</form>
				</div>
				
			</div>
			
		</div>
	</div>