<?php
/* Smarty version 5.3.1, created on 2024-06-23 01:00:43
  from 'file:auth/login.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.3.1',
  'unifunc' => 'content_6677579be4a538_83218622',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dcc323fcac53f47660ff6efdd7dd1a071c2d359a' => 
    array (
      0 => 'auth/login.tpl',
      1 => 1719097242,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_6677579be4a538_83218622 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\BanPIM\\app\\views\\templates\\auth';
?>
<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta name="theme-color" content="#c9190c">
            <meta name="robots" content="index,follow">
            <meta htttp-equiv="Cache-control" content="no-cache">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="msapplication-TileColor" content="#c9190c">
            <meta name="apple-mobile-web-app-capable" content="yes">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta name="keywords" content="" />
            <meta name="description" content="" />
            <link href="<?php echo $_smarty_tpl->getValue('assets_link');?>
css/styles.css" rel="stylesheet">
            <link href="<?php echo $_smarty_tpl->getValue('assets_link');?>
css/bootstrap.min.css" rel="stylesheet">
            <link href="<?php echo $_smarty_tpl->getValue('assets_link');?>
fontawesome/css/all.css" rel="stylesheet">
            <link href="<?php echo $_smarty_tpl->getValue('assets_link');?>
css/styles.css" rel="stylesheet">
            <?php echo '<script'; ?>
 type='text/javascript' src='<?php echo $_smarty_tpl->getValue('assets_link');?>
js/jquery.min.js'><?php echo '</script'; ?>
>

            <title><?php echo $_smarty_tpl->getValue('page_title');?>
</title>
            <?php echo '<script'; ?>
>
                root_url = "<?php echo $_smarty_tpl->getValue('root_link');?>
";
            <?php echo '</script'; ?>
>
      </head>
        <body className='snippet-body'>
            <div class="container d-flex justify-content-center">
                <div class="row my-5">
                    <div class="col-md-6 text-left text-white lcol">
                    <div class="greeting"><h3>Welcome to <span class="txt">BanPim</span></h3></div>
                    <h6 class="mt-3">let's light some fire and get the show on the road...</h6>
                    <div class="footer">
                        <div class="socials d-flex flex-row justify-content-between text-white">
                        <div class="d-flex flex-row"><i class="fab fa-linkedin-in"></i><i class="fab fa-facebook-f"></i><i class="fab fa-twitter"></i></div>
                        <span>Privacy Policy</span>
                        <span>&copy; 2024 BanPim</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 rcol">
                    <form autoComplete='off' class="sign-up form-group mt-5 auth-form" action="<?php echo $_smarty_tpl->getValue('root_link');?>
auth/login" method="post">
                        <h2 class="heading mb-4">Sign In</h2>
                       
                        <?php if ($_smarty_tpl->getValue('success')) {?>
                            <div id="messagediv" class="success success-ico">
                                <?php echo $_smarty_tpl->getValue('success')['details'];?>

                            </div>
                        <?php }?>
                        <div class="form-group fone mt-2">
                            <i class="fas fa-user"></i>
                            <input type="text" class="form-control username <?php if ($_smarty_tpl->getValue('errors')['username']) {?>is-invalid<?php }?>" name="username" placeholder="Username" value="<?php echo htmlspecialchars((string)$_smarty_tpl->getValue('submitted_username'), ENT_QUOTES, 'UTF-8', true);?>
">
                            <div class="invalid-feedback username-error">
                                <?php if ($_smarty_tpl->getValue('errors')['username']) {?>
                                    <?php echo $_smarty_tpl->getValue('errors')['username'];?>

                                <?php }?>
                            </div>
                        </div>
                        <div class="form-group pass mt-2">
                            <i class="fas fa-user"></i>
                            <input type="password" class="form-control userPassword <?php if ($_smarty_tpl->getValue('errors')['password']) {?>is-invalid<?php }?>" name="password" placeholder="Password" value="<?php echo htmlspecialchars((string)$_smarty_tpl->getValue('submitted_password'), ENT_QUOTES, 'UTF-8', true);?>
"autocomplete="off"/>
                            <i class="fa fa-eye-slash Icon" id="clearPasswordText" aria-hidden="true"></i>
                            <div class="invalid-feedback password-error"><?php echo $_smarty_tpl->getValue('errors')['password'];?>
</div>
                        </div>

                        <input type="checkbox" class="form-check-input ml-0" id="exampleCheck1">
                        <label class="form-check-label ml-3" for="exampleCheck1" >I agree to BanPim <u>Terms</u> and <u>Privacy Policy</u></label>
                        <div class="submit-btn"> 
                            <button type="submit" class="btn btn-success mt-2">
                                <span class="text">Sign-Up Now</span>
                            </button>
                        </div>
                        
                    </form>
                
                <p class="exist mt-4">Don't have account? <span><a href="<?php echo $_smarty_tpl->getValue('root_link');?>
auth/register">Create one</a></span></p>
            </div>
        </div>
        </div>
    <?php echo '<script'; ?>
 type='text/javascript' src='<?php echo $_smarty_tpl->getValue('assets_link');?>
js/bootstrap.bundle.min.js'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type='module' src='<?php echo $_smarty_tpl->getValue('assets_link');?>
js/actions.js'><?php echo '</script'; ?>
>
    
    </body>
</html><?php }
}