<?php
/* Smarty version 5.3.1, created on 2024-06-23 01:20:01
  from 'file:dashboard/default.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.3.1',
  'unifunc' => 'content_66775c212fb6f3_00752781',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8c4f1219948336f6318e640d7a054285f390bb93' => 
    array (
      0 => 'dashboard/default.tpl',
      1 => 1719098400,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_66775c212fb6f3_00752781 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\BanPIM\\app\\views\\templates\\dashboard';
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $_smarty_tpl->getValue('page_title');?>
</title>
</head>
<body>
    <h1>Welcome to Dashboard</h1>
    <p>This is my first website</p>
    <a href="<?php echo $_smarty_tpl->getValue('root_link');?>
auth/logout">Logout</a>
</body>
</html>
<?php }
}
