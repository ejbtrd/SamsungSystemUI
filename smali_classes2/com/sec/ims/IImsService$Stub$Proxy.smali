.class Lcom/sec/ims/IImsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsService.java"

# interfaces
.implements Lcom/sec/ims/IImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IImsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/sec/ims/IImsService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1872
    iput-object p1, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1876
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 2336
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2337
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2339
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2341
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2342
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2345
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2346
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    throw p0
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 4468
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4469
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4470
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4471
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4473
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4474
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 4477
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4478
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 4481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4483
    throw p0
.end method

.method public registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 3154
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3155
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_0

    .line 3156
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3157
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3159
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3160
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3163
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3164
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3169
    throw p0
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 2977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2978
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2979
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2981
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2982
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2985
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2986
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2991
    throw p0
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 2156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2157
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2158
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2160
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2161
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2164
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2165
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2170
    throw p0
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 2246
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2247
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2248
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2250
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2251
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2254
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2255
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2260
    throw p0
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 3063
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3064
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3066
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3068
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3069
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3072
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3073
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3077
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3078
    throw p0
.end method

.method public registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.ims.IImsService"

    .line 2382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2383
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    iget-object p0, p0, Lcom/sec/ims/IImsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2387
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2388
    invoke-static {}, Lcom/sec/ims/IImsService$Stub;->getDefaultImpl()Lcom/sec/ims/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2391
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2392
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2395
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2397
    throw p0
.end method
