.class public abstract Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;
.super Landroid/os/Binder;
.source "IScreenLockService.java"

# interfaces
.implements Lcom/nttdocomo/android/screenlockservice/IScreenLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nttdocomo.android.screenlockservice.IScreenLockService"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
    .locals 1

    .line 127
    sget-object v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub$Proxy;->sDefaultImpl:Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    return-object v0
.end method
