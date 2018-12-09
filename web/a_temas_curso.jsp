<%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 06/12/2018
  Time: 12:01 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:include page='views/header.jsp'></jsp:include>

<div class="container">
    <form class="col s12" action="/crearTemasCurso" method="post">
        <div class="row">
            <div class="input-field col s12 center">
                <p class="center login-form-text">Insertar un nuevo Temas curso</p>
            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8 center">
                <input id="ID_TEMAS" name="ID_TEMAS" type="text" value="">
                <label for="ID_TEMAS" class="center-align">ID Temas</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="NOMBRE_TEMA" name="NOMBRE_TEMA" type="text" value="">
                <label for="NOMBRE_TEMA" class="center-align">Nombre del tema</label>
            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">
                <input id="ID_CURSO" name="ID_CURSO" type="text" value="">
                <label for="ID_CURSO" class="center-align">Id Curso</label>
            </div>
            <div class="col s2">

            </div>
        </div>

        <div class="row margin">
            <div class="col s2">

            </div>
            <div class="input-field col s8">

            </div>
            <div class="col s2">

            </div>
        </div>
        <div class="row">
            <div class="col s4">

            </div>
            <div class="input-field col s4">
                <input type="submit" value="Insertar" onclick='return(verif(this.form)); MM_validateForm()' class="btn col s12">
            </div>
            <div class="col s4">

            </div>
        </div>
    </form>
</div>


<jsp:include page='views/footer.jsp'></jsp:include>

