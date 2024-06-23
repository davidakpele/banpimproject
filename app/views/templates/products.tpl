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
 							<h3 style="display:flex; gap:0.50rem"> <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64" width="40" height="40"><path fill="#ffa133" d="M58.99,34.62A2.156,2.156,0,0,1,56.88,37H37.12a2.156,2.156,0,0,1-2.11-2.38l1.74-19.64A2.134,2.134,0,0,1,38.86,13H55.14a2.134,2.134,0,0,1,2.11,1.98Z" class="colorffa133 svgShape"></path><line x1="19" x2="13" y1="27" y2="27" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><rect width="22" height="10" x="5" y="23" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" transform="rotate(-180 16 28)" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M51,24h0a3,3,0,0,0-3-3H46a3,3,0,0,0-3,3h0a3,3,0,0,0,3,3h2a3,3,0,0,1,3,3h0a3,3,0,0,1-3,3H46a3,3,0,0,1-3-3h0" class="colorStroke394d59 svgStroke"></path><rect width="12" height="4" x="41" y="47" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M35,43V57a2,2,0,0,0,2,2H57a2,2,0,0,0,2-2V43" class="colorStroke394d59 svgStroke"></path><rect width="28" height="6" x="33" y="37" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M43,17V9a4,4,0,0,1,4-4h0a4,4,0,0,1,4,4v8" class="colorStroke394d59 svgStroke"></path><line x1="3" x2="3" y1="51" y2="49" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3,45V37a4,4,0,0,1,4-4H25a4,4,0,0,1,4,4V55a4,4,0,0,1-4,4H7a4,4,0,0,1-4-4" class="colorStroke394d59 svgStroke"></path><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20,33V46.268a.814.814,0,0,1-1.415.468L16,43l-2.585,3.736A.814.814,0,0,1,12,46.268V33" class="colorStroke394d59 svgStroke"></path><line x1="19" x2="17" y1="55" y2="55" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><line x1="23" x2="25" y1="55" y2="55" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line><rect width="18" height="13" x="7" y="10" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" rx="2" class="colorStroke394d59 svgStroke"></rect><path fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 10V9a4 4 0 0 0-4-4H11A2 2 0 0 0 9 7V8a2 2 0 0 0 2 2h5M16 10V9a4 4 0 0 1 4-4h1a2 2 0 0 1 2 2V8a2 2 0 0 1-2 2z" class="colorStroke394d59 svgStroke"></path><line x1="16" x2="16" y1="23" y2="9" fill="none" stroke="#394d59" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="colorStroke394d59 svgStroke"></line></svg>&nbsp;
                            Products List</h3>
 						</div>						
 						<div class="title_right">
 							<button class="btn btn-primary btn-md pull-right" data-toggle="modal" data-target="#myModal">
 								<i class="fa fa-plus"></i> Add Product
 							</button>
 							<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="myModalLabel">Add Product</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="form-group">
                                        <div id="messagediv" class="success success-ico"></div>
                                        <div id="error" class="error error-ico" style="display:none"></div>
                                        <form action="javascript:void(0)" method="POST" id="add_product" enctype="multipart/form-data">
                                            <div class="Product name">
                                                <label>Product name*</label>
                                                <input type="text" class="form-control product_name" name="name" placeholder="Product name">
                                            </div>
                                            <div class="Product title">
                                                <label>Product title*</label>
                                                <input text="text" class="form-control product_title" name="title" placeholder="Product title"/>
                                            </div>
                                            <div class="Product description">
                                                <label>Product description*</label>
                                                <input text="text" class="form-control product_description" name="description" placeholder="Product description"/>
                                            </div>
                                            <div class="Category">
                                                <label>Category*</label>
                                                <input type="text" class="form-control product_category" name= "category" placeholder="Category">
                                            </div>
                                            <div class="Tag">
                                                <label>Tag</label>
                                                <input type="text" class="form-control product_tag" name= "tag" placeholder="Tag">
                                            </div>
                                            <br>
                                            <div class="col-md-3">
                                                <label>Size</label>
                                                <select name="size" class="form-control product_size">
                                                    <option value="">--select--</option>
                                                    <option>Small</option>
                                                    <option>Medium</option>
                                                    <option>Large</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <label>Weight</label>
                                                <select name="weight" class="form-control product_weight">
                                                    <option value="">--select--</option>
                                                    <option value="22">22</option>
                                                    <option value="44">44</option>
                                                    <option value="66">66</option>
                                                </select>
                                            </div>
                                            <div class="col-md-3">
                                                <label>Sku id</label>
                                                <input type="text" class="form-control product_sku_id" name= "sku_id" placeholder="Sku id"/>
                                            </div>
                                        <div class="col-md-3">
                                            <label>Color</label>
                                            <input type="color" class="form-control product_color" name= "color" placeholder="Color">
                                            </div>
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
                                            <th>Name</th>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Category</th>
                                            <th>Tag</th>
                                            <th>Size</th>
                                            <th>Weight</th>
                                            <th>SKU ID</th>
                                            <th>Color</th>
                                            <th>Views</th>
                                            <th>Downloads</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                        <tbody>
                                            {foreach $products as $product}
                                            <tr>
                                                <td>{$product.name}</td>
                                                <td>{$product.title}</td>
                                                <td>{$product.description}</td>
                                                <td>{$product.category}</td>
                                                <td>{$product.tag}</td>
                                                <td>{$product.size}</td>
                                                <td>{$product.weight}</td>
                                                <td>{$product.sku_id}</td>
                                                <td>{$product.color}</td>
                                                <td>{$product.view_count}</td>
                                                <td>{$product.download_count}</td>
												<td>
												<div style="display:flex; gap:1.10rem;">
													<a href="{$root_link}product/view_product/{$product.id}">
														<svg xmlns="http://www.w3.org/2000/svg" fill-rule="evenodd" clip-rule="evenodd" image-rendering="optimizeQuality" shape-rendering="geometricPrecision" text-rendering="geometricPrecision" viewBox="0 0 2630 3439" width="20" height="20"><path fill="#ced3db" d="M1704 2581c44,42 71,102 71,168l0 515c0,75 -53,137 -127,149 -103,17 -207,26 -311,26 -93,0 -186,-7 -278,-21 -75,-11 -129,-74 -129,-150l0 -520c0,-66 27,-125 71,-168 -539,-153 -926,-650 -926,-1228 0,-705 572,-1277 1277,-1277 705,0 1277,572 1277,1277 0,578 -387,1075 -926,1228z" class="colorced3db svgShape"></path><path fill="#ffffff" d="M1628 2506c44,42 71,102 71,168l0 515c0,75 -53,137 -127,149 -103,17 -207,26 -311,26 -93,0 -186,-7 -278,-21 -75,-11 -129,-74 -129,-150l0 -520c0,-66 27,-125 71,-168 -539,-153 -926,-650 -926,-1228 0,-705 572,-1277 1277,-1277 705,0 1277,572 1277,1277 0,578 -387,1075 -926,1228z" class="colorfff svgShape"></path><path fill="#ff7069" d="M1088 2592l378 0c45,0 82,37 82,82l0 515c-93,16 -188,24 -286,24 -87,0 -173,-7 -256,-19l0 -520c0,-45 37,-82 82,-82z" class="colorff7069 svgShape"></path><rect width="542" height="44" x="1006" y="2730" fill="#f7635b" class="colorf7635b svgShape"></rect><path fill="#596366" d="M1391 2397l0 194 -227 0 0 -194c37,4 75,6 114,6 38,0 76,-2 114,-6z" class="color596366 svgShape"></path><path fill="#6c7678" d="M1277 152c622,0 1126,504 1126,1126 0,622 -504,1126 -1126,1126 -622,0 -1126,-504 -1126,-1126 0,-622 504,-1126 1126,-1126zm0 186c519,0 940,421 940,940 0,519 -421,940 -940,940 -519,0 -940,-421 -940,-940 0,-519 421,-940 940,-940z" class="color6c7678 svgShape"></path><path fill="#c6cbd6" d="M1277 306c536,0 971,435 971,971 0,536 -435,971 -971,971 -536,0 -971,-435 -971,-971 0,-536 435,-971 971,-971zm0 52c508,0 919,411 919,919 0,508 -411,919 -919,919 -508,0 -919,-411 -919,-919 0,-508 411,-919 919,-919z" class="colorc6cbd6 svgShape"></path><path fill="#ffffff" d="M1277 340c168,0 326,44 462,122 -117,-54 -248,-84 -385,-84 -510,0 -924,414 -924,924 0,452 324,828 753,908 -473,-47 -843,-447 -843,-932 0,-517 419,-937 937,-937z" class="colorfff svgShape"></path><path fill="#e5e8ed" d="M1739 462c283,161 475,466 475,815 0,517 -419,937 -937,937 -32,0 -63,-2 -94,-5 -429,-80 -753,-456 -753,-908 0,-510 414,-924 924,-924 138,0 268,30 385,84z" class="colore5e8ed svgShape"></path><path fill="#c6cbd6" d="M522 1277c433,-695 1077,-695 1510,0 -433,695 -1077,695 -1510,0z" class="colorc6cbd6 svgShape"></path><path fill="#ffffff" d="M522 1277c433,-637 1077,-637 1510,0 -433,637 -1077,637 -1510,0z" class="colorfff svgShape"></path><circle cx="1277" cy="1277" r="367" fill="#83cf8f" class="color83cf8f svgShape"></circle><circle cx="1277" cy="1277" r="257" fill="#75bd80" class="color75bd80 svgShape"></circle><circle cx="1277" cy="1277" r="134" fill="#6c7678" class="color6c7678 svgShape"></circle><circle cx="1095" cy="1126" r="63" fill="#ffffff" class="colorfff svgShape"></circle><circle cx="1388" cy="1388" r="43" fill="#ffffff" class="colorfff svgShape"></circle><rect width="542" height="44" x="1006" y="2813" fill="#f7635b" class="colorf7635b svgShape"></rect></svg>
													</a>
													<a href="{$root_link}product/download_product/{$product.id}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20" height="20"><path fill="#303c42" d="M23.908 15.12l-4.07-13.563C19.5.422 18.265-.25 17.12.092l-5.157 1.547A2 2 0 0 0 10 0C8.897 0 8 .897 8 2H2C.897 2 0 2.897 0 4v15c0 1.103.897 2 2 2h4.422c.394.613 1.07 1 1.83 1 .214 0 .425-.031.628-.092l13.563-4.07A2.17 2.17 0 0 0 24 15.749a2.18 2.18 0 0 0-.092-.628z" class="color303C42 svgShape"></path><path fill="#ffca28" d="M1 19V4c0-.551.449-1 1-1h5.427l-3.87 1.161A2.17 2.17 0 0 0 2 6.253c0 .213.031.424.092.627L6.028 20H2c-.551 0-1-.449-1-1z" class="colorFFCA28 svgShape"></path><path fill="#ffffff" d="M22.156 16.88L8.593 20.95a1.209 1.209 0 0 1-1.474-.794L3.05 6.593a1.191 1.191 0 0 1 .794-1.474l4.995-1.498C9.166 3.857 9.565 4 10 4c.18 0 .35-.031.515-.076l.569.853a.5.5 0 1 0 .832-.554l-.526-.79a2 2 0 0 0 .473-.72l5.543-1.663a1.21 1.21 0 0 1 1.475.794l4.07 13.563a1.191 1.191 0 0 1-.794 1.474z" class="colorFFF svgShape"></path><linearGradient id="a" x1="10.115" x2="23.503" y1="2.344" y2="15.732" gradientUnits="userSpaceOnUse"><stop offset="0" stop-opacity=".1" stop-color="#000000" class="stopColor000000 svgShape"></stop><stop offset="1" stop-opacity="0" stop-color="#000000" class="stopColor000000 svgShape"></stop></linearGradient><path fill="url(#a)" d="M22.156 16.88a1.191 1.191 0 0 0 .794-1.473l-1.192-3.974-8.991-8.991-.904.271a2 2 0 0 1-.473.72l.526.79a.5.5 0 1 1-.832.554l-.569-.853A1.976 1.976 0 0 1 10 4c-.435 0-.834-.143-1.162-.379L22.11 16.894l.045-.013z"></path><circle cx="16.5" cy="18.5" r="5.5" fill="#303c42" class="color303C42 svgShape"></circle><circle cx="16.5" cy="18.5" r="4.5" fill="#1e88e5" class="color1E88E5 svgShape"></circle><path fill="#303c42" d="M18.146 19.146L17 20.293V15.5a.5.5 0 1 0-1 0v4.793l-1.146-1.147a.5.5 0 1 0-.708.708l2 2a.498.498 0 0 0 .708 0l2-2a.5.5 0 1 0-.708-.708z" class="color303C42 svgShape"></path><circle cx="10" cy="2" r="1" fill="#ff6f00" class="colorFF6F00 svgShape"></circle><path d="M10.408 1.092a.985.985 0 0 1 .092.408c0 .551-.449 1-1 1a.985.985 0 0 1-.408-.092A.999.999 0 0 0 10 3c.551 0 1-.449 1-1a.999.999 0 0 0-.592-.908z" opacity=".1" fill="#000000" class="color000 svgShape"></path><linearGradient id="b" x1="-.894" x2="23.676" y1="5.475" y2="16.932" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#ffffff" stop-opacity=".2" class="stopColorFFF svgShape"></stop><stop offset="1" stop-color="#ffffff" stop-opacity="0" class="stopColorFFF svgShape"></stop></linearGradient><path fill="url(#b)" d="M23.908 15.12l-4.07-13.563C19.5.422 18.265-.25 17.12.092l-5.157 1.547A2 2 0 0 0 10 0C8.897 0 8 .897 8 2H2C.897 2 0 2.897 0 4v15c0 1.103.897 2 2 2h4.422c.394.613 1.07 1 1.83 1 .214 0 .425-.031.628-.092l2.765-.83A5.503 5.503 0 0 0 16.5 24a5.506 5.506 0 0 0 5.474-6.02l.47-.141A2.17 2.17 0 0 0 24 15.747a2.18 2.18 0 0 0-.092-.627z"></path></svg>
													</a>
												</div>
												</td>
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
 						<span style='float:left' class="save_dl"></span>
 						<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
 						<button type="submit"  class="btn btn-primary">Save</button>
 					</div>

 				</form>
 			</div>
 		</div>
 	</div>
    <script>
    $(document).ready(function() {
        $('#myTable').DataTable();});
</script>
<script src="{$assets_link}js/product.js"></script>
{include file='inc/footer.tpl'}