.class public abstract Lcom/sec/ims/IImsService$Stub;
.super Landroid/os/Binder;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IImsService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sec.ims.IImsService"

    .line 488
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    instance-of v1, v0, Lcom/sec/ims/IImsService;

    if-eqz v1, :cond_1

    .line 490
    check-cast v0, Lcom/sec/ims/IImsService;

    return-object v0

    .line 492
    :cond_1
    new-instance v0, Lcom/sec/ims/IImsService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/IImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/sec/ims/IImsService;
    .locals 1

    .line 4902
    sget-object v0, Lcom/sec/ims/IImsService$Stub$Proxy;->sDefaultImpl:Lcom/sec/ims/IImsService;

    return-object v0
.end method
