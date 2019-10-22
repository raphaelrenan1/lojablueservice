<?php
/* Smarty version 3.1.33, created on 2019-10-21 18:47:31
  from 'C:\xampp\htdocs\view\email_cliente_cadastro.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dade1239bcaf6_76350833',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '079aebecc129c7cb5f37c185c6698d1220f61b03' => 
    array (
      0 => 'C:\\xampp\\htdocs\\view\\email_cliente_cadastro.tpl',
      1 => 1571676444,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dade1239bcaf6_76350833 (Smarty_Internal_Template $_smarty_tpl) {
?><h3>Olá <?php echo $_smarty_tpl->tpl_vars['NOME']->value;?>
 , obrigado por se cadastrar em <?php echo $_smarty_tpl->tpl_vars['SITE']->value;?>
</h3>

<p> Cadastro efetuado com sucesso,  para fazer o login use seu email cadastrado ( <?php echo $_smarty_tpl->tpl_vars['EMAIL']->value;?>
 )
<br>
com a sua senha, sua senha neste momento é, <?php echo $_smarty_tpl->tpl_vars['SENHA']->value;?>
 , após efetuar o Login, é EXTREMAMENTE IMPORTANTE modificá-la !

</h3>
<p>
    Para acessar o site e sua conta basta usar este endereço <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHA_CONTA']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['PAG_MINHA_CONTA']->value;?>
</a>
    
</p>
<?php }
}
