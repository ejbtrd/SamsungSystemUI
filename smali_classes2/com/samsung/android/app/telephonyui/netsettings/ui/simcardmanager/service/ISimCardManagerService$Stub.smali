.class public abstract Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub;
.super Landroid/os/Binder;
.source "ISimCardManagerService.java"

# interfaces
.implements Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.service.ISimCardManagerService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/ISimCardManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
