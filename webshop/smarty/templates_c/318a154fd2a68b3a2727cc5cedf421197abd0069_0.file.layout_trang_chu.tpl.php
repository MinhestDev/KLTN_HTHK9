<?php
/* Smarty version 3.1.30, created on 2024-03-03 04:28:39
  from "D:\xampp\htdocs\webshop\smarty\templates\layout_trang_chu.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_65e3ee6737b050_54406353',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '318a154fd2a68b3a2727cc5cedf421197abd0069' => 
    array (
      0 => 'D:\\xampp\\htdocs\\webshop\\smarty\\templates\\layout_trang_chu.tpl',
      1 => 1709436300,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:layouts/head.tpl' => 1,
    'file:layouts/header.tpl' => 1,
    'file:layouts/body.tpl' => 1,
    'file:layouts/body/contact.tpl' => 1,
    'file:layouts/footer.tpl' => 1,
  ),
),false)) {
function content_65e3ee6737b050_54406353 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->_subTemplateRender("file:layouts/head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:layouts/header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        <?php $_smarty_tpl->_subTemplateRender("file:layouts/body.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_70762449765e3ee67379f23_18643133', "contact");
?>

        <div id="gotop"></div>
<?php $_smarty_tpl->_subTemplateRender("file:layouts/footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php }
/* {block "contact"} */
class Block_70762449765e3ee67379f23_18643133 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:layouts/body/contact.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
/* {/block "contact"} */
}
