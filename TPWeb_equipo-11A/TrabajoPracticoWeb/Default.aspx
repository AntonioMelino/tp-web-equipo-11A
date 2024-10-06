<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrabajoPracticoWeb.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="<%= ResolveUrl("~/Content/estilos.css") %>" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div id="carouselExampleDark" class="carousel carousel-dark slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="https://scontent.faep28-1.fna.fbcdn.net/v/t1.6435-9/121158499_3411750129049275_1494745434371283104_n.png?_nc_cat=102&ccb=1-7&_nc_sid=13d280&_nc_eui2=AeEoeodvMN-DR7wbAOBXVCKwVTvVb5jR_K9VO9VvmNH8ryEKnkt2G4qAuAnUAxvUYkTWFcFLu9PcDHbX-X4wImqt&_nc_ohc=orq7J97YQ20Q7kNvgGhPDMi&_nc_ht=scontent.faep28-1.fna&_nc_gid=AVgU6aJt3yo05w-tWFBlrSN&oh=00_AYBt7TGYlyMbyaXoNfLdErXQ0cWsICV1Z0_rOVNixINHTg&oe=672994AE" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>¡CANJEA TU CODIGO!</h5>
                                <p>Hacé click <a href="Promociones.aspx">ACÁ</a> para canjear tu código obtenido por tu compra.</p>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2022/02/compra-online-2613331.jpg?tf=1200x" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>NUESTRO CATÁLOGO</h5>
                                <p>Conocé más sobre nuestros <a href="CatalogoArticulos.aspx">PRODUCTOS</a></p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="https://scontent.faep28-1.fna.fbcdn.net/v/t39.30808-6/435912904_834941152004373_7594518411909791403_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHpl1s_ZRCIOS875zoYLn92OCgGSjwf9Cc4KAZKPB_0Jzzg274GgBzuvgtgJGLOUXkWIfED-2zHiVLMsbdp2z7r&_nc_ohc=RGJw7en6i98Q7kNvgGohC1j&_nc_ht=scontent.faep28-1.fna&_nc_gid=A_i1i5Z50PAf0_J4X2sPfhH&oh=00_AYC85eD8FLwWrrJ0yGtsB1TqLzuQOgb_IoXjG3LZTswHqw&oe=6707DF22" class="d-block w-100" alt="...">
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
            </div>
        </div>
    </div>
    
    <!-- ABOUT -->
    <section id="about" class="section-padding">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center" data-aos="fade-down" data-aos-delay="50">
                    <div class="section-title">
                        <h1 class="display-4 fw-semibold">¿Por qué elegirnos?</h1>
                        <div class="line"></div>
                        <p>En nuestra tienda de informática, nos apasiona brindarte una experiencia de compra excepcional, con productos de calidad y un servicio que va más allá de lo esperado.</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-6" data-aos="fade-down" data-aos-delay="50">
                    <img src="https://i.pinimg.com/564x/12/52/0e/12520e6a9648abb7c452545d6d836b3e.jpg" alt="">
                </div>
                <div data-aos="fade-down" data-aos-delay="150" class="col-lg-5">
                    <h1>Líderes en tecnología</h1>
                    <p class="mt-3 mb-4">Somos tu aliado en soluciones informáticas. Ofrecemos productos de última generación y un servicio al cliente que te hará sentir respaldado en cada paso.</p>
                    <div class="d-flex pt-4 mb-3">
                        <div class="iconbox me-4">
                            <i class="ri-mail-send-fill"></i>
                        </div>
                        <div>
                            <h5>Variedad para cada necesidad</h5>
                            <p>Nuestro equipo está aquí para guiarte en la elección del producto ideal, adaptado a tus necesidades y presupuesto.</p>
                        </div>
                    </div>
                    <div class="d-flex mb-3">
                        <div class="iconbox me-4">
                            <i class="ri-user-5-fill"></i>
                        </div>
                        <div>
                            <h5>Asesoría experta</h5>
                            <p>Nuestro equipo está aquí para guiarte en la elección del producto ideal, adaptado a tus necesidades y presupuesto.</p>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="iconbox me-4">
                            <i class="ri-rocket-2-fill"></i>
                        </div>
                        <div>
                            <h5>Compromiso con la excelencia</h5>
                            <p>Solo trabajamos con las mejores marcas, garantizando que cada compra te brinde calidad, durabilidad y confianza.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

