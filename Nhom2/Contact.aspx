<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="Nhom2.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h2>Nhóm 2 INF205.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Số điện thoại:</h3>
        </header>
        <p>
            <span class="label">Trong giờ hành chính:</span> 0989348892</p>
        <p>
            <span class="label">Sau giờ hành chính:</span>
            <span>01645258117</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Hỗ trợ:</span>
            <span><a href="mailto:s2nobita92@gmail.com">s2nobita92@gmail.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:sondn2222@gmail.com">sondn2222@gmail.com</a></span>
        </p>
        
    </section>

    <section class="contact">
        <header>
            <h3>Địa chỉ:</h3>
        </header>
        <p>
            Số 1 - Hùng Vương - Ba Đình - Hà Nội
        </p>
        <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBs61UkKrhWRIrY08urvw21vYEID11gBAM'></script><div style='overflow:hidden;height:400px;width:520px;'><div id='gmap_canvas' style='height:400px;width:520px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='https://www.embedmap.net/'>add a google map to your website</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=f599cfdfd2564664434590c908463ad7c7ea2450'></script><script type='text/javascript'>function init_map() { var myOptions = { zoom: 12, center: new google.maps.LatLng(21.0370047, 105.83523420000006), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(21.0370047, 105.83523420000006) }); infowindow = new google.maps.InfoWindow({ content: '<strong>Số 1</strong><br>Hùng Vương<br> Hà Nội<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>

    </section>
</asp:Content>