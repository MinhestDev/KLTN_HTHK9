<?php
/* Smarty version 3.1.30, created on 2024-03-03 04:29:54
  from "D:\xampp\htdocs\webshop\admin\smarty\templates\layouts\content\logout_modal.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3eeb267d1a7_84966300',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e4acf84cfc1d055dded06e59907c5fa4d5066b95' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\admin\\smarty\\templates\\layouts\\content\\logout_modal.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65e3eeb267d1a7_84966300 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="modal fade print" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Bạn sẵn sàng muốn đăng xuất</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Chọn "Đăng xuất" để xóa tất cả các phiên và quay về trang chủ</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Hủy bỏ</button>
            <a class="btn btn-primary" href="dang_xuat.php">Đăng xuất</a>
          </div>
        </div>
      </div>
    </div>
<?php }
}
