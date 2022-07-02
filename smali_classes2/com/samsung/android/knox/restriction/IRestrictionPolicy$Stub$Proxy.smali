.class Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 3390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3391
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 3395
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4488
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4490
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4491
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4494
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4496
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4498
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4499
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4502
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4503
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4506
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 4506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4508
    throw p0
.end method

.method public isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 6298
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 6300
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6301
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6304
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 6306
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6307
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6309
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 6310
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6313
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 6317
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 6317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6319
    throw p0
.end method

.method public isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4312
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4313
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4316
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4318
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4320
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4321
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4324
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4328
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 4328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    throw p0
.end method

.method public isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 5069
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 5071
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5072
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 5075
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 5077
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5078
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 5080
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5081
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 5084
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 5088
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 5088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5090
    throw p0
.end method

.method public isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 6034
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 6036
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6037
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 6040
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6042
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6044
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6045
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6048
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6049
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 6052
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 6052
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6053
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6054
    throw p0
.end method

.method public isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IRestrictionPolicy"

    .line 4547
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4549
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4550
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 4553
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 4555
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4556
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 4558
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4559
    invoke-static {}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4562
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4563
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 4566
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 4566
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4568
    throw p0
.end method
