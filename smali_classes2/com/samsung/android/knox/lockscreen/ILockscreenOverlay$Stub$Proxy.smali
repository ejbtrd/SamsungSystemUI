.class Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILockscreenOverlay.java"

# interfaces
.implements Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.lockscreen.ILockscreenOverlay"

    .line 334
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 336
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 345
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 346
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getData(Lcom/samsung/android/knox/ContextInfo;I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 349
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 351
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOItemData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 358
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw p0
.end method

.method public getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.lockscreen.ILockscreenOverlay"

    .line 557
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 559
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 567
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 568
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->getPreferences(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 571
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_2

    .line 573
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 580
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 580
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw p0
.end method

.method public isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.lockscreen.ILockscreenOverlay"

    .line 397
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 408
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 409
    invoke-static {}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay$Stub;->getDefaultImpl()Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/ILockscreenOverlay;->isConfigured(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 412
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 416
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 416
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw p0
.end method
