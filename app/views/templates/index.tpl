{include file='inc/header.tpl'}
 </head>
 <body class="nav-md">
 	<div class="container body">
 		<div class="main_container">
 			<div class="col-md-3 left_col menu_fixed">
 				<div class="left_col scroll-view">
 					<div class="navbar nav_title">
 						<a href="{$root_link}" class="site_title"><i class="fa fa-heart"></i> <span>BanPim</span></a>
 					</div>

 					<div class="clearfix"></div>
 					<div class="profile">
 						<div class="profile_pic">
 							<img src="{$assets_link}img/admin.png" alt="..." class="img-circle profile_img">
 						</div>
 						<div class="profile_info">
 							<span>Welcome,</span>
 							<h2>{$session_username}</h2>
 						</div>
 					</div>
 					<br />

 					<!-- sidebar menu -->
          {include file='inc/sideBar.tpl'}
 					<!-- /sidebar menu -->
 				</div>
 			</div>

 			<!-- top navigation -->
 			<div class="top_nav">
 				<div class="nav_menu">
 					<nav>
 						<div class="nav toggle">
 							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
 						</div>

 						<ul class="nav navbar-nav navbar-right">
 							<li class="">
 								<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
 									<img src="{$assets_link}img/admin.png" alt="">{$session_username}
 									<span class=" fa fa-angle-down"></span>
 								</a>
 								<ul class="dropdown-menu dropdown-usermenu pull-right">
 									<!-- <li><a href="javascript:;"> Profile</a></li>
 									<li>
 										<a href="javascript:;">
 											<span class="badge bg-red pull-right">50%</span>
 											<span>Settings</span>
 										</a>
 									</li>
 									<li><a href="javascript:;">Help</a></li> -->
 									<li><a href="javascript:;" data-toggle="modal" data-target="#change_pass">Change password</a></li>
 									<li><a href="{$root_link}auth/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
 								</ul>
 							</li>

 							<li role="presentation" class="dropdown">
 							</li>
 						</ul>
 					</nav>
 				</div>
 			</div>
 			<!-- /top navigation -->

 			<!-- page content -->
 			<div class="right_col" role="main">
 				<div class="">
 					<div class="page-title">
 						<div class="title_left d-flex gap-3" >
 							<h3 style="display:flex; gap:1rem">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" width="30" height="30"><path fill="#f7cc6d" d="M23.3 12.2s-1.3-.6-1.7 1.1.8 2.7 1.9 2.8" class="colorf7cc6d svgShape"></path><path fill="#f4bc5f" d="M38.4 12.2s1.3-.6 1.7 1.1-.5 2.7-1.7 2.8" class="colorf4bc5f svgShape"></path><path fill="#63affa" d="m48.7 36.8-2.2-6.7c-.7-2.2-2.6-3.9-5-4.3l-1-.2-5.5-.8-3.5-.6h-1.2l-3.5.6-5.5.9-1 .2c-2.3.4-4.2 2-5 4.3l-2.2 6.7c-.9 2.8 1.2 5.7 4.1 5.7H44.5c3-.1 5.1-3 4.2-5.8z" class="color63affa svgShape"></path><path fill="#529ffb" d="m48.7 36.8-2.2-6.7c-.7-2.2-2.6-3.9-5-4.3l-1-.2c-2.6-.4-5 1.6-5 4.3v.4c0 4.3-3.5 7.8-7.8 7.8h-12c-1.6 0-2.5 1.9-1.4 3.1.8.8 1.9 1.3 3.1 1.3H44.7c2.8 0 4.9-2.9 4-5.7z" class="color529ffb svgShape"></path><path fill="#82c8fb" d="m44.8 38.1-2.2-6.7c-.2-.7.2-1.4.8-1.6.7-.2 1.4.2 1.6.8l2.2 6.7c.2.7-.2 1.4-.8 1.6-.6.2-1.4-.1-1.6-.8z" class="color82c8fb svgShape"></path><path fill="#f4bc5f" d="M35 23c0 .6.1 1.2.2 1.8v.2c-.6 2-8.5 1.9-8.5-.2.1-.6.2-1.2.2-1.8v-.8c0-.8 0-1.6-.1-2.5 0-.4-.1-.8-.2-1.3 2.9.2 5.7.2 8.6 0-.1.4-.1.8-.2 1.3-.1.9-.1 1.8-.1 2.7.1.3.1.5.1.6z" class="colorf4bc5f svgShape"></path><path fill="#f9d78d" d="M35.2 25.1c-.3 1-4.3 13.4-4.3 13.4S26.7 26 26.7 24.9c.1-.6.2-1.2.2-1.8v-.8l8.3 2.8z" class="colorf9d78d svgShape"></path><path fill="#626681" d="M26.7 24.8C27 26.7 31 38.5 31 38.5s4-12.8 4.3-13.7l-1.3.3h-6.1l-1.2-.3z" class="color626681 svgShape"></path><path fill="#f8ecdc" d="M31.3 26.3h-.8l-1.5 12h3.9z" class="colorf8ecdc svgShape"></path><path fill="#faf2e7" d="m28.2 25.3 1.8 1.8c.5.5 1.2.5 1.7 0l1.8-1.8h-5.3z" class="colorfaf2e7 svgShape"></path><path fill="#f9d78d" d="M36.3 20.8c-.9 1.3-3 2.4-4.2 3-.7.3-1.5.3-2.2 0-1.3-.6-3.3-1.7-4.3-3.1-1.6-2.3-2.6-5.5-2.6-8.2 0-.4 0-.7.1-1.1.1-1.1.4-2.2.8-3.1 1.3-2.9 4-4.9 7.1-4.9.8 0 1.6.1 2.3.4 3 1 5.3 4.1 5.6 7.7.3 3-.8 6.7-2.6 9.3z" class="colorf9d78d svgShape"></path><path fill="#f7cc6d" d="M36.3 20.8c-.9 1.3-3 2.4-4.2 3-.7.3-1.5.3-2.2 0-1.3-.6-3.3-1.7-4.3-3.1-.5-.7.1-1.7.9-1.7h1.4c3.1 0 5.6-2.5 5.6-5.6V8.3c0-2.1 2.6-2.9 3.8-1.3.1.1.2.3.3.4.1.1.2.2.2.4.4.7.7 1.6.9 2.4.1.2.1.4.1.7 0 .2.1.5.1.7.3 2.9-.8 6.6-2.6 9.2z" class="colorf7cc6d svgShape"></path><path fill="#f4bc5f" d="M31.5 7.2c-.3.2-.7.3-1.1.3h-7.2v4h.5c0-.3 0-.6.1-.8 0-.4.1-.8.4-1.1.5-.6 1.3-.6 2.1-.5.7.1 1.3.3 2 .5 1.8.5 3.5 1.2 5.3.9 1-.2 2-.6 3.1-.5.2 0 .5.1.6.2.3.3.1.8 0 1.3h1.1V7.2h-6.9z" class="colorf4bc5f svgShape"></path><path fill="#626681" d="M29.3 1.3s-4.2 2-10.9.5c0 0 .4 1.7 3.7 3.4 0 0-1.1 1.3-2.7.5 0 0 .3 2.5 2 3.4l5.9-2.5s1.6.8 2-.2c.3-1 0-3.4 0-3.4" class="color626681 svgShape"></path><path fill="#626681" d="M39.6 8.4c-.1-.9-.2-1.9-.5-2.8-.3-.6-.6-1.1-1.1-1.4l-.6-.3-.4-.4C34.4.4 30 .3 26.6 2c-1.9.3-4.7.5-8.2-.3 0 0 .4 1.7 3.7 3.4 0 0-1.1 1.3-2.7.5 0 0 .3 2.5 2 3.4v.2c.2 1 .4 2 .8 3 .3-.1.6-.1.8-.1.1.7.2 1.3.2 2h.4c-.1-1.4-.1-2.7.1-4.1 0-.4.1-.8.4-1.1.5-.6 1.3-.6 2.1-.5.7.1 1.3.3 2 .5 1.8.5 3.5 1.2 5.3.9 1-.2 2-.6 3.1-.5.2 0 .5.1.6.2.3.4-.1 1 0 1.5 0 .2.2.4.3.7.4.7.7 1.5.7 2.3h.4c-.1-1.3.8-2.5 1-3.8.1-.6.1-1.2 0-1.8z" class="color626681 svgShape"></path><path fill="#4d5471" d="M39.6 8.4c-.1-.9-.2-1.9-.5-2.8-.3-.6-.6-1.1-1.1-1.4l-.6-.3-.4-.4c-.3-.3-.5-.6-.8-.8-1.3-1.1-3.2-.2-3.2 1.5 0 1.4-1.2 2.6-2.6 2.6H22c-1.2 0-1.8 1.7-.7 2.3v.2c.2 1 .4 2 .8 3 .3-.1.6-.1.8-.1l.2 2h.4c-.1-1.4-.1-2.7.1-4.1 0-.4.1-.8.4-1.1.5-.6 1.3-.6 2.1-.5.7.1 1.3.3 2 .5 1.8.5 3.5 1.2 5.3.9 1-.2 2-.6 3.1-.5.2 0 .5.1.6.2.3.4-.1 1 0 1.5 0 .2.2.4.3.7.4.7.7 1.5.7 2.3h.4c-.1-1.3.8-2.5 1-3.8.2-.7.2-1.3.1-1.9z" class="color4d5471 svgShape"></path><path fill="#b36523" d="M31.1 2.5c-2.5.3-4.9 1.5-6.6 3.2" class="colorb36523 svgShape"></path><path fill="#6c8a8c" d="M24.5 6.7c-.2 0-.5-.1-.7-.3-.4-.4-.4-1 0-1.4 1.9-1.9 4.5-3.2 7.2-3.5.5-.1 1 .3 1.1.9s-.3 1-.9 1.1c-2.2.2-4.5 1.3-6 2.9-.1.2-.4.3-.7.3z" class="color6c8a8c svgShape"></path><path fill="#f9d78d" d="M33.2 22.3c-.3 0-.6-.1-.8-.4-.3-.4-.2-1.1.2-1.4.6-.5 1.1-.9 1.4-1.3.5-.7.9-1.5 1.3-2.3.2-.5.8-.7 1.3-.5.5.2.7.8.5 1.3-.4 1-.9 1.9-1.5 2.7-.4.6-1.1 1.2-1.9 1.8-.2.1-.4.1-.5.1z" class="colorf9d78d svgShape"></path><path fill="#82c8fb" d="M26.7 24.8c-.8 1.3-1.8 2.5-2.5 3.3.5.5 1.1 1 1.7 1.5-.4 1-.8 1.9-1.2 2.7 1.4 4.3 5.3 8.7 6.3 8.2V38" class="color82c8fb svgShape"></path><path fill="#82c8fb" d="M35.2 24.8c.8 1.3 1.8 2.5 2.5 3.3-.5.5-1.1 1-1.7 1.5.4 1 .8 1.9 1.2 2.7-1.4 4.3-5.3 8.7-6.3 8.3v-2.5" class="color82c8fb svgShape"></path><path fill="#4d5471" d="M26.7 24.8v-1.7l3.9 1.9-1.1 2.3c-.1 0-2-2.4-2.8-2.5zM35.2 24.8v-1.7L31.3 25l1.1 2.3s2-2.4 2.8-2.5z" class="color4d5471 svgShape"></path><path fill="#444b63" d="M5.5 49.1h-.7c-.5 0-.9-.4-.9-.9v-1.4c0-.5.4-.9.9-.9h.8c.5 0 .9.4.9.9v1.4c-.1.5-.5.9-1 .9zm16.2 0h-.8c-.5 0-.9-.4-.9-.9v-1.4c0-.5.4-.9.9-.9h.8c.5 0 .9.4.9.9v1.4c0 .5-.4.9-.9.9z" class="color444b63 svgShape"></path><path fill="#4d5471" d="M22.9 34.2V40c0 .9-.7 1.5-1.5 1.5H5.1c-.9 0-1.5-.7-1.5-1.5v-5.9c0-.9.7-1.5 1.5-1.5h16.3c.7 0 1.3.5 1.5 1.1v.5z" class="color4d5471 svgShape"></path><path fill="#444b63" d="M22.9 34.2v3.5L3.6 36.3s-.7-.6-1-.7l1-.1 13.9-1.8s3.3 0 5.4.1v.4z" class="color444b63 svgShape"></path><path fill="#6c8a8c" d="M23.7 36.3H2.8c-1 0-1.7-.8-1.7-1.7V29c0-1 .8-1.7 1.7-1.7h20.8c1 0 1.7.8 1.7 1.7v5.5c.1 1-.7 1.8-1.6 1.8z" class="color6c8a8c svgShape"></path><path fill="#626681" d="M23.7 27.3h-5.1c-.6 0-1.1.5-1.1 1.1 0 2.6-2.1 4.8-4.8 4.8H2.5c-.8 0-1.4.6-1.4 1.4 0 1 .8 1.7 1.7 1.7h20.8c1 0 1.7-.8 1.7-1.7V29c.1-.9-.7-1.7-1.6-1.7z" class="color626681 svgShape"></path><path fill="#6c8a8c" d="M23.7 47.5H2.8c-1 0-1.7-.8-1.7-1.7v-5.5c0-1 .8-1.7 1.7-1.7h20.8c1 0 1.7.8 1.7 1.7v5.5c.1.9-.7 1.7-1.6 1.7z" class="color6c8a8c svgShape"></path><path fill="#626681" d="M23.7 38.5h-4c-.6 0-1 .4-1 1 0 2.5-2 4.5-4.5 4.5H2.8c-.9 0-1.7.8-1.7 1.7 0 1 .8 1.7 1.7 1.7h20.8c1 0 1.7-.8 1.7-1.7v-5.5c.1-.9-.7-1.7-1.6-1.7z" class="color626681 svgShape"></path><path fill="#7e9a9b" d="M10 29.3c0 .7-2.3 1.9-3.6 1.9s-2.3-.6-2.3-1.3c0-.7 1-1.3 2.3-1.3s3.6 0 3.6.7zM10 40.4c0 .7-2.3 1.9-3.6 1.9s-2.2-.6-2.2-1.3c0-.7 1-1.3 2.3-1.3s3.5 0 3.5.7z" class="color7e9a9b svgShape"></path><circle cx="21.1" cy="32" r="1.9" fill="#fc4a32" class="colorfc4a32 svgShape"></circle><path fill="#e23e2d" d="M22 30.3v.5c0 .9-.8 1.7-1.7 1.7h-1c.3.9 1.2 1.5 2.3 1.2.6-.2 1.1-.7 1.3-1.3.2-.9-.2-1.7-.9-2.1z" class="colore23e2d svgShape"></path><circle cx="15.7" cy="32" r="1.9" fill="#f7cc6d" class="colorf7cc6d svgShape"></circle><path fill="#f4bc5f" d="M16.6 30.3v.5c0 .9-.8 1.7-1.7 1.7h-1c.3.9 1.2 1.5 2.3 1.2.6-.2 1.1-.7 1.3-1.3.3-.9-.2-1.7-.9-2.1z" class="colorf4bc5f svgShape"></path><circle cx="21.1" cy="43" r="1.9" fill="#fc4a32" class="colorfc4a32 svgShape"></circle><path fill="#e23e2d" d="M22 41.4v.5c0 .9-.8 1.7-1.7 1.7h-1c.3.9 1.2 1.5 2.3 1.2.6-.2 1.1-.7 1.3-1.3.2-.9-.2-1.7-.9-2.1z" class="colore23e2d svgShape"></path><circle cx="15.7" cy="43" r="1.9" fill="#f7cc6d" class="colorf7cc6d svgShape"></circle><path fill="#f4bc5f" d="M16.6 41.4v.5c0 .9-.8 1.7-1.7 1.7h-1c.3.9 1.2 1.5 2.3 1.2.6-.2 1.1-.7 1.3-1.3.3-.9-.2-1.7-.9-2.1z" class="colorf4bc5f svgShape"></path></svg> Admin Dashboard</h3>
 						</div>	
 						</div>
 					</div>
 					<div class="clearfix"></div>
 					<div class="row">
 						<div class="col-md-12 col-sm-12 col-xs-12">
 							<div class="x_panel">
 								<div class="x_title">
 									<h2>Product Management</h2>
 									<div class="clearfix"></div>
 								</div>
 								<div class="x_content">
 								</div><!-- /.modal-dialog -->
 						
                <div class="col-lg-3 col-xs-6">
                  <div class="small-box" style="background-color:#B22222; color:#fff">
                    <div class="inner">
                      <h3>{$product_count}</h3>
                      <p>Number of Products</p>
                    </div>
                    <div class="icon">
                        <i class="">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="80" height="80"><path fill="#ffa133" d="M58.99,34.62A2.156,2.156,0,0,1,56.88,37H37.12a2.156,2.156,0,0,1-2.11-2.38l1.74-19.64A2.134,2.134,0,0,1,38.86,13H55.14a2.134,2.134,0,0,1,2.11,1.98Z" class="colorffa133 svgShape"></path><line x1="19" x2="13" y1="27" y2="27" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><rect width="22" height="10" x="5" y="23" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" transform="rotate(-180 16 28)" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M51,24h0a3,3,0,0,0-3-3H46a3,3,0,0,0-3,3h0a3,3,0,0,0,3,3h2a3,3,0,0,1,3,3h0a3,3,0,0,1-3,3H46a3,3,0,0,1-3-3h0" class="colorStroke394d59 svgStroke"></path><rect width="12" height="4" x="41" y="47" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M35,43V57a2,2,0,0,0,2,2H57a2,2,0,0,0,2-2V43" class="colorStroke394d59 svgStroke"></path><rect width="28" height="6" x="33" y="37" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M43,17V9a4,4,0,0,1,4-4h0a4,4,0,0,1,4,4v8" class="colorStroke394d59 svgStroke"></path><line x1="3" x2="3" y1="51" y2="49" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3,45V37a4,4,0,0,1,4-4H25a4,4,0,0,1,4,4V55a4,4,0,0,1-4,4H7a4,4,0,0,1-4-4" class="colorStroke394d59 svgStroke"></path><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20,33V46.268a.814.814,0,0,1-1.415.468L16,43l-2.585,3.736A.814.814,0,0,1,12,46.268V33" class="colorStroke394d59 svgStroke"></path><line x1="19" x2="17" y1="55" y2="55" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><line x1="23" x2="25" y1="55" y2="55" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><rect width="18" height="13" x="7" y="10" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 10V9a4 4 0 0 0-4-4H11A2 2 0 0 0 9 7V8a2 2 0 0 0 2 2h5M16 10V9a4 4 0 0 1 4-4h1a2 2 0 0 1 2 2V8a2 2 0 0 1-2 2z" class="colorStroke394d59 svgStroke"></path><line x1="16" x2="16" y1="23" y2="9" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line></svg>
                        </i>
                    </div>
                    <a href="{$root_link}product/viewall" class="small-box-footer">View Products <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                  <div class="small-box" style="background-color:#d81b60 ; color:#fff">
                    <div class="inner">
                      <h3>{$media_count}</h3>
                      <p>Number of Medias</p>
                    </div>
                    <div class="icon">
                        <i class=""><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="80" height="80"><path fill="#99e1ff" d="M57 25v-2h-6v2h-3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-8a1 1 0 0 0-1-1h-3z" class="color99e1ff svgShape"></path><path fill="#26547c" d="M54 33a3 3 0 1 1 0-6 3 3 0 1 1 0 6z" class="color26547c svgShape"></path><path fill="#ffdc73" d="M43.589 45c-.455 0-.833-.32-.947-.76a10.951 10.951 0 0 0-1.173-2.832c-.225-.382-.185-.863.128-1.176l1.717-1.717-2.828-2.828-1.717 1.717c-.313.313-.794.353-1.176.128a10.937 10.937 0 0 0-2.832-1.173c-.441-.114-.761-.493-.761-.948V33h-4v2.411c0 .455-.32.833-.761.947-1.007.26-1.958.657-2.832 1.173-.382.225-.863.185-1.176-.128l-1.717-1.717-2.828 2.828 1.717 1.717c.313.313.353.794.128 1.176a10.951 10.951 0 0 0-1.173 2.832c-.114.441-.492.761-.947.761H18v4h2.411c.455 0 .833.32.947.76.26 1.007.657 1.958 1.173 2.832.225.382.185.863-.128 1.176l-1.717 1.717 2.828 2.828 1.717-1.717c.313-.313.794-.353 1.176-.128.873.516 1.825.913 2.832 1.173.441.114.761.493.761.948V61h4v-2.411c0-.455.32-.833.761-.947a10.951 10.951 0 0 0 2.832-1.173c.382-.225.863-.185 1.176.128l1.717 1.717 2.828-2.828-1.717-1.717c-.313-.313-.353-.794-.128-1.176.516-.874.913-1.825 1.173-2.832.114-.44.492-.76.947-.76H46v-4h-2.411zM32 54a7 7 0 1 1 0-14 7 7 0 0 1 0 14z" class="colorffdc73 svgShape"></path><path fill="#cccccc" d="M3 26h13v14H3z" class="colorccc svgShape"></path><circle cx="10" cy="16" r="2" fill="#26547c" class="color26547c svgShape"></circle><circle cx="19" cy="14" r="2" fill="#26547c" class="color26547c svgShape"></circle><path fill="#26547c" d="M12 5v4l9-2V3z" class="color26547c svgShape"></path><path fill="#6d6d6d" d="M12 28h2v2h-2zM12 32h2v2h-2zM12 36h2v2h-2zM5 28h2v2H5zM5 32h2v2H5zM5 36h2v2H5z" class="color6d6d6d svgShape"></path><path fill="#ef476f" d="m36.019 8.415.08.895c.186 2.085 2.048 3.69 4.284 3.69h.496a4.45 4.45 0 0 0 3.039-1.179l1.043-.976A4.453 4.453 0 0 1 48 9.667a4.45 4.45 0 0 1 3.039 1.179l1.043.976A4.457 4.457 0 0 0 55.122 13h.496c2.236 0 4.098-1.604 4.284-3.69l.08-.895C60.241 5.5 57.783 3 54.658 3H41.342c-3.125 0-5.583 2.5-5.323 5.415z" class="coloref476f svgShape"></path><path fill="#e8e8e8" d="M56 10a1 1 0 0 1 0-2 1 1 0 0 1 0 2zm-3-2a1 1 0 0 1 0-2 1 1 0 0 1 0 2zM44 7h-2V5h-2v2h-2v2h2v2h2V9h2z" class="colore8e8e8 svgShape"></path><path fill="#ef476f" d="M30 44v6l5-3z" class="coloref476f svgShape"></path><path fill="#3d3d3d" d="M17 49a1 1 0 0 0 1 1l2.39.01a10.486 10.486 0 0 0 1.307 3.051l-1.717 1.717a.999.999 0 0 0 0 1.414l2.828 2.828a.999.999 0 0 0 1.414 0l1.677-1.691c.964.569 2.003 1 3.102 1.259V61a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1l.011-2.39c1.088-.281 2.127-.711 3.051-1.306l1.717 1.717a.999.999 0 0 0 1.414 0l2.828-2.828a.999.999 0 0 0 0-1.414l-1.69-1.678c.568-.964.999-2.003 1.259-3.101H46a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1l-2.39-.01a10.486 10.486 0 0 0-1.307-3.051l1.717-1.717a.999.999 0 0 0 0-1.414l-2.828-2.828a.999.999 0 0 0-1.414 0l-1.677 1.691c-.964-.569-2.003-1-3.102-1.259V33a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1l-.011 2.39c-1.088.281-2.127.711-3.051 1.306l-1.717-1.717a.999.999 0 0 0-1.414 0l-2.828 2.828a.999.999 0 0 0 0 1.414l1.69 1.678A11.182 11.182 0 0 0 20.409 44H18a1 1 0 0 0-1 1v4zm2-3h1.411c.897 0 1.685-.621 1.916-1.51a9.933 9.933 0 0 1 1.065-2.573 1.966 1.966 0 0 0-.282-2.392l-1.01-1.01 1.414-1.414 1.01 1.01c.627.627 1.61.743 2.392.281a9.933 9.933 0 0 1 2.573-1.065c.89-.23 1.511-1.018 1.511-1.916V34h2v1.411c0 .898.621 1.686 1.511 1.916a9.946 9.946 0 0 1 2.572 1.065 1.965 1.965 0 0 0 2.393-.281l1.01-1.01 1.414 1.414-1.01 1.01a1.966 1.966 0 0 0-.282 2.392 9.934 9.934 0 0 1 1.066 2.575A1.992 1.992 0 0 0 43.589 46H45v2h-1.411c-.897 0-1.685.621-1.916 1.51a9.933 9.933 0 0 1-1.065 2.573 1.966 1.966 0 0 0 .282 2.392l1.01 1.01-1.414 1.414-1.01-1.01a1.963 1.963 0 0 0-2.392-.281 9.933 9.933 0 0 1-2.573 1.065c-.89.23-1.511 1.018-1.511 1.916V60h-2v-1.411c0-.898-.621-1.686-1.511-1.916a9.946 9.946 0 0 1-2.572-1.065 1.965 1.965 0 0 0-2.393.281l-1.01 1.01-1.414-1.414 1.01-1.01a1.966 1.966 0 0 0 .282-2.392 9.934 9.934 0 0 1-1.066-2.575A1.992 1.992 0 0 0 20.411 48H19v-2z" class="color3d3d3d svgShape"></path><path fill="#3d3d3d" d="M32 55c4.411 0 8-3.589 8-8s-3.589-8-8-8-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6zM19 11c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3V3a1.002 1.002 0 0 0-1.217-.976l-9 2A.998.998 0 0 0 11 5V13.184A2.966 2.966 0 0 0 10 13c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3V9.802l7-1.556v2.938A2.966 2.966 0 0 0 19 11zm0 4a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm-9 2a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm3-11.198 7-1.556v1.951l-7 1.556V5.802zM62 34v-8c0-1.103-.897-2-2-2h-2v-1a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v1h-2c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2zm-14-8h3a1 1 0 0 0 1-1v-1h4v1a1 1 0 0 0 1 1h3v8H48v-8zM3 41h13a1 1 0 0 0 1-1V26a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1zm1-14h11v12H4V27zm3.36-4.319 1.895.639c.33-.979.729-1.948 1.187-2.878l-1.795-.882a25.51 25.51 0 0 0-1.287 3.121zm3.52 19.727-1.76.952a26.015 26.015 0 0 0 5.2 6.703l1.359-1.466a24.017 24.017 0 0 1-4.799-6.189zm44.16-4.667a23.997 23.997 0 0 1-6.72 10.856l1.359 1.466a25.997 25.997 0 0 0 7.28-11.762l-1.919-.56zM49.597 14.68a24.02 24.02 0 0 1 3.962 5.76l1.795-.881a26.012 26.012 0 0 0-4.29-6.24l-1.467 1.361zM32 7V5c-2.848 0-5.647.458-8.32 1.36l.641 1.895A23.937 23.937 0 0 1 32 7z" class="color3d3d3d svgShape"></path><path fill="#3d3d3d" d="m60.897 9.399.08-.896c.145-1.625-.397-3.199-1.524-4.431C58.248 2.755 56.5 2 54.658 2H41.342c-1.842 0-3.59.755-4.795 2.073-1.127 1.232-1.669 2.805-1.524 4.431l.08.896c.233 2.622 2.502 4.6 5.279 4.6h.496a5.423 5.423 0 0 0 3.724-1.449l1.043-.976c1.232-1.155 3.479-1.155 4.711 0l1.043.976A5.418 5.418 0 0 0 55.122 14h.496c2.777 0 5.046-1.978 5.279-4.601zm-8.131 1.692-1.043-.976c-.998-.934-2.321-1.448-3.723-1.448s-2.725.515-3.723 1.449l-1.043.976a3.474 3.474 0 0 1-2.356.908h-.496c-1.705 0-3.148-1.22-3.287-2.778l-.08-.895c-.094-1.06.264-2.091 1.008-2.903C38.85 4.519 40.06 4 41.342 4h13.316c1.282 0 2.492.519 3.319 1.423.744.812 1.102 1.844 1.008 2.903l-.08.896C58.767 10.78 57.323 12 55.618 12h-.496a3.47 3.47 0 0 1-2.356-.909z" class="color3d3d3d svgShape"></path></svg></i>
                    </div>
                    <a href="{$root_link}media/all" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                  <div class="small-box" style="background-color:#001f3f; color:#fff">
                    <div class="inner">
                      <h3>{$product_views}</h3>
                      <p>Total Product Views</p>
                    </div>
                    <div class="icon">
                        <i class="">
						<svg xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 2630 3439" width="80" height="80"><path fill="#ced3db" d="M1704 2581c44,42 71,102 71,168l0 515c0,75 -53,137 -127,149 -103,17 -207,26 -311,26 -93,0 -186,-7 -278,-21 -75,-11 -129,-74 -129,-150l0 -520c0,-66 27,-125 71,-168 -539,-153 -926,-650 -926,-1228 0,-705 572,-1277 1277,-1277 705,0 1277,572 1277,1277 0,578 -387,1075 -926,1228z" class="colorced3db svgShape"></path><path fill="#ffffff" d="M1628 2506c44,42 71,102 71,168l0 515c0,75 -53,137 -127,149 -103,17 -207,26 -311,26 -93,0 -186,-7 -278,-21 -75,-11 -129,-74 -129,-150l0 -520c0,-66 27,-125 71,-168 -539,-153 -926,-650 -926,-1228 0,-705 572,-1277 1277,-1277 705,0 1277,572 1277,1277 0,578 -387,1075 -926,1228z" class="colorfff svgShape"></path><path fill="#ff7069" d="M1088 2592l378 0c45,0 82,37 82,82l0 515c-93,16 -188,24 -286,24 -87,0 -173,-7 -256,-19l0 -520c0,-45 37,-82 82,-82z" class="colorff7069 svgShape"></path><rect width="542" height="44" x="1006" y="2730" fill="#f7635b" class="colorf7635b svgShape"></rect><path fill="#596366" d="M1391 2397l0 194 -227 0 0 -194c37,4 75,6 114,6 38,0 76,-2 114,-6z" class="color596366 svgShape"></path><path fill="#6c7678" d="M1277 152c622,0 1126,504 1126,1126 0,622 -504,1126 -1126,1126 -622,0 -1126,-504 -1126,-1126 0,-622 504,-1126 1126,-1126zm0 186c519,0 940,421 940,940 0,519 -421,940 -940,940 -519,0 -940,-421 -940,-940 0,-519 421,-940 940,-940z" class="color6c7678 svgShape"></path><path fill="#c6cbd6" d="M1277 306c536,0 971,435 971,971 0,536 -435,971 -971,971 -536,0 -971,-435 -971,-971 0,-536 435,-971 971,-971zm0 52c508,0 919,411 919,919 0,508 -411,919 -919,919 -508,0 -919,-411 -919,-919 0,-508 411,-919 919,-919z" class="colorc6cbd6 svgShape"></path><path fill="#ffffff" d="M1277 340c168,0 326,44 462,122 -117,-54 -248,-84 -385,-84 -510,0 -924,414 -924,924 0,452 324,828 753,908 -473,-47 -843,-447 -843,-932 0,-517 419,-937 937,-937z" class="colorfff svgShape"></path><path fill="#e5e8ed" d="M1739 462c283,161 475,466 475,815 0,517 -419,937 -937,937 -32,0 -63,-2 -94,-5 -429,-80 -753,-456 -753,-908 0,-510 414,-924 924,-924 138,0 268,30 385,84z" class="colore5e8ed svgShape"></path><path fill="#c6cbd6" d="M522 1277c433,-695 1077,-695 1510,0 -433,695 -1077,695 -1510,0z" class="colorc6cbd6 svgShape"></path><path fill="#ffffff" d="M522 1277c433,-637 1077,-637 1510,0 -433,637 -1077,637 -1510,0z" class="colorfff svgShape"></path><circle cx="1277" cy="1277" r="367" fill="#83cf8f" class="color83cf8f svgShape"></circle><circle cx="1277" cy="1277" r="257" fill="#75bd80" class="color75bd80 svgShape"></circle><circle cx="1277" cy="1277" r="134" fill="#6c7678" class="color6c7678 svgShape"></circle><circle cx="1095" cy="1126" r="63" fill="#ffffff" class="colorfff svgShape"></circle><circle cx="1388" cy="1388" r="43" fill="#ffffff" class="colorfff svgShape"></circle><rect width="542" height="44" x="1006" y="2813" fill="#f7635b" class="colorf7635b svgShape"></rect></svg>
						</i>
                    </div>
                   <a href="javascript:void(0)" class="small-box-footer" style="cursor:context-menu;"><br/></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                  <div class="small-box" style="background-color:#001f3f; color:#fff">
                    <div class="inner">
                      <h3>{$downloads_count}</h3>
                      <p>Number of Downloads</p>
                    </div>
                    <div class="icon">
                        <i class="">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="80" height="80"><path fill="#303c42" d="M23.908 15.12l-4.07-13.563C19.5.422 18.265-.25 17.12.092l-5.157 1.547A2 2 0 0 0 10 0C8.897 0 8 .897 8 2H2C.897 2 0 2.897 0 4v15c0 1.103.897 2 2 2h4.422c.394.613 1.07 1 1.83 1 .214 0 .425-.031.628-.092l13.563-4.07A2.17 2.17 0 0 0 24 15.749a2.18 2.18 0 0 0-.092-.628z" class="color303C42 svgShape"></path><path fill="#ffca28" d="M1 19V4c0-.551.449-1 1-1h5.427l-3.87 1.161A2.17 2.17 0 0 0 2 6.253c0 .213.031.424.092.627L6.028 20H2c-.551 0-1-.449-1-1z" class="colorFFCA28 svgShape"></path><path fill="#ffffff" d="M22.156 16.88L8.593 20.95a1.209 1.209 0 0 1-1.474-.794L3.05 6.593a1.191 1.191 0 0 1 .794-1.474l4.995-1.498C9.166 3.857 9.565 4 10 4c.18 0 .35-.031.515-.076l.569.853a.5.5 0 1 0 .832-.554l-.526-.79a2 2 0 0 0 .473-.72l5.543-1.663a1.21 1.21 0 0 1 1.475.794l4.07 13.563a1.191 1.191 0 0 1-.794 1.474z" class="colorFFF svgShape"></path><linearGradient id="a" x1="10.115" x2="23.503" y1="2.344" y2="15.732" gradientUnits="userSpaceOnUse"><stop offset="0" stop-opacity=".1" stop-color="#000000" class="stopColor000000 svgShape"></stop><stop offset="1" stop-opacity="0" stop-color="#000000" class="stopColor000000 svgShape"></stop></linearGradient><path fill="url(#a)" d="M22.156 16.88a1.191 1.191 0 0 0 .794-1.473l-1.192-3.974-8.991-8.991-.904.271a2 2 0 0 1-.473.72l.526.79a.5.5 0 1 1-.832.554l-.569-.853A1.976 1.976 0 0 1 10 4c-.435 0-.834-.143-1.162-.379L22.11 16.894l.045-.013z"></path><circle cx="16.5" cy="18.5" r="5.5" fill="#303c42" class="color303C42 svgShape"></circle><circle cx="16.5" cy="18.5" r="4.5" fill="#1e88e5" class="color1E88E5 svgShape"></circle><path fill="#303c42" d="M18.146 19.146L17 20.293V15.5a.5.5 0 1 0-1 0v4.793l-1.146-1.147a.5.5 0 1 0-.708.708l2 2a.498.498 0 0 0 .708 0l2-2a.5.5 0 1 0-.708-.708z" class="color303C42 svgShape"></path><circle cx="10" cy="2" r="1" fill="#ff6f00" class="colorFF6F00 svgShape"></circle><path d="M10.408 1.092a.985.985 0 0 1 .092.408c0 .551-.449 1-1 1a.985.985 0 0 1-.408-.092A.999.999 0 0 0 10 3c.551 0 1-.449 1-1a.999.999 0 0 0-.592-.908z" opacity=".1" fill="#000000" class="color000 svgShape"></path><linearGradient id="b" x1="-.894" x2="23.676" y1="5.475" y2="16.932" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#ffffff" stop-opacity=".2" class="stopColorFFF svgShape"></stop><stop offset="1" stop-color="#ffffff" stop-opacity="0" class="stopColorFFF svgShape"></stop></linearGradient><path fill="url(#b)" d="M23.908 15.12l-4.07-13.563C19.5.422 18.265-.25 17.12.092l-5.157 1.547A2 2 0 0 0 10 0C8.897 0 8 .897 8 2H2C.897 2 0 2.897 0 4v15c0 1.103.897 2 2 2h4.422c.394.613 1.07 1 1.83 1 .214 0 .425-.031.628-.092l2.765-.83A5.503 5.503 0 0 0 16.5 24a5.506 5.506 0 0 0 5.474-6.02l.47-.141A2.17 2.17 0 0 0 24 15.747a2.18 2.18 0 0 0-.092-.627z"></path></svg>
						</i>
                    </div>
                    <a href="javascript:void(0)" class="small-box-footer" style="cursor:context-menu;"><br/></i></a>
                  </div>
                </div>
 							</div>
 						</div>
 					</div>
 				</div>
 			</div>
 		</div>
 		<!-- /page content -->

 		<!-- footer content -->
 		<footer>
 			<div class="pull-right">
 				by:OFCS team
 			</div>
 			<div class="clearfix"></div>
 		</footer>
 		<!-- /footer content -->
 	</div>
 </div>

 <div class="modal fade" id="set_deadline" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 	<div class="modal-dialog">
 		<div class="modal-content">
 			<form method="post" action="save_deadline">
 				<div class="modal-header">
 					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
 					<h4 class="modal-title"> Set</h4>
 				</div>
 				<div class="modal-body">
 				
 					</div>
 					<div class="modal-footer">
 						<span style="float: left" class="save_dl"></span>
 						<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
 						<button type="submit"  class="btn btn-primary">Save</button>
 					</div>

 				</form>
 			</div>
 		</div>
 	</div>
{include file='inc/footer.tpl'}