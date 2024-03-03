<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:47:05
  from "D:\xampp\htdocs\webshop\admin\views\thong_tin\v_danh_sach_thong_tin.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e400c9b474d3_31801244',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1ae5ec5955422c621d58f9a577377a7c52cc53ac' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\admin\\views\\thong_tin\\v_danh_sach_thong_tin.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:views/thong_tin/v_modal_sua_thong_tin.tpl' => 1,
  ),
),false)) {
function content_65e400c9b474d3_31801244 (Smarty_Internal_Template $_smarty_tpl) {
?>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
  <thead>
    <tr>
      <th>Hình</th>
      <th>Tên Thông Tin</th>
      <th>Đường dẫn</th>
      <th>Thời gian</th>
      <th>Hành động</th>
    </tr>
  </thead>
  <tbody>
  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['doc_thong_tin']->value, 'thong_tin');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['thong_tin']->value) {
?>
    <tr id="delete<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->id;?>
">
      <td width="175px" style="max-width: 175px; max-height: 200px;"><img src="../public/images/banner/<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->Hinh;?>
" class="img-fluid" alt="Responsive image"></td>
      <td><?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->TieuDe;?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->DuongDan;?>
</td>
      <td><?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->ThoiGian;?>
</td>
      <td>
          <button type="button" class="btn btn-primary" onclick="getId(<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->id;?>
)" id="update<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->id;?>
" data-toggle="modal" data-target="#edit<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->id;?>
" >Sửa</button>
          <button type="button" onclick="deleteAjax(<?php echo $_smarty_tpl->tpl_vars['thong_tin']->value->id;?>
)" class="btn btn-danger">Xóa</button>
      </td>
    </tr>
    <?php $_smarty_tpl->_subTemplateRender("file:views/thong_tin/v_modal_sua_thong_tin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </tbody>
</table>
<?php }
}
