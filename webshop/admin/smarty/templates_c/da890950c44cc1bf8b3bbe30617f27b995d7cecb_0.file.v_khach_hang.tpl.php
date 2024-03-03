<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:30:54
  from "D:\xampp\htdocs\webshop\admin\views\v_khach_hang.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3fcfe419de9_57564121',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'da890950c44cc1bf8b3bbe30617f27b995d7cecb' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\admin\\views\\v_khach_hang.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/khach_hang/v_ds_khach_hang.tpl' => 1,
  ),
),false)) {
function content_65e3fcfe419de9_57564121 (Smarty_Internal_Template $_smarty_tpl) {
?>
 <div class="card mb-3">
        <div class="card-header">
          <i class="fa fa-table"></i> Danh sách khách hàng</div>
        <div class="card-body">
          <div class="table-responsive">
          <?php $_smarty_tpl->_subTemplateRender("file:views/khach_hang/v_ds_khach_hang.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

          </div>
        </div>
</div><?php }
}
