<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:04:13
  from "D:\xampp\htdocs\webshop\admin\views\tin_tuc\v_modal_sua_tin_tuc.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3f6bd6dac66_61179706',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b8372ea8ff017257ee8e28c8be01a0d3c40e1d0e' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\admin\\views\\tin_tuc\\v_modal_sua_tin_tuc.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65e3f6bd6dac66_61179706 (Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="modal fade" id="edit<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document" style="max-width: 875px;">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Chi tiết <?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->TenTT;?>
</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" id="uploadForm<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
" action="tin_tuc.php" enctype="multipart/form-data">
          <input type="hidden" name="ma_tt" value="<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
">
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Loại tin:</label>
            <select class="form-control" name="loai_tin">
                <option value="<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaLoaiTin;?>
"><?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->TenLoaiTin;?>
</option>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['doc_loai_tin']->value, 'loai_tin');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['loai_tin']->value) {
?>
                  <option value="<?php echo $_smarty_tpl->tpl_vars['loai_tin']->value->MaLoaiTin;?>
"><?php echo $_smarty_tpl->tpl_vars['loai_tin']->value->TenLoaiTin;?>
</option>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            </select>
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Tên tin tức:</label>
            <input type="text" class="form-control" name="ten_tt" value="<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->TenTT;?>
" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="form-control-label">Nội dung:</label>
            <textarea class="ckeditor form-control" type="text" name="noi_dung" maxlength="500"><?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->NoiDung;?>
</textarea>
          </div>
          <div class="form-group">
              <div class="row">
                <div class="col col-3">
                  <div class="input-file-container">
                    <input class="input-file" id="file<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
" name="hinh" type="file">
                    <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
                  </div>
                  <p class="file-return"></p>
                </div>
                <div class="col col-3">
                    <img id="hienThi<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
" class="img-fluid" src="../public/images/tin_tuc/<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->Hinh;?>
"/>
                </div>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
            <button type="submit" class="btn btn-success" name="btn_update" id="checkUpdate<?php echo $_smarty_tpl->tpl_vars['tin_tuc']->value->MaTT;?>
">Cập nhật</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php }
}
