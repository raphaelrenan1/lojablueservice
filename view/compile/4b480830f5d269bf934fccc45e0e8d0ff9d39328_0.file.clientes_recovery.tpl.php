<?php
/* Smarty version 3.1.33, created on 2019-10-21 19:07:24
  from 'C:\xampp\htdocs\view\clientes_recovery.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dade5ccd1e944_57125466',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b480830f5d269bf934fccc45e0e8d0ff9d39328' => 
    array (
      0 => 'C:\\xampp\\htdocs\\view\\clientes_recovery.tpl',
      1 => 1571677524,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dade5ccd1e944_57125466 (Smarty_Internal_Template $_smarty_tpl) {
?><h4 class="text-center">Digite seu email cadatrado para receber uma nova senha </h4>
<hr>

<form name="recuperarsenha" method="post" action="">
    
    <section>
        <div class="col-md-4"></div>
        
        <div class="col-md-4">
            <label>Digite seu email cadastrado</label>
          
            <input type="email" name="cli_email" id="cli_email" class="form-control" required>
            <br>
            <button type="submit" class="btn btn-warning btn-block"> Recuperar </button>
        </div>
       
        <div class="col-md-4">
       
            
            
        </div>
        
        
        
    </section>

  
    
</form><?php }
}
