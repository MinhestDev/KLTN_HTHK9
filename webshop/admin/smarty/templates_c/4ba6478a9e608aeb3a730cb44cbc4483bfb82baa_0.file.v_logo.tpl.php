<?php
/* Smarty version 3.1.30, created on 2024-03-03 05:03:46
  from "D:\xampp\htdocs\webshop\admin\views\v_logo.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3f6a28744b6_79559938',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4ba6478a9e608aeb3a730cb44cbc4483bfb82baa' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\admin\\views\\v_logo.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65e3f6a28744b6_79559938 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="container">
    <form method="POST" enctype="multipart/form-data" style="margin-bottom: 20px;">
    <div class="form-group">
        <div class="row">
            <div class="col col-4">
            <div class="input-file-container">
                <input class="input-file" type="file" name="hinh" id="file"/>
                <label tabindex="0" for="my-file" class="input-file-trigger">Tải lên ảnh mới</label>
            </div>
            <p class="file-return"></p>
            </div>
            <div class="col col-3">
                <img id="hienThi" class="img-fluid" src="../public/images/logo/<?php echo $_smarty_tpl->tpl_vars['hinh']->value;?>
"/>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary" name="btn_update">Cập nhật logo</button>
    </form>
</div>
    <?php echo '<script'; ?>
 src="public/js/input_file.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="public/js/script_hien_thi_anh_add.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="public/js/script_hien_thi_anh_about.js"><?php echo '</script'; ?>
>
    <?php if (isset($_SESSION['success'])) {?>
        <?php echo '<script'; ?>
>
            swal({
            title: "Cập nhật logo thành công!",
            text: "<?php echo $_SESSION['success'];?>
!",
            type: "success"
            }).then(function() {
                window.location = "logo.php";
            });
        <?php echo '</script'; ?>
>
    <?php }
}
}
