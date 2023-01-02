# Enoca-.NET-Training-Week-1(Company Services Management)

## Projede Kullanınan Teknolojiler
.Net Core 6 Apı </br>
MSSQL</br>
Swagger UI </br>
Entity Framework Code First </br>
Repository Desing Pattern </br>
CQRS Desing Pattern-Mediatr</br>
Onion Architecture </br>


## Entity Framework Code First</br>
Projede veri tabanı ile bağ code first yaklaşımı ile yapılmıştır. Buradaki amaç veritabanı arazü ile etkilileşimi minimize etmektir. Entity framework
Code Firts yaklaşımın en büyük avantajı projedeki modele tam hakimiyetle istediğimiz şekilde kullanmaktır.</br>
Projemde oluşturmuş olduğum code Fist yaklaşımı şu şekilde;

![1](https://user-images.githubusercontent.com/79752850/210270151-7d9f82dc-bd6d-43fd-832e-1fc534aefdd7.png)
![2](https://user-images.githubusercontent.com/79752850/210270178-fece9e6b-a48e-404b-a617-17aa403395c7.png)

## Repository Desing Patern
Veri tabanını tasarlarken bir standart üzerine oluşturmayı hedefler.Veri tabanı işlemlerini yaparken yoğun bir tekrarlama ile karşılaşmakayız.İşte bu yüzden Repository
Desing Patern bu tekrarlama işlemlerini ortadan kaldırıp daha pratik bir şekilde bu işlemleri yapmamızı sağlamaktadır.</br>
Projemde oluşturmuş olduğum Repository Desing Patern şu şekilde;

![repository](https://user-images.githubusercontent.com/79752850/210270485-6ba33f08-206a-4eec-8c62-d47b07fd23c5.png)

## CQRS Desing Patern-Mediatr
Command ve Query sorumluluklarını ayırmamızı sağlayan bir paterndir.Uygulamamda bu şeklilde uyguladım;

![cqrs](https://user-images.githubusercontent.com/79752850/210270892-12125c55-01a4-40e3-ad5a-f8376d0b3ae1.png)

## Onion Architecture 
Klasik n katmalı mimariden farkı katmanlar arasında gevşek bir bağ mevcuttur. Bu gevşek olan bağın sağladığı fayda ileride örneğin bir veri tabanı değiştirmek istediğimiz  zaman mssqlden mongodb veritabanına  geçiş yaptığımız taktirde n katmanlı mimariye göre daha az maliyetli ve kolaydır.
### Katmanlar
#### Domaim Katmanı
Etitylerle ilgili olan exceptionların tutulduğu katmandır.</br></br>
#### Core Katmanı
Domain ile iş katmanı arasında soyutlama katmanıdır. Tüm servis arayüzleri burada tanımlanır.</br></br>
#### Persistence Katmanı
Veri tabanı operasyonlarının ve veri erişimini yürüten katmandır.DbContext,Migration,Configurations gibi yapılar bu katmanda bulunur.</br></br>
#### Infrastructure Katmanı
Veri tabanı dışındaki operasyonları yürütür.</br></br>
#### Presentation Katmanı
Kullanıcının iletişim kurduğu katmandır.

Uyguladığım mimari şu şekilde;


![mimari](https://user-images.githubusercontent.com/79752850/210271746-f8f3eb78-99cf-49fa-a6ee-3d8d6da7aa79.png)




##  Genel Değerlendirme 

Bu haftaki eğitimde genel olarak mimari yapıları ve desing paternler üzerine göndermiş olduğunuz video serisinden bakarak uygulamaya çalıştım. Cqrs desing paternin mantığını tam karayamasamda uygulamaya çalıştım.Genel olarak verimli bir hafta oldu benim için ama ilerlemek öğrenmem gerek çok daha uzun bir zaman var önümde.Proje tam anlamıyla bitmiş değil.Karşılaştığım problemler üzerine hala çalışmaktayım.Bilgisayarımdan kaynaklı bazı hatalarım da mevcut. </br> </br>


Teşekkürler Enoca :smile:










