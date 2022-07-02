.class public Lcom/android/keyguard/ResetDeviceUtils;
.super Ljava/lang/Object;
.source "ResetDeviceUtils.java"


# static fields
.field private static sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 42
    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v0, "ResetDeviceUtils"

    const-string v1, "ResetDeviceUtils()"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 4

    const-string v0, "ResetDeviceUtils"

    const-string v1, "findSDCard ()"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz p0, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 62
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 64
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findSDCard ( storageVolumes = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    aget-object p0, p0, v2

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "findSDCard ( null )"

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/ResetDeviceUtils;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/ResetDeviceUtils;

    invoke-direct {v0, p0}, Lcom/android/keyguard/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    .line 52
    :cond_0
    sget-object p0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    return-object p0
.end method

.method private removeSubUser(I)V
    .locals 2

    .line 169
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 170
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 173
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ResetDeviceUtils"

    const-string p1, "KeyguardHostView - exception in removeSubuser"

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public updateProgressDialog(I)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public wipeOut(II)V
    .locals 7

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wipeOut() attemptsCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " userType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetDeviceUtils"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 108
    iget-object p2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v3

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactoryResetAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    const-string p0, "Factory Reset is not allowed"

    .line 114
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "no_factory_reset"

    .line 117
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Factory Reset is not allowed DISALLOW_FACTORY_RESET"

    .line 118
    invoke-static {v1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result p2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wipeExcludeExternalStorage = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/android/keyguard/ResetDeviceUtils;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 127
    sget v3, Lcom/android/systemui/R$string;->keyguard_progress_erasing_all:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/ResetDeviceUtils;->updateProgressDialog(I)V

    const/high16 v3, 0x1000000

    const/high16 v4, 0x10000000

    const-string v5, "android.intent.action.FACTORY_RESET"

    const-string v6, "android.intent.extra.REASON"

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const-string/jumbo p2, "wipeOut ACTION_FACTORY_RESET/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    .line 131
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResetDeviceUtils_EXTERNAL_STORAGE, attemptsCount = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    .line 136
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 138
    :cond_2
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FACTORY_RESET_WITHOUT_UI:Z

    if-eqz p2, :cond_3

    const-string/jumbo p2, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    .line 139
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResetDeviceUtils_WITHOUT_FACTORY_UI, attemptsCount = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "wipeOut ( send ACTION_FACTORY_RESET )"

    .line 145
    invoke-static {v1, p2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResetDeviceUtils_FACTORY_RESET, attemptsCount = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    :goto_0
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object p0, p0, Lcom/android/keyguard/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 156
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "wipeOut() removeSubUser userType : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 159
    iget-object p2, p0, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object p2

    .line 160
    invoke-virtual {p2, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result p1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    goto :goto_1

    .line 163
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/ResetDeviceUtils;->removeSubUser(I)V

    :cond_6
    :goto_1
    return-void
.end method
