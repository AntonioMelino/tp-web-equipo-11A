<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrabajoPracticoWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="<%= ResolveUrl("~/Content/estilos.css") %>" rel="stylesheet" type="text/css" />

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
        <h5>Tu tienda de informática de confianza</h5>
        <p>Ofrecemos productos de alta calidad y servicio excepcional para todas tus necesidades tecnológicas.</p>
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


    <!-- ABOUT -->
<section id="about" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center" data-aos="fade-down" data-aos-delay="50">
                <div class="section-title">
                    <h1 class="display-4 fw-semibold">¿Por qué elegirnos?</h1>
                    <div class="line"></div>
                    <p>En nuestra tienda de informática, nos apasiona ofrecerte la mejor experiencia y productos de calidad.</p>
                </div>
            </div>
        </div>
        <div class="row justify-content-between align-items-center">
            <div class="col-lg-6" data-aos="fade-down" data-aos-delay="50">
                <img src="https://i.pinimg.com/564x/12/52/0e/12520e6a9648abb7c452545d6d836b3e.jpg" alt="">
            </div>
            <div data-aos="fade-down" data-aos-delay="150" class="col-lg-5">
                <h1>Somos la mejor tienda de informática</h1>
                <p class="mt-3 mb-4">Ofrecemos productos de última tecnología y un servicio al cliente excepcional que te hará sentir como en casa.</p>
                <div class="d-flex pt-4 mb-3">
                    <div class="iconbox me-4">
                        <i class="ri-mail-send-fill"></i>
                    </div>
                    <div>
                        <h5>Amplia gama de productos</h5>
                        <p>Desde computadoras hasta periféricos, tenemos todo lo que necesitas para tu hogar o negocio.</p>
                    </div>
                </div>
                <div class="d-flex mb-3">
                    <div class="iconbox me-4">
                        <i class="ri-user-5-fill"></i>
                    </div>
                    <div>
                        <h5>Asesoría personalizada</h5>
                        <p>Nuestro equipo de expertos está listo para ayudarte a elegir el producto perfecto para ti.</p>
                    </div>
                </div>
                <div class="d-flex">
                    <div class="iconbox me-4">
                        <i class="ri-rocket-2-fill"></i>
                    </div>
                    <div>
                        <h5>Compromiso con la calidad</h5>
                        <p>Trabajamos solo con marcas de confianza para garantizar tu satisfacción y seguridad.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        
</asp:Content>
