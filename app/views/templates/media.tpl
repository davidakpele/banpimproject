{include file='inc/header.tpl'}
<link rel="stylesheet" href="{$assets_link}css/jquery.dataTables.min.css">
<script src="{$assets_link}js/jquery-3.5.1.min.js"></script>
<script src="{$assets_link}js/jquery.dataTables.min.js"></script>
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

 					<!-- menu profile quick info -->
 					<div class="profile">
 						<div class="profile_pic">
 							<img src="{$assets_link}img/admin.png" alt="..." class="img-circle profile_img">
 						</div>
 						<div class="profile_info">
 							<span>Welcome,</span>
 							<h2>{$session_username}</h2>
 						</div>
 					</div>
 					<!-- /menu profile quick info -->

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
 						<div class="title_left">
 							<h3 style="display:flex; gap:0.50rem;"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="40" height="40"><path fill="#99e1ff" d="M57 25v-2h-6v2h-3a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-8a1 1 0 0 0-1-1h-3z" class="color99e1ff svgShape"></path><path fill="#26547c" d="M54 33a3 3 0 1 1 0-6 3 3 0 1 1 0 6z" class="color26547c svgShape"></path><path fill="#ffdc73" d="M43.589 45c-.455 0-.833-.32-.947-.76a10.951 10.951 0 0 0-1.173-2.832c-.225-.382-.185-.863.128-1.176l1.717-1.717-2.828-2.828-1.717 1.717c-.313.313-.794.353-1.176.128a10.937 10.937 0 0 0-2.832-1.173c-.441-.114-.761-.493-.761-.948V33h-4v2.411c0 .455-.32.833-.761.947-1.007.26-1.958.657-2.832 1.173-.382.225-.863.185-1.176-.128l-1.717-1.717-2.828 2.828 1.717 1.717c.313.313.353.794.128 1.176a10.951 10.951 0 0 0-1.173 2.832c-.114.441-.492.761-.947.761H18v4h2.411c.455 0 .833.32.947.76.26 1.007.657 1.958 1.173 2.832.225.382.185.863-.128 1.176l-1.717 1.717 2.828 2.828 1.717-1.717c.313-.313.794-.353 1.176-.128.873.516 1.825.913 2.832 1.173.441.114.761.493.761.948V61h4v-2.411c0-.455.32-.833.761-.947a10.951 10.951 0 0 0 2.832-1.173c.382-.225.863-.185 1.176.128l1.717 1.717 2.828-2.828-1.717-1.717c-.313-.313-.353-.794-.128-1.176.516-.874.913-1.825 1.173-2.832.114-.44.492-.76.947-.76H46v-4h-2.411zM32 54a7 7 0 1 1 0-14 7 7 0 0 1 0 14z" class="colorffdc73 svgShape"></path><path fill="#cccccc" d="M3 26h13v14H3z" class="colorccc svgShape"></path><circle cx="10" cy="16" r="2" fill="#26547c" class="color26547c svgShape"></circle><circle cx="19" cy="14" r="2" fill="#26547c" class="color26547c svgShape"></circle><path fill="#26547c" d="M12 5v4l9-2V3z" class="color26547c svgShape"></path><path fill="#6d6d6d" d="M12 28h2v2h-2zM12 32h2v2h-2zM12 36h2v2h-2zM5 28h2v2H5zM5 32h2v2H5zM5 36h2v2H5z" class="color6d6d6d svgShape"></path><path fill="#ef476f" d="m36.019 8.415.08.895c.186 2.085 2.048 3.69 4.284 3.69h.496a4.45 4.45 0 0 0 3.039-1.179l1.043-.976A4.453 4.453 0 0 1 48 9.667a4.45 4.45 0 0 1 3.039 1.179l1.043.976A4.457 4.457 0 0 0 55.122 13h.496c2.236 0 4.098-1.604 4.284-3.69l.08-.895C60.241 5.5 57.783 3 54.658 3H41.342c-3.125 0-5.583 2.5-5.323 5.415z" class="coloref476f svgShape"></path><path fill="#e8e8e8" d="M56 10a1 1 0 0 1 0-2 1 1 0 0 1 0 2zm-3-2a1 1 0 0 1 0-2 1 1 0 0 1 0 2zM44 7h-2V5h-2v2h-2v2h2v2h2V9h2z" class="colore8e8e8 svgShape"></path><path fill="#ef476f" d="M30 44v6l5-3z" class="coloref476f svgShape"></path><path fill="#3d3d3d" d="M17 49a1 1 0 0 0 1 1l2.39.01a10.486 10.486 0 0 0 1.307 3.051l-1.717 1.717a.999.999 0 0 0 0 1.414l2.828 2.828a.999.999 0 0 0 1.414 0l1.677-1.691c.964.569 2.003 1 3.102 1.259V61a1 1 0 0 0 1 1h4a1 1 0 0 0 1-1l.011-2.39c1.088-.281 2.127-.711 3.051-1.306l1.717 1.717a.999.999 0 0 0 1.414 0l2.828-2.828a.999.999 0 0 0 0-1.414l-1.69-1.678c.568-.964.999-2.003 1.259-3.101H46a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1l-2.39-.01a10.486 10.486 0 0 0-1.307-3.051l1.717-1.717a.999.999 0 0 0 0-1.414l-2.828-2.828a.999.999 0 0 0-1.414 0l-1.677 1.691c-.964-.569-2.003-1-3.102-1.259V33a1 1 0 0 0-1-1h-4a1 1 0 0 0-1 1l-.011 2.39c-1.088.281-2.127.711-3.051 1.306l-1.717-1.717a.999.999 0 0 0-1.414 0l-2.828 2.828a.999.999 0 0 0 0 1.414l1.69 1.678A11.182 11.182 0 0 0 20.409 44H18a1 1 0 0 0-1 1v4zm2-3h1.411c.897 0 1.685-.621 1.916-1.51a9.933 9.933 0 0 1 1.065-2.573 1.966 1.966 0 0 0-.282-2.392l-1.01-1.01 1.414-1.414 1.01 1.01c.627.627 1.61.743 2.392.281a9.933 9.933 0 0 1 2.573-1.065c.89-.23 1.511-1.018 1.511-1.916V34h2v1.411c0 .898.621 1.686 1.511 1.916a9.946 9.946 0 0 1 2.572 1.065 1.965 1.965 0 0 0 2.393-.281l1.01-1.01 1.414 1.414-1.01 1.01a1.966 1.966 0 0 0-.282 2.392 9.934 9.934 0 0 1 1.066 2.575A1.992 1.992 0 0 0 43.589 46H45v2h-1.411c-.897 0-1.685.621-1.916 1.51a9.933 9.933 0 0 1-1.065 2.573 1.966 1.966 0 0 0 .282 2.392l1.01 1.01-1.414 1.414-1.01-1.01a1.963 1.963 0 0 0-2.392-.281 9.933 9.933 0 0 1-2.573 1.065c-.89.23-1.511 1.018-1.511 1.916V60h-2v-1.411c0-.898-.621-1.686-1.511-1.916a9.946 9.946 0 0 1-2.572-1.065 1.965 1.965 0 0 0-2.393.281l-1.01 1.01-1.414-1.414 1.01-1.01a1.966 1.966 0 0 0 .282-2.392 9.934 9.934 0 0 1-1.066-2.575A1.992 1.992 0 0 0 20.411 48H19v-2z" class="color3d3d3d svgShape"></path><path fill="#3d3d3d" d="M32 55c4.411 0 8-3.589 8-8s-3.589-8-8-8-8 3.589-8 8 3.589 8 8 8zm0-14c3.309 0 6 2.691 6 6s-2.691 6-6 6-6-2.691-6-6 2.691-6 6-6zM19 11c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3V3a1.002 1.002 0 0 0-1.217-.976l-9 2A.998.998 0 0 0 11 5V13.184A2.966 2.966 0 0 0 10 13c-1.654 0-3 1.346-3 3s1.346 3 3 3 3-1.346 3-3V9.802l7-1.556v2.938A2.966 2.966 0 0 0 19 11zm0 4a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm-9 2a1.001 1.001 0 0 1 0-2 1.001 1.001 0 0 1 0 2zm3-11.198 7-1.556v1.951l-7 1.556V5.802zM62 34v-8c0-1.103-.897-2-2-2h-2v-1a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v1h-2c-1.103 0-2 .897-2 2v8c0 1.103.897 2 2 2h12c1.103 0 2-.897 2-2zm-14-8h3a1 1 0 0 0 1-1v-1h4v1a1 1 0 0 0 1 1h3v8H48v-8zM3 41h13a1 1 0 0 0 1-1V26a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1zm1-14h11v12H4V27zm3.36-4.319 1.895.639c.33-.979.729-1.948 1.187-2.878l-1.795-.882a25.51 25.51 0 0 0-1.287 3.121zm3.52 19.727-1.76.952a26.015 26.015 0 0 0 5.2 6.703l1.359-1.466a24.017 24.017 0 0 1-4.799-6.189zm44.16-4.667a23.997 23.997 0 0 1-6.72 10.856l1.359 1.466a25.997 25.997 0 0 0 7.28-11.762l-1.919-.56zM49.597 14.68a24.02 24.02 0 0 1 3.962 5.76l1.795-.881a26.012 26.012 0 0 0-4.29-6.24l-1.467 1.361zM32 7V5c-2.848 0-5.647.458-8.32 1.36l.641 1.895A23.937 23.937 0 0 1 32 7z" class="color3d3d3d svgShape"></path><path fill="#3d3d3d" d="m60.897 9.399.08-.896c.145-1.625-.397-3.199-1.524-4.431C58.248 2.755 56.5 2 54.658 2H41.342c-1.842 0-3.59.755-4.795 2.073-1.127 1.232-1.669 2.805-1.524 4.431l.08.896c.233 2.622 2.502 4.6 5.279 4.6h.496a5.423 5.423 0 0 0 3.724-1.449l1.043-.976c1.232-1.155 3.479-1.155 4.711 0l1.043.976A5.418 5.418 0 0 0 55.122 14h.496c2.777 0 5.046-1.978 5.279-4.601zm-8.131 1.692-1.043-.976c-.998-.934-2.321-1.448-3.723-1.448s-2.725.515-3.723 1.449l-1.043.976a3.474 3.474 0 0 1-2.356.908h-.496c-1.705 0-3.148-1.22-3.287-2.778l-.08-.895c-.094-1.06.264-2.091 1.008-2.903C38.85 4.519 40.06 4 41.342 4h13.316c1.282 0 2.492.519 3.319 1.423.744.812 1.102 1.844 1.008 2.903l-.08.896C58.767 10.78 57.323 12 55.618 12h-.496a3.47 3.47 0 0 1-2.356-.909z" class="color3d3d3d svgShape"></path></svg>&nbsp;
                            Media List</h3>
 						</div>						
 						<div class="title_right">
 							<button class="btn btn-primary btn-md pull-right" data-toggle="modal" data-target="#myModal">
 								<i class="fa fa-plus"></i> Add Media
 							</button>
 							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Add Media</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                        <div id="messagediv" class="success success-ico"></div>
                                        <div id="error" class="error error-ico" style="display:none"></div>
                                        <form action="javascript:void(0)" method="POST" id="add_media" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label for="media_name">Media Name</label>
                                                <input type="text" class="form-control" id="media_name" name="media_name"/>
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description</label>
                                                <textarea class="form-control" id="description" name="description" /></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label for="category">Category</label>
                                                <input type="text" class="form-control" id="category" name="category" />
                                            </div>
                                            <div class="form-group">
                                                <label for="file">Media File</label>
                                                <input type="file" class="form-control-file" id="file" name="file" />
                                            </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
                                            <button type="submit" name="add" class="btn btn-primary">Save</button>
                                        </div>
                                        </form>	
                                    </div>
                                    </div>
                                </div>
                            </div>
 						</div>
 					</div>
 					<div class="clearfix"></div>
 					<div class="row">
 						<div class="col-md-12 col-sm-12 col-xs-12">
 							<div class="x_panel">
                                <table class="table js-basic-example dataTable table-striped table-bordered table-hover" id="myTable" >
                                    <thead>
                                        <tr>
                                            <th>Media Name</th>
                                            <th>Description</th>
                                            <th>Category</th>
                                            <th>File Type</th>
                                        </tr>
                                    </thead>
                                        <tbody>
                                            {foreach $medias as $media}
                                            <tr>
                                                <td>{$media.media_name}</td>
                                                <td>{$media.description}</td>
                                                <td>{$media.category}</td>
                                                <td>{$media.file_type}</td>
                                            </tr>
                                            {/foreach}
                                        </tbody>
                                    </table>

                                </table>
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

    <script>
    $(document).ready(function() {
        $('#myTable').DataTable();});
</script>
<script src="{$assets_link}js/media.js"></script>
{include file='inc/footer.tpl'}