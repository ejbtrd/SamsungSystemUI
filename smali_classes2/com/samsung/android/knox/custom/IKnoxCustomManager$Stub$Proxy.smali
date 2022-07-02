.class Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKnoxCustomManager.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 3996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3997
    iput-object p1, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 4001
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 10783
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10784
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10785
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10786
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x121

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 10788
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10789
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 10792
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 10794
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 10801
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 10801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10803
    throw p0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4267
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4269
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4271
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4272
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 4275
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4281
    throw p0
.end method

.method public getLockScreenOverrideMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7614
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7616
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7617
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenOverrideMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 7620
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 7624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7626
    throw p0
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/custom/PowerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7658
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7659
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa0

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7661
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7662
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 7665
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7666
    sget-object p0, Lcom/samsung/android/knox/custom/PowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 7669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7671
    throw p0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 7703
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7704
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 7706
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7707
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 7710
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 7714
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 7714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7716
    throw p0
.end method

.method public getPowerDialogItems()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4542
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4543
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4545
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4546
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4549
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4555
    throw p0
.end method

.method public getPowerDialogOptionMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4587
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4588
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4590
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4591
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4594
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4595
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4600
    throw p0
.end method

.method public getPowerMenuLockedState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 6256
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6257
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6259
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6260
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6263
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6264
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 6267
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 6267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6269
    throw p0
.end method

.method public getProKioskState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4768
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4769
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4771
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4772
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4775
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 4779
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 4779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4781
    throw p0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4949
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4951
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4953
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4954
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 4957
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4958
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4963
    throw p0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 6526
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6527
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 6529
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6530
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 6533
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 6537
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 6537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6539
    throw p0
.end method

.method public getSettingsHiddenState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 5539
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5540
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5542
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5543
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 5546
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 5550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5552
    throw p0
.end method

.method public registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 10476
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 10477
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 10478
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x115

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 10480
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10481
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->registerSystemUiCallback(Lcom/samsung/android/knox/custom/IKnoxCustomManagerSystemUiCallback;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 10484
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10485
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    const/4 v3, 0x1

    .line 10488
    :cond_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 10488
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10490
    throw p0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4744
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 4745
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4746
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4747
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4749
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4750
    invoke-static {}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->getDefaultImpl()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 4753
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4757
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4758
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4759
    throw p0
.end method
