.class public Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
.super Ljava/lang/Object;
.source "PhoneRestrictionPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mIccId:Ljava/lang/String;

.field private mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 210
    iput-object p2, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method private getService(Z)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;
    .locals 0

    if-nez p1, :cond_1

    .line 218
    iget-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mIccId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This method does not support iccId being specified by administrator."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    if-nez p1, :cond_2

    const-string/jumbo p1, "phone_restriction_policy"

    .line 223
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 222
    invoke-static {p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    .line 225
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->mService:Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    return-object p0
.end method


# virtual methods
.method public checkEnableUseOfPacketData(Z)Z
    .locals 1

    .line 1382
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1384
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1386
    :catch_0
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed to checkEnableUseOfPacketData"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .locals 1

    .line 2647
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2649
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->getService()Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2651
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2652
    sget-object p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->TAG:Ljava/lang/String;

    const-string p1, "failed talking with phoneRestrictionPolicy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
