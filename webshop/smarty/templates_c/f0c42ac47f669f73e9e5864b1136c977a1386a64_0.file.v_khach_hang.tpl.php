<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:32:10
  from "D:\xampp\htdocs\webshop\views\v_khach_hang.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3fd4a3e7eb9_48538869',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f0c42ac47f669f73e9e5864b1136c977a1386a64' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\views\\v_khach_hang.tpl',
      1 => 1709436300,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/khach_hang/v_thanh_danh_muc.tpl' => 1,
    'file:views/khach_hang/v_thong_tin.tpl' => 1,
    'file:views/khach_hang/v_thong_tin_don_hang.tpl' => 1,
  ),
),false)) {
function content_65e3fd4a3e7eb9_48538869 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="container">
	<?php $_smarty_tpl->_subTemplateRender("file:views/khach_hang/v_thanh_danh_muc.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<?php $_smarty_tpl->_subTemplateRender("file:views/khach_hang/v_thong_tin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	<?php $_smarty_tpl->_subTemplateRender("file:views/khach_hang/v_thong_tin_don_hang.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

</div>
<?php }
}
