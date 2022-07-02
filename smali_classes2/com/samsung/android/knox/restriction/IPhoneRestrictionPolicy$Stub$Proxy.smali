.class Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2216
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2220
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

    .line 3545
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 3546
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3547
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3549
    invoke-static {}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3550
    invoke-static {}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3553
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3557
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3559
    throw p0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.restriction.IPhoneRestrictionPolicy"

    .line 5244
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5246
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5248
    invoke-static {}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5249
    invoke-static {}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->getDefaultImpl()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 5252
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5253
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 5256
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 5256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5258
    throw p0
.end method
