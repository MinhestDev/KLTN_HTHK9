<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:24:33
  from "D:\xampp\htdocs\webshop\views\v_dang_nhap.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3fb8132b131_64150350',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ba1c109c6bbc0e71cbb968eb368c2a4ab1ac4721' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\views\\v_dang_nhap.tpl',
      1 => 1709436300,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/dang_nhap/v_thanh_danh_muc.tpl' => 1,
    'file:views/dang_nhap/v_dang_nhap.tpl' => 1,
  ),
),false)) {
function content_65e3fb8132b131_64150350 (Smarty_Internal_Template $_smarty_tpl) {
?>
        <?php $_smarty_tpl->_subTemplateRender("file:views/dang_nhap/v_thanh_danh_muc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        <?php $_smarty_tpl->_subTemplateRender("file:views/dang_nhap/v_dang_nhap.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
