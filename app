from game import Sehir

MENU = "\n***SECİM YAP***\nCalisan Ekle-[a]\nUretim Hesapla-[r]\nSermaye Goster-[g]\nÇık-[q]\n"
sehirler = [("istanbul", (8, 40)), ("adana", (6, 45))]


def main(sehir: Sehir):
    print("{} Bilgileri Yuklendi".format(sehir.name.upper()))

    while True:
        cmd = input(MENU)

        if cmd == "q":
            print("Oyun bitti!")
            break

        if cmd == "a":
            sehir.ekonomi.isci_ekle_fn()

        elif cmd == "r":
            urt = sehir.ekonomi.uretim_hesapla_fn()

        elif cmd == "g":
            sermaye = sehir.ekonomi.get_sermaye_fn()
            calisan_say = sehir.ekonomi.get_isci_sayisi_fn()
            print("*** SON DURUM ***")
            print("Toplam Sermaye: {}\nIsci Sayisi: {}".format(sermaye, calisan_say))


shr_current = sehirler[0]
istanbul = Sehir(*shr_current)
main(istanbul)
