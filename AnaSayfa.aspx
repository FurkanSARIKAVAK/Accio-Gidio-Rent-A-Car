<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Accio_Gidio_Projesi.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #AnaSayfa {
            background: linear-gradient(45deg, #ff3366, #33ccff, #99ff33);
            padding: 20px; 
            color: #ffffff; 
            text-align: center; 
        }

        h2 {
            font-family: Arial;
            font-size: 4rem;
        }

        h3 {
            font-family: 'Bauhaus 93';
            font-size: 2rem;
        }

        #logo {
            height: 340px;
            width: 340px;
            border-radius: 125px;
        }

        #LogoDiv {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        p {
            color: white;
            font-size: 4rem;
        }
    </style>

    <div id="AnaSayfa">
        <h2>Accio-Gidio</h2>
        <h3>Araç Kiralama</h3>
    </div>

    <div id="LogoDiv">
        <p>Bu yazı logo ile AnaSayfa arasında boşluk vermeyi sağlamak için yazılmıştır.</p>
        <img id="logo" src="images/Accio-Gidio.png" alt="Accio-Gidio Logo" />
        <p>Bu yazı logo ile AnaSayfa arasında boşluk vermeyi sağlamak için yazılmıştır.</p>
    </div>
</asp:Content>
