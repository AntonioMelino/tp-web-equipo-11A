<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrabajoPracticoWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- Estilos personalizados -->
    <style>
        .carousel-inner img {
            width: 100%;
            height: 90vh;
            object-fit: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
<div id="carouselExampleDark" class="carousel carousel-dark slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="https://i.pinimg.com/564x/6b/70/b0/6b70b0a3298d0c7ba5a4f284edb791b5.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>NUEVAS PROMOCIONES</h5>
        <p>Hacé click <a href="Promociones.aspx">ACÁ</a> para ir a nuestras promos!</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="https://i.pinimg.com/564x/2b/53/5c/2b535ce158852cbf98073a4294dc5333.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>NUESTRO CATÁLOGO</h5>
        <p>Conocé mas sobre nuestros <a href="CatalogoArticulos.aspx">PRODUCTOS</a></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://i.pinimg.com/564x/c8/fd/f7/c8fdf7fd61e5b7a2971b57325216ce03.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>SOMOS EL TEAM 11A</h5>
        <p>Este es nuestro proyecto</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        
</asp:Content>
