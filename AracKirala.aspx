<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AracKirala.aspx.cs" Inherits="Accio_Gidio_Projesi.AracKirala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

        <style>
            #calendar {
                width: 300px;
            }

            #Arabalar {
                padding: 10px;
                display: flex;
                justify-content: space-around;
                margin-top: 20px;
            }

            .Araba {
                text-align: center;
            }

            .Bilgi {
                background-color: cyan;
            }

            h2 {
                text-align: center;
                font-family: Calibri;
                font-size: 2rem;
                color: #3399FF;
            }

            .Fiyat {
                padding: 10px;
                text-align: center;
            }

            .Siparis {
                padding: 5px;
                width: 40%;
            }

            .Hesapla {
                padding: 5px;
                float: left;
            }

            #secilenAraba {
                padding: 5px;
                float: left;
            }

            .Odeme {
                padding: 5px;
                float: right;
                width: 50%;
            }

            #telefonNumarasi {
                background-color: #AAEAEA;
            }

            #kartNumarasi {
                background-color: #AAEAEA;
            }

            #sonKullanmaTarihi {
                background-color: #AAEAEA;
            }

            #cvvTextBox {
                background-color: #AAEAEA;
            }
        </style>

        <h2>Araç Kiralama Otomasyonu</h2>

        <!-- Tarih Seçme Kısmı -->
        <div>
            <asp:Label runat="server" AssociatedControlID="startDate" Text="Teslim Alma Tarihi:" Font-Bold="True"></asp:Label>
            <asp:TextBox runat="server" ID="startDate" type="date" BackColor="#AAEAEA" Width="176px"></asp:TextBox>

            <asp:Label runat="server" AssociatedControlID="endDate" Text="Teslim Etme Tarihi:" Font-Bold="True"></asp:Label>
            <asp:TextBox runat="server" ID="endDate" type="date" BackColor="#AAEAEA" Width="176px"></asp:TextBox>
        </div>


        <div id="Arabalar">

            <!-- 1.Araba -->
            <div class="Araba">
                <asp:Image ID="Image1" runat="server" BorderColor="#3399FF" BorderStyle="Dashed" Height="145px" ImageUrl="~/images/Citroen.jpg" Width="218px" />
                <p style="font-weight: bold;">Citroen</p>

                <div class="Bilgi">
                    <b>Paket Bilgileri</b>
                    <ul class="icon-list">
                        <li>
                            <span>Dolu Depo</span>
                        </li>
                        <li>
                            <span>Dizel/Benzin</span>
                        </li>
                        <li>
                            <span>Otomatik</span>
                        </li>
                    </ul>
                </div>

                <div class="Fiyat">
                    <asp:Label ID="LCitroen" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" Text="1250₺/Gün"></asp:Label>
                </div>
            </div>

            <!-- 2.Araba -->
            <div class="Araba">
                <asp:Image ID="Image2" runat="server" BorderColor="#3399FF" BorderStyle="Dashed" Height="145px" ImageUrl="~/images/Fiat.jpg" Width="218px" />
                <p style="font-weight: bold;">Fiat</p>

                <div class="Bilgi">
                    <b>Paket Bilgileri</b>
                    <ul class="icon-list">
                        <li>
                            <span>Dolu Depo</span>
                        </li>
                        <li>
                            <span>Dizel/Benzin</span>
                        </li>
                        <li>
                            <span>Manuel</span>
                        </li>
                    </ul>
                </div>

                <div class="Fiyat">
                    <asp:Label ID="LFiat" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" Text="850₺/Gün"></asp:Label>
                </div>
            </div>

            <!-- 3.Araba -->
            <div class="Araba">
                <asp:Image ID="Image3" runat="server" BorderColor="#3399FF" BorderStyle="Dashed" Height="145px" ImageUrl="~/images/Hyundai.jpg" Width="218px" />
                <p style="font-weight: bold;">Hyundai</p>

                <div class="Bilgi">
                    <b>Paket Bilgileri</b>
                    <ul class="icon-list">
                        <li>
                            <span>Dolu Depo</span>
                        </li>
                        <li>
                            <span>Dizel/Benzin</span>
                        </li>
                        <li>
                            <span>Manuel</span>
                        </li>
                    </ul>
                </div>

                <div class="Fiyat">
                    <asp:Label ID="LHyundai" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" Text="750₺/Gün"></asp:Label>
                </div>
            </div>

            <!-- 4.Araba -->
            <div class="Araba">
                <asp:Image ID="Image4" runat="server" BorderColor="#3399FF" BorderStyle="Dashed" Height="145px" ImageUrl="~/images/Nissan.jpg" Width="218px" />
                <p style="font-weight: bold;">Nissan</p>

                <div class="Bilgi">
                    <b>Paket Bilgileri</b>
                    <ul class="icon-list">
                        <li>
                            <span>Dolu Depo</span>
                        </li>
                        <li>
                            <span>Dizel/Benzin</span>
                        </li>
                        <li>
                            <span>Otomatik</span>
                        </li>
                    </ul>
                </div>

                <div class="Fiyat">
                    <asp:Label ID="LNissan" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" Text="1450₺/Gün"></asp:Label>
                </div>
            </div>

            <!-- 5.Araba -->
            <div class="Araba">
                <asp:Image ID="Image5" runat="server" BorderColor="#3399FF" BorderStyle="Dashed" Height="145px" ImageUrl="~/images/Peugeot.jpg" Width="218px" />
                <p style="font-weight: bold;">Peugeot</p>

                <div class="Bilgi">
                    <b>Paket Bilgileri</b>
                    <ul class="icon-list">
                        <li>
                            <span>Dolu Depo</span>
                        </li>
                        <li>
                            <span>Dizel/Benzin</span>
                        </li>
                        <li>
                            <span>Otomatik</span>
                        </li>
                    </ul>
                </div>

                <div class="Fiyat">
                    <asp:Label ID="LPeugeot" runat="server" BackColor="White" BorderColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Italic="False" Font-Size="Large" Font-Underline="False" ForeColor="Red" Text="1050₺/Gün"></asp:Label>
                </div>
            </div>
        </div>

        <!-- Sipariş -->
        <div class="Siparis">

            <!-- Paket Seç ve Hesapla -->
            <div class="Hesapla">
                <asp:Label ID="Label1" runat="server" Text="Paket Seç"></asp:Label>
                <asp:DropDownList ID="ddlPaketSec" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlPaketSec_SelectedIndexChanged">
                    <asp:ListItem Text="-- Paket Seç --" Value="0" />
                    <asp:ListItem Text="Citroen - 1250₺/Gün" Value="1" />
                    <asp:ListItem Text="Fiat - 850₺/Gün" Value="2" />
                    <asp:ListItem Text="Hyundai - 750₺/Gün" Value="3" />
                    <asp:ListItem Text="Nissan - 1450₺/Gün" Value="4" />
                    <asp:ListItem Text="Peugeot - 1050₺/Gün" Value="5" />
                </asp:DropDownList>

                <div id="secilenAraba" runat="server" visible="false">
                    <h3 style="font-weight: bold; color: #3399FF;">Seçilen Araba:</h3>
                    <asp:Image ID="imgSecilenAraba" runat="server" Height="145px" Width="218px" />
                    <asp:Label ID="lblSecilenArabaFiyat" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

        <!-- Ödeme Kısmı -->
        <div class="Odeme" runat="server" id="odemeBilgileri" visible="false">
            <h3 style="font-weight: bold; color: #3399FF;">Ödeme Bilgileri</h3>

            <!-- Telefon Numarası -->
            <div style="margin-bottom: 10px;">
                <label for="telefonNumarasi" style="font-weight: bold; color: #0099FF;">Telefon Numarası:</label>
                <input type="text" id="telefonNumarasi" runat="server" clientidmode="Static" class="auto-style2" style="margin-left: 25px;" />
            </div>

            <!-- Kart Numarası -->
            <div style="margin-bottom: 10px;">
                <label for="kartNumarasi" style="font-weight: bold; color: #0099FF;">Kredi Kartı Numarası:</label>
                <input type="text" id="kartNumarasi" runat="server" clientidmode="Static" />
            </div>

            <!-- Son Kullanma Tarihi -->
            <div style="margin-bottom: 10px;">
                <label for="sonKullanmaTarihi" style="font-weight: bold; color: #0099FF;">Son Kullanma Tarihi:</label>
                <input type="text" id="sonKullanmaTarihi" runat="server" clientidmode="Static" placeholder="AA/YY" style="margin-left: 8px; width: 55px;" />
            </div>

            <!-- CVV -->
            <div style="margin-bottom: 10px;">
                <label for="cvv" style="font-weight: bold; color: #0099FF;">CVV:</label>
                <asp:TextBox runat="server" ID="cvvTextBox" ClientIDMode="Static" MaxLength="3" Style="width: 55px; margin-left: 126px;" />
            </div>

            <div style="margin-bottom: 10px">
                <asp:Button runat="server" ID="btnSiparisEt" Text="Sipariş Et" OnClick="btnSiparisEt_Click" Font-Bold="True" ForeColor="#0099FF" />
                <asp:Label ID="lblSonuc" runat="server" Style="font-weight: bold; margin-left: 30px;"></asp:Label>
            </div>
        </div>

        <script>
            function calculateRent() {
                // JavaScript ile teslim alma ve teslim etme tarihleri arasındaki gün sayısını al
                var startDate = document.getElementById('<%= startDate.ClientID %>').value;
                var endDate = document.getElementById('<%= endDate.ClientID %>').value;
                var start = new Date(startDate);
                var end = new Date(endDate);
                var dayCount = Math.ceil((end - start) / (1000 * 60 * 60 * 24));

                // JavaScript ile seçilen paketin değerini ve adını al
                var PaketSec = document.getElementById('<%= ddlPaketSec.ClientID %>');
                var secilenPaketDegeri = selectedPackage.options[PaketSec.selectedIndex].value;
                var secilenPaketAdi = selectedPackage.options[PaketSec.selectedIndex].text;
            }
        </script>
    </form>

</asp:Content>

