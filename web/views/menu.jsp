<%--
  Created by IntelliJ IDEA.
  User: Carlos
  Date: 24/11/2018
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col s12">
    <header id="header" class="page-topbar">
        <nav class="navbar-color gradient-45deg-light-blue-cyan">
            <div class="nav-wrapper">
                <ul class="right hide-on-med-and-down">
                    <li><a href="index.jsp"><i class="material-icons left">home</i>Inicio</a></li>
                    <li>
                        <a href="#!" class="waves-effect waves-block waves-light profile-button"
                           data-activates="document-dropdown">
                            <i class="material-icons left">view_module</i>Temas curso
                        </a>
                        <ul id="document-dropdown" class="dropdown-content" style="white-space: nowrap; opacity: 1; left: 1710.64px; position: absolute; top: 64px; display: none;">
                            <li>
                                <a href="text.jsp" class="grey-text text-darken-1">
                                    <i class="material-icons">font_download</i>Escribir texto</a>
                            </li>
                            <li>
                                <a href="file.jsp" class="grey-text text-darken-1">
                                    <i class="material-icons">attach_file</i>Subir archivo</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="acercade.jsp"><i class="material-icons left">help</i>Acerca de</a></li>
                    <li>
                        <a href="manual.jsp">
                            <i class="material-icons left">book</i>Manual</a>
                    </li>
                    <li>
                        <a href="logout.jsp">
                            <i class="material-icons left">input</i>Salir</a>
                    </li>
                </ul>
            </div>
        </nav>
        <!-- end header nav-->
    </header>
</div>
