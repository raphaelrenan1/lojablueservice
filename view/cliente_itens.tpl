<br><h4 class="text-center">Dados do pedido</h4>

<!-- informações sobre o pedido -->
<section class="row">
    
    <center>
    <table class="table table-bordered" style="width: 80%">
        <tr class="bg-success">
            
            <td><b>Data:</b> {$ITENS.1.ped_data}</td>
            
            <td><b>Hora:</b> {$ITENS.1.ped_hora}</td>
            
            <td><b>Referência:</b> {$ITENS.1.ped_ref}</td>
            
            <td><b>Já está Pago?</b> {$ITENS.1.ped_pag_status}</td>
            
        </tr>  
        
        
    </table>
    </center>
    
</section>


<!-- listagem dos itens -->
<section class="row" id="listaitens">
    
    <center>
    <table class="table table-bordered" style="width: 80%">
        
        <tr class="text-success bg-success">
            <td></td>
            <td>Produto</td>
            <td>Valor Unitário</td>
            <td>Quantidade</td>
            <td>Valor Total</td>
        </tr>
        
        {foreach from=$ITENS item=P}
        <tr>
            
            <td><center><img src="{$P.item_img}" alt=""></center></td>
            <td> {$P.item_nome}</td>
            <td class="text-right"> R$ {$P.item_valor}</td>
            <td class="text-center"> {$P.item_qtd}</td>
            <td class="text-right"> R$ {$P.item_sub}</td>
            
        </tr>
        
        {/foreach}
        
        
    </table>
    </center>
    
    
    
</section>
        
        
        <section class="row" id="resumo">

            <center>
                <table class="table table-bordered" style="width: 80%">
                    <tr>
                        <td class="text-danger"> <b>Valor Total dos Produtos:</b> R$ {$TOTAL}</td>

                        <td class="text-danger"> <b>Valor do Frete:</b> R$ {$FRETE}</td>                        

                        <td class="text-danger"> <b>Valor Total:</b> R$ {$FRETE_TOTAL}</td>

                    </tr>  


                </table>
             
                        
        </section>  
                        
                        
              {if $ITENS.1.ped_pag_status =='NAO'}          
                         <!--  modos de pagamento e outras informações --> 
        <section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>     
            
            <div class="col-md-4">
              
            </div>
            <!-- botao de pagamento  -->
            <div class="col-md-4">
               
                 <button class="btn btn-success btn-lg btn-block" onclick=""> Pague com o Pagseguro </button>
                
                
                   <img src="{$TEMA}/images/logo-pagseguro.png"  alt=""> 
                   <script type="text/javascript" src="{$PS_SCRIPT}"></script>
                
            </div>
            <div class="col-md-4">
                
            </div>
         
            
        </section>



 {/if}


