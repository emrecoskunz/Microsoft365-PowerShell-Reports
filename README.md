---

# Microsoft365 PowerShell Reports

This project is designed to help you create various reports using PowerShell in a Microsoft 365 environment. Follow the steps below to set up the necessary configurations and access your reports.

## Requirements

To ensure the scripts run smoothly, you need to install the following module:

1. **Exchange Online Management Module:** This is required to interact with Microsoft 365 Exchange Online. You can install the module by running the following command in PowerShell:
   ```powershell
   Install-Module -Name ExchangeOnlineManagement
   ```

## Step 1: Set PowerShell Execution Policy

To allow scripts from external sources to run, adjust your execution policy using the following command:

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Note:** The `RemoteSigned` policy allows locally created scripts to run while requiring that scripts downloaded from the internet have a digital signature. This is important for enhancing system security.

## Step 2: Import the Exchange Online Module

To import the Exchange Online Management module, execute the following command:

```powershell
Import-Module ExchangeOnlineManagement
```

This command loads the necessary module into your PowerShell session, allowing you to interact with Exchange Online.

## Step 3: Connect to Exchange Online

Use the following command to connect to your Exchange Online environment:

```powershell
Connect-ExchangeOnline -UserPrincipalName domain.com -ShowProgress $true
```

**Attention:** Don’t forget to replace `domain.com` with your actual username. This command will help you connect to Exchange Online and display a progress bar during the connection process.


---


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


