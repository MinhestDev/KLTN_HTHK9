<?php
/* Smarty version 3.1.30, created on 2024-03-03 04:26:23
  from "D:\xampp\htdocs\Project_shop_hoa\admin\smarty\templates\layouts\footer.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3eddfa40b35_26434896',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '705c05f2270154e11c3298cb8c34c7c1012a25c1' => 
    array (
      0 => 'D:\\xampp\\htdocs\\Project_shop_hoa\\admin\\smarty\\templates\\layouts\\footer.tpl',
      1 => 1709436299,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_65e3eddfa40b35_26434896 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
 src="public/js/jquery.number.min.js"><?php echo '</script'; ?>
>
  <!-- Custom scripts for all pages-->
  <?php echo '<script'; ?>
 src="public/js/bootstrap.min.js"><?php echo '</script'; ?>
>

  <?php echo '<script'; ?>
 src="public/js/bootstrap-editable.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/sb-admin-datatables.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/ajax/ajax_hien_thi_thong_bao_don_hang.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/ajax/ajax_hoa_het_hang.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/ajax/ajax_don_hang.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/Chart.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/app.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/doanh_thu_theo_ngay.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/doanh_thu_theo_tuan.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/doanh_thu_theo_thang.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/doanh_thu_theo_quy.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/accounting.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
 src="public/js/cbpFWTabs.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="public/js/sb-admin.min.js"><?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
>
    (function() {
      [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
        new CBPFWTabs( el );
      });
    })();
  <?php echo '</script'; ?>
>
  <?php echo '<script'; ?>
>
    $('#price').number(true);
    $('#gia_khuyen_mai').number(true);
  <?php echo '</script'; ?>
>
</div>
</body>

</html>
<?php }
}
