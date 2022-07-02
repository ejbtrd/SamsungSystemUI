.class Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEnterpriseLicense.java"

# interfaces
.implements Lcom/samsung/android/knox/license/IEnterpriseLicense;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/knox/license/IEnterpriseLicense;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p1, p0, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1092
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.license.IEnterpriseLicense"

    .line 1094
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 1096
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/knox/ContextInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1103
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 1104
    :goto_2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    iget-object p0, p0, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1107
    invoke-static {}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->getDefaultImpl()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1108
    invoke-static {}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;->getDefaultImpl()Lcom/samsung/android/knox/license/IEnterpriseLicense;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/license/IEnterpriseLicense;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1112
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 1115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    throw p0
.end method
