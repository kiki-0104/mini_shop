<?php
/* Smarty version 3.1.29, created on 2020-10-27 06:13:20
  from "C:\UniServerZ\www\mini_shop\mini_shop\templates\side_tools.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5f97ba80b7cf27_82966801',
  'file_dependency' => 
  array (
    '5bc436b664e228c411132859fcd5ea6804c9dd2d' => 
    array (
      0 => 'C:\\UniServerZ\\www\\mini_shop\\mini_shop\\templates\\side_tools.html',
      1 => 1603778874,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5f97ba80b7cf27_82966801 ($_smarty_tpl) {
?>
<div class="alert alert-success">
  <?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_name'];?>
您好！歡迎光臨<?php echo $_smarty_tpl->tpl_vars['shop_name']->value;?>

</div>
<a href="index.php" class="btn btn-block btn-primary">回首頁</a>
<a href="user.php?op=user_display&user_sn=<?php echo $_smarty_tpl->tpl_vars['login_user']->value['user_sn'];?>
" class="btn btn-block btn-info">我的帳號</a>
<?php if ($_smarty_tpl->tpl_vars['isUser']->value) {?>
    <a href="bill.php" class="btn btn-block btn-warning">我的訂單</a>
<?php }
if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
    <a href="tool.php?op=goods_form" class="btn btn-block btn-success">發布商品</a>
<?php }?>
<a href="user.php?op=user_logout" class="btn btn-block btn-danger">登出</a><?php }
}
