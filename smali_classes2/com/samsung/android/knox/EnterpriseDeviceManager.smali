.class public Lcom/samsung/android/knox/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "EnterpriseDeviceManager"

.field private static final mSync:Ljava/lang/Object;

.field private static sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private volatile mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private volatile mPhoneRestrictionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field private mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 286
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Landroid/os/Handler;)V
    .locals 0

    const/4 p3, 0x0

    .line 291
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/IEnterpriseDeviceManager;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 354
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 355
    iput-object p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 5

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz p2, :cond_1

    .line 320
    iget p1, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 321
    iget p2, p3, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 322
    iget v0, p3, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 326
    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") callerUid is SYSTEM_UID but Binder.getCallingUid() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "STACK TRACE"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    :cond_0
    iget-boolean p3, p3, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    .line 334
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(IIZI)V

    move-object p3, v1

    .line 338
    :cond_1
    iput-object p3, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 6

    .line 362
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 364
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 365
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    .line 366
    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v4, :cond_0

    .line 367
    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-direct {v4, p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 368
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstance() : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") create an instance with UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq p0, v1, :cond_1

    .line 372
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInstance() : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") currentUid is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but mCallerUid is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v1, v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_1
    sget-object p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->sEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 378
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 1

    .line 3356
    iget-boolean p0, p0, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-nez p0, :cond_0

    return-void

    .line 3357
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be called on the parent instance"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 3

    .line 2240
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_1

    .line 2242
    monitor-enter p0

    .line 2243
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-nez v0, :cond_0

    .line 2245
    new-instance v0, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 2247
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 1

    const/4 v0, 0x0

    .line 2490
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneRestrictionPolicy(Ljava/lang/String;)Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2503
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2508
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    goto :goto_0

    .line 2510
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 2511
    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mPhoneRestrictionMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;
    .locals 3

    .line 2158
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_1

    .line 2160
    monitor-enter p0

    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    if-nez v0, :cond_0

    .line 2163
    new-instance v0, Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceManager;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 2165
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
