Azure Virtual Desktop is the new Microsoft service for VDI.

With Azure Virtual Desktop you can create a Windows 10 multi session or single session host but also a window server host to create RDS solution when your applications do not support Windows 10.

In order to deploy Azure Virtual Desktop there are identity prerequisites:





An Azure Subscription to deploy the resources for WVD such as (VM / Disks…) and an Azure Active Directory that is generated at the creation of the azure Tenant.

If you already use O365 you will just need to add an azure subscription to your existing Tenant

In the case you are completely new to this you will need to create an Azure Tenant then an Azure Directory will be automatically created and associated to it.


Azure Virtual Desktop require a Domain Controller to perform the Domain Join and the Authentication. The Azure Active Directory on its own is not sufficient at the moment.

the support with only Azure Active Direction has been announced

