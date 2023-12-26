using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Accio_Gidio_Projesi
{
    public partial class AracKirala : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlPaketSec_SelectedIndexChanged(object sender, EventArgs e)
        {
            // DropDownList seçildiğinde yapılacak işlemler burada
            int secilenPaketDegeri = Convert.ToInt32(ddlPaketSec.SelectedValue);
            string secilenPaketAdi = ddlPaketSec.SelectedItem.Text;

            // PaketSiparisBilgileri fonksiyonunu çağırarak işlemleri gerçekleştir
            PaketSiparisBilgileri(secilenPaketDegeri, secilenPaketAdi);

            // Ödeme bilgileri kısmını göster veya gizle
            if (secilenPaketDegeri > 0)
            {
                odemeBilgileri.Visible = true;
            }
            else
            {
                odemeBilgileri.Visible = false;
            }
        }


        private void PaketSiparisBilgileri(int secilenPaketDegeri, string secilenPaketAdi)
        {
            // Burada seçilen aracın görselini ve fiyatını görüntülüyoruz.
            imgSecilenAraba.ImageUrl = $"~/images/{secilenPaketAdi.Split('-')[0].Trim()}.jpg";
            lblSecilenArabaFiyat.Text = $"Toplam Fiyat: {ToplamFiyatAl(secilenPaketDegeri)}₺";

            // Görünürlüğü true yaparak kullanıcıya seçilen aracı göster.
            secilenAraba.Visible = true;
        }

        private int ToplamFiyatAl(int secilenPaketDegeri)
        {
            // Seçilen paketin günlük fiyatını ve gün sayısını kullanarak toplam fiyatı hesapla.
            int gunlukFiyat = 0;

            switch (secilenPaketDegeri)
            {
                case 1: // Citroen
                    gunlukFiyat = 1250;
                    break;
                case 2: // Fiat
                    gunlukFiyat = 850;
                    break;
                case 3: // Hyundai
                    gunlukFiyat = 750;
                    break;
                case 4: // Nissan
                    gunlukFiyat = 1450;
                    break;
                case 5: // Peugeot
                    gunlukFiyat = 1050;
                    break;
                default:
                    // Tanımsız bir değerse
                    break;
            }

            // Teslim alma ve teslim etme tarihleri arasındaki gün sayısını al.
            DateTime start = Convert.ToDateTime(startDate.Text);
            DateTime end = Convert.ToDateTime(endDate.Text);
            int gunSayisi = (int)(end - start).TotalDays;

            // Toplam fiyatı hesapla ve geri döndür.
            return gunlukFiyat * gunSayisi;
        }

        protected void btnSiparisEt_Click(object sender, EventArgs e)
        {
            lblSonuc.Text = "Siparişiniz oluşturulmuştur. Aracınız Accio-Gidio :)";
        }

    }
}