.class public abstract Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.super Landroid/os/Binder;
.source "ILockscreenOverlay.java"

# interfaces
.implements Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.knox.lockscreen.ILockscreenOverlay"

    .line 69
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    if-eqz v1, :cond_1

    .line 71
    check-cast v0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;
    .locals 1

    .line 610
    sget-object v0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    return-object v0
.end method
