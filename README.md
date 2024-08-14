# Microsoft365 PowerShell Reports

Bu repo, Microsoft 365 ortamında PowerShell kullanarak raporlar oluşturmanızı sağlamak için çeşitli scriptler içerir. Aşağıda, gerekli adımlar ve kullanılan komutlar hakkında bilgiler bulunmaktadır.

## Gereksinimler

Bu scriptlerin çalışabilmesi için aşağıdaki modüllerin yüklü olduğundan emin olun:

**Exchange Online Management Modülü:** Microsoft 365 Exchange Online ile etkileşim kurmak için gereklidir.
   
   Bu modülü yüklemek için PowerShell'de aşağıdaki komutu çalıştırın:
   ```powershell
   Install-Module -Name ExchangeOnlineManagement
   ```

## Adım 1: PowerShell Çalışma Politikası Ayarlama

PowerShell'in dış kaynaklardan script çalıştırmasına izin vermek için aşağıdaki komutu kullanarak çalışma politikasını ayarlayın:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Açıklama:** `RemoteSigned` politikası, yerel olarak oluşturulan scriptlerin çalışmasına izin verirken, uzaktan indirilmiş scriptlerin dijital imzaya sahip olmasını gerektirir. Bu, güvenliği artırmak için önemlidir.

## Adım 2: Exchange Online Modülünü İçe Aktarma

Exchange Online Management modülünü içe aktarmak için aşağıdaki komutu çalıştırın:

```powershell
Import-Module ExchangeOnlineManagement
```

**Açıklama:** Bu komut, Exchange Online ile etkileşimde bulunmanızı sağlayan gerekli modülü PowerShell oturumunuza yükler.

## Adım 3: Exchange Online'a Bağlanma

Exchange Online ortamınıza bağlanmak için aşağıdaki komutu kullanın:

```powershell
Connect-ExchangeOnline -UserPrincipalName domain.com -ShowProgress $true
```

**Açıklama:** `domain.com` kısmını kendi kullanıcı adınızla değiştirin. Bu komut, Exchange Online'a bağlanmanızı sağlar ve bağlanma işlemi sırasında ilerleme çubuğunu gösterir.
