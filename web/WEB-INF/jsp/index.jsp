<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Alta</title>
        
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
    <script>
        function addProductoModal(){
           $('#ModalAlta').modal('show');
        }
        
        function ModProductoModal(){
           $('#ModalModifica').modal('show');
        }
     </script>
    </head>

    <body>
        <div class="container-lg">
            <div class="row" style="margin-top: 35px;">
                <div class="col-12" style="text-align: right;">
                    <button onclick="addProductoModal()">AGREGAR</button>
                </div>
                
                <div class="col-12" style="text-align: left;">
                    <span>Filto:</span> 
                    <select name="filtro">
                        <option value="T">Todo</option>
                        <option value="M">Modelo</option>
                        <option value="S">SKU</option>
                    </select>
                    <input type="text" name="palabra">
                    <button class="btn-primary" style="width: 100px;">Buscar</button>
                </div>
                
            </div>
            
            <div class="row" style="margin-top: 15px;">
                <div class="col-12">
                    <table class="table table-striped" style="text-align: center;">
                        <thead>
                            <td>ID</td>
                            <td>SKU</td>
                            <td>FERT</td>
                            <td>MODELO</td>
                            <td>TIPO</td>
                            <td>NUMERO DE SERIE</td>
                            <td>FECHA</td>
                            <td>STATUS</td>
                            <td>ACCIÓN</td>
                        </thead>
                        <tbody>
                            <tr> 
                                <td>1</td>
                                <td>1234678</td>
                                <td>FERT3211631</td>
                                <td>2132354C</td>
                                <td>TRABAJO</td>
                                <td>WEWE567567XCV</td>
                                <td>2021-01-01</td>
                                <td>A</td>
                                <td>
                                    <button onclick="ModProductoModal(1)">M</button>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
        
   
        <div id="ModalAlta" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Alta de Producto</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form:form name="submitForm" method="POST">
                        <div align="center">
                            <table>
                                <tr>
                                    <td>SKU</td>
                                    <td><input 
                                            type="text" 
                                            name="psku" 
                                            placeholder="000000000000"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Fert</td>
                                    <td><input 
                                            type="text" 
                                            name="pfert" 
                                            placeholder="000000000000"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Modelo</td>
                                    <td><input 
                                            type="text" 
                                            name="pmodelo" 
                                            placeholder="Descripción"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Tipo</td>
                                    <td>
                                        <select name="tipo">
                                            <option value="T"> Trabajo</option>
                                            <option value="D"> Deportivo</option>
                                            <option value="I"> Infantil</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Num. Serie</td>
                                    <td><input 
                                            type="text" 
                                            name="pnumserie" 
                                            placeholder="000000000000"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Fecha</td>
                                    <td><input type="date" name="pfecha" /></td>
                                </tr>
                                <tr>
                                    <td>Status</td>
                                    <td><input type="text" size="1" maxlength="1" name="pestatus" value="A"/></td>
                                </tr>
                            </table>
                            <div style="color: red">${error}</div>
                        </div>
                    </form:form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                  <button type="submit" class="btn btn-primary">Salvar</button>
                </div>
              </div>
            </div>
        </div>
                        
                        
       <div id="ModalModifica" class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Modifica de Producto</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form:form name="submitForm" method="POST">
                        <div align="center">
                            <table>
                                <tr>
                                    <td>SKU</td>
                                    <td><input 
                                            type="text" 
                                            name="psku" 
                                            placeholder="000000000000"
                                            value="1234678"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Fert</td>
                                    <td><input 
                                            type="text" 
                                            name="pfert" 
                                            placeholder="000000000000"
                                            value="FERT3211631"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Modelo</td>
                                    <td><input 
                                            type="text" 
                                            name="pmodelo" 
                                            placeholder="Descripción"
                                            value="2132354C"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Tipo</td>
                                    <td>
                                        <select name="tipo">
                                            <option value="T" selected> Trabajo</option>
                                            <option value="D"> Deportivo</option>
                                            <option value="I"> Infantil</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Num. Serie</td>
                                    <td><input 
                                            type="text" 
                                            name="pnumserie" 
                                            placeholder="000000000000"
                                            value="WEWE567567XCV"
                                            /></td>
                                </tr>
                                <tr>
                                    <td>Fecha</td>
                                    <td><input 
                                            type="date" 
                                            name="pfecha" 
                                            placeholder="AAAA-MM-DD"
                                            value="2021-01-01"/></td>
                                </tr>
                                <tr>
                                    <td>Status</td>
                                    <td>
                                         <select name="pestatus">
                                            <option value="A" selected> Activo</option>
                                            <option value="E">Eliminar</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                            <div style="color: red">${error}</div>
                        </div>
                    </form:form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                  <button type="submit" class="btn btn-primary">Actualizar</button>
                </div>
              </div>
            </div>
        </div>
    </body>
</html>
