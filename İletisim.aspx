<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="Accio_Gidio_Projesi.İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        h3, p, strong {
            text-align: center;
        }

        strong {
            font-family: system-ui;
            color: cadetblue;
            font-size: 25px;
        }

        h3 {
            font-size: 40px;
            font-family: system-ui;
            color: cadetblue;
        }

        p {
            font-size: 20px;
        }
    </style>

    <div>
        <h3>Bizimle İletişime Geçin</h3>
        <p>
            Accio-Gidio Araç Kiralama olarak, sizlere en iyi hizmeti sunabilmek ve sorularınızı yanıtlamak için buradayız. İletişime geçmekten çekinmeyin, size yardımcı olmaktan memnuniyet duyarız.
        </p>
        <p>
            Eğer araç kiralama hizmetlerimiz veya diğer konular hakkında bilgi almak istiyorsanız, aşağıdaki iletişim bilgilerimizden bize ulaşabilirsiniz.
        </p>

        <!-- İletişim Bilgileri -->
        <p>
            <strong>İletişim Bilgilerimiz:</strong><br>
            Adres: Çardak Havalimanı, Denizli, Türkiye<br>
            Telefon: +90 258 456 789<br>
            E-posta: info@acciogidio.com
        </p>
    </div>
</asp:Content>
