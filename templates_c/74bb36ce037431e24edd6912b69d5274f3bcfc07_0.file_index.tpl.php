<?php
/* Smarty version 5.3.1, created on 2024-06-22 01:37:00
  from 'file:index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.3.1',
  'unifunc' => 'content_66760e9c8b5f33_44947249',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '74bb36ce037431e24edd6912b69d5274f3bcfc07' => 
    array (
      0 => 'index.tpl',
      1 => 1718997680,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_66760e9c8b5f33_44947249 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\user\\app\\views\\templates';
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?php echo $_smarty_tpl->getValue('title');?>
</title>
</head>
<body>
    <h1><?php echo $_smarty_tpl->getValue('title');?>
</h1>
    <h2><?php echo $_smarty_tpl->getValue('message');?>
</h2>
    <h3>Athletes list</h3>
    <ul>
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('athletes'), 'athlete');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('athlete')->value) {
$foreach0DoElse = false;
?>
            <li><?php echo $_smarty_tpl->getValue('athlete')['name'];?>
 - <?php echo $_smarty_tpl->getValue('athlete')['sport'];?>
</li>
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </ul>
</body>
</html><?php }
}
