<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="Nhom2.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Thông tin về công ty!</h1>
        <h2>Công ty thân thiện.</h2>
    </hgroup>

    <article>
        <p>        
            Chúng tôi cung cấp mọi thứ khách hàng cần!
        </p>

        <p>        
            Phục vụ mọi lúc, mọi nơi!
        </p>

        <p>        
            Luôn có trách nhiệm với sản phẩm!
        </p>
    </article>

    <aside>
        <h3>Chúng tôi luôn đồng hành cùng các bạn!</h3>
        <p>        
            Hãy yên tâm khi mua hàng của chúng tôi!
        </p>
        <ul>
            <li><a id="A1" runat="server" href="~/">Trang chủ</a></li>
            <li><a id="A2" runat="server" href="~/About.aspx">Thông tin</a></li>
            <li><a id="A3" runat="server" href="~/Contact.aspx">Liên hệ</a></li>
        </ul>
    </aside>
</asp:Content>