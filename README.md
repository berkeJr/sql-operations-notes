# SQL(Structured Query Language) Notes and Cheat Sheet! 
[![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) <a name="awesome-frontend-resources"></a>

# Döküman Hakkında

<p>
Buradaki doküman SQL ile ilgili hazırladığım dokümantasyon kaynağıdır. Dökümantasyonu hazırlarken Engin Demiroğ'un SQL eğitiminden ve internette bulunan açık kaynak dökümantasyon sayfalarından faydalandım. Bu eğitim serisi, SQL sorgu dili ile veri tabanı sistemlerini nasıl yönetebileceğimizi, verilerimizi nasıl sağlıklı bir şekilde saklayabileceğimizi gösteren konu anlatımlarından oluşturulmuştur. Konular ve daha fazla bilgi için aşağıdaki bilgileri gözden geçirebilirsiniz.
</p>

## SQL Sorgu Dili Dökümantasyonu Konu İçeriği

<table class="table table-striped">

  <tbody>
    <tr>
      <th scope="row">82</th>
      <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/82.sql-intro.md" >SQL Nedir?</a></th>
      <th scope="row">88</th>
      <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/88.like-between-in.md" >SQL Like, Between, In İle Çalışmak</a></th>
	  <th scope="row">13</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/s%C3%BCre%C3%A7_i%C5%9Flemleri.md#s%C3%BCre%C3%A7lerprocess" >Süreç İşlemleri</a></th>
	  <th scope="row">19</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/a%C4%9F_komutlar%C4%B1.md#a%C4%9Fnetwork-komutlar%C4%B1" >Ağ Komutları</a></th>
    </tr>
    <tr>
      <th scope="row">83</th>
      <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/83.normalisation-odakli-workshop.md" >Normalisation Odaklı Workshop</a></th>
      <th scope="row">89</th>
      <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/89.aggregeation-functions.md" >Aggregeation Fonksiyonlarıyla Çalışmak</a></th>
	  <th scope="row">14</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/disk_i%C5%9Flemleri.md#disk-%C4%B0%C5%9Flemleri" >Disk İşlemleri</a></th>
	  <th scope="row">20</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/vim_edit%C3%B6r%C3%BC.md#vim-edit%C3%B6r%C3%BC" >Vim Editörü</a></th>
    </tr>
    <tr>
      <th scope="row">84</th>
	  <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/84.tasarim-into-db.md" >Tasarımın Gerçek Veri Tabanına Aktarılması</a></th>
	  <th scope="row">9</th>
      <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/dosya_i%C5%9Flemleri.md#dosya-%C4%B0%C5%9Flemleri" >Dosya İşlemleri</a></th>
	  <th scope="row">15</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/%C3%A7al%C4%B1%C5%9Fma_seviyeleri-servisler.md#%C3%87al%C4%B1%C5%9Fma-seviyelerirunlevels" >Çalışma Seviyeleri - Servisler</a></th>
	  <th scope="row">21</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/konsoldan_dosya_indirmek.md#konsol-%C3%9Czerinden-dosya-%C4%B0ndirmek" >Dosya İndirmek</a></th>
    </tr>
    </tr>
	  <tr>
      <th scope="row">85</th>
	  <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/85.mevcut-db-inceleme.md" >Mevcut Veri Tabanını İnceleme Teknikleri</a></th>
	  <th scope="row">91</th>
	  <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/91.groupby-having.md" >Group By ve Having İle Çalışmak</a></th>
	  <th scope="row">16</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/sembolik_link-ve-kat%C4%B1_link.md#sembolik-link-ve-kat%C4%B1-link" >Sembolik Link ve Katı Link</a></th>
	  <th scope="row">22</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/zamanlam%C4%B1%C5%9F_g%C3%B6revler.md#zamanlanm%C4%B1%C5%9F-g%C3%B6revler" >Zamanlanmış Görevler</a></th>
    </tr>
	  <tr>
      <th scope="row">86</th>
	  <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/86.hesaplamali-sorgular.md" >Hesaplamalı Sorgularla Çalışmak</a></th>
	  <th scope="row">11</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/eri%C5%9Fim_yetkileri.md#eri%C5%9Fim-yetkileri" >Erişim Yetkileri</a></th>  
	  <th scope="row">17</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/kurma-kald%C4%B1rma-g%C3%BCncelleme_i%C5%9Flemleri.md#kurma-kald%C4%B1rma-g%C3%BCncelleme-%C4%B0%C5%9Flemleri" >Güncelleme Kurma Kaldırma İşlemleri</a></th>
	  <th scope="row">23</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/log_kay%C4%B1tlar%C4%B1.md#log-kay%C4%B1tlar%C4%B1" >Log Dosyaları</a></th>
    </tr>
	  <tr>
      <th scope="row">87</th>
	  <th scope="row"><a href="https://github.com/berkeJr/sql-operations-notes/blob/master/documentations/87.orderby-and-or-not.md" >Sql OrderBy, And, Or, Not ile Çalışmak</a></th>
	  <th scope="row">12</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/kullan%C4%B1c%C4%B1_i%C5%9Flemleri.md#kullan%C4%B1c%C4%B1-%C4%B0%C5%9Flemleri" >Kullanıcı İşlemleri</a></th>
	  <th scope="row">18</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/tree/master/dok%C3%BCmantasyonlar/joker_karakterler%28wildcards%29.md#joker-karakterlerwildcards" >Joker Karakterler</a></th>
	  <th scope="row">24</th>
	  <th scope="row"><a href="https://github.com/taylanbildik/Linux_Dersleri/blob/master/dok%C3%BCmantasyonlar/sistem-gorunumunu-ozellestirmek.md#linux-aray%C3%BCz%C3%BCn%C3%BC-%C3%B6zelle%C5%9Ftirmek" >Linux Arayüzünü Özelleştirmek</a></th>
    </tr>
  </tbody>
</table>



