<?php
/* Smarty version 5.3.1, created on 2024-06-23 21:21:17
  from 'file:inc/sideBar.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.3.1',
  'unifunc' => 'content_667875ad8899c9_74490260',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7aae3f96a9d962bf31fd14a8a5fb6479c789224f' => 
    array (
      0 => 'inc/sideBar.tpl',
      1 => 1719170476,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_667875ad8899c9_74490260 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\BanPIM\\app\\views\\templates\\inc';
?>	<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
        <div class="menu_section">
            <h3>Admin</h3>
            <ul class="nav side-menu">
            <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                <ul class="nav child_menu">
                <li><a href="<?php echo $_smarty_tpl->getValue('root_link');?>
">Dashboard</a></li>
                <li><a href="<?php echo $_smarty_tpl->getValue('root_link');?>
product/viewall">Products List</a></li>
                <li><a href="<?php echo $_smarty_tpl->getValue('root_link');?>
media/all">Media List</a></li>
                </ul>
            </li>
            
            </ul>
        </div>
    </div><?php }
}
