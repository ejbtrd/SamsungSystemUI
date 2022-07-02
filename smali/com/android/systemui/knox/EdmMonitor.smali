.class Lcom/android/systemui/knox/EdmMonitor;
.super Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;
.source "EdmMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

.field private mAirplaneModeAllowed:Z

.field private mBluetoothAllowed:Z

.field private mCellularDataAllowed:Z

.field private mEnableAdminLock:Z

.field private mGPSStateChangeAllowed:Z

.field private mIsCameraDisabledByMdm:Z

.field private mIsDeviceDisableForMaxFailedAttempt:Z

.field private mIsFaceRecognitionAllowedEvenCameraBlocked:Z

.field private mIsLockscreenInvisibleOverlayConfigured:Z

.field private mIsLockscreenWallpaperConfigured:Z

.field private mIsMDMKioskMode:Z

.field private mIsNavigationBarHidden:Z

.field private mIsProfileDisableForMaxFailedAttempt:Z

.field private mIsStatusBarHidden:Z

.field private mLicenseExpired:Z

.field private mLocationProviderAllowed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLockDelay:I

.field private mLockedIccIdList:[Ljava/lang/String;

.field private mMaxNumFailedAttemptForDisable:I

.field private mMaxNumFailedAttemptForProfileDisable:I

.field private mMultiFactorAuthEnabled:Z

.field private mNFCAllowed:Z

.field private mNFCStateChangeAllowed:Z

.field private mPasswordVisibilityEnabled:Z

.field private mPkgNameForMaxAttemptDisable:Ljava/lang/String;

.field private mPwdChangeRequest:I

.field private mRoamingAllowed:Z

.field private mSettingsChangesAllowed:Z

.field private mStatusBarExpandAllowed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWifiAllowed:Z

.field private mWifiStateChangeAllowed:Z

.field private mWifiTetheringAllowed:Z

.field private mWipeExcludeExternalStorage:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 67
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    .line 69
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 70
    iput v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 80
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private getCurrentFailedAttempts()I
    .locals 7

    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 324
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 326
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string p0, "getCurrentFailedPasswordAttempts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 330
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    throw p0

    .line 333
    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMDMEnabled()Z
    .locals 0

    .line 285
    iget p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMDMEnabledForProfile()Z
    .locals 0

    .line 289
    iget p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerCallback()V
    .locals 3

    .line 94
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "EdmMonitor"

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "registerKnoxCallback() cannot reference because edm is null"

    .line 99
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string/jumbo v2, "registerKnoxCallback() Failed!"

    .line 102
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdmMonitor registerCallback mEnableAdminLock:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mLicenseExpired:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p1, "EdmMonitor state:"

    .line 596
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mIsStatusBarHidden="

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsNavigationBarHidden="

    .line 598
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsMDMKioskMode="

    .line 599
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWipeExcludeExternalStorage="

    .line 600
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mLockDelay="

    .line 601
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mMaxNumFailedAttemptForDisable="

    .line 602
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mPkgNameForMaxFailedAttemptDisable="

    .line 603
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-mIsDeviceDisableForMaxFailedAttempt="

    .line 604
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mPwdChangeRequest="

    .line 605
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "-mSettingsChangesAllowed="

    .line 606
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mStatusBarExpandAllowed="

    .line 607
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mAirplaneModeAllowed="

    .line 608
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mCellularDataAllowed="

    .line 609
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mNFCAllowed="

    .line 610
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiTetheringAllowed="

    .line 611
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mBluetoothAllowed="

    .line 612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mNFCStateChangeAllowed="

    .line 613
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mRoamingAllowed="

    .line 614
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiStateChangeAllowed="

    .line 615
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mWifiAllowed="

    .line 616
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mLocationProviderAllowed="

    .line 617
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "-mGPSStateChangeAllowed="

    .line 618
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsLockscreenInvisibleOverlayConfigured="

    .line 619
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsLockscreenWallpaperConfigured="

    .line 620
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mMultiFactorAuthEnabled="

    .line 621
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsCameraDisabledByMdm="

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "-mIsFaceRecognitionAllowedEvenCameraBlocked="

    .line 623
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "-mLockedIccIdList="

    .line 625
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length p1, p0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    aget-object v0, p0, p3

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 629
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public excludeExternalStorageForFailedPasswordsWipe(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWipeExcludeExternalStorage:Z

    return-void
.end method

.method public getLockDelay()I
    .locals 0

    .line 379
    iget p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    return p0
.end method

.method public getPkgNameForMaximumFailedPasswordsForDisable()Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    return-object p0
.end method

.method public getPwdChangeRequest()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->registerCallback()V

    return-void
.end method

.method public isAdminLockEnabled()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isAirplaneModeTileBlocked()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBlockedEdmSettingsChange(Landroid/content/Context;)Z
    .locals 0

    .line 297
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isBlueLightFilterTileBlocked()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isBluetoothTileBlocked()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isBrightnessBlocked()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isCameraDisabledByMdm()Z
    .locals 0

    .line 587
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    return p0
.end method

.method public isCellularDataAllowed()Z
    .locals 0

    .line 503
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    return p0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMDMEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 312
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    return p0
.end method

.method public isDndTileBlocked()Z
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isFaceRecognitionAllowedEvenCameraBlocked()Z
    .locals 0

    .line 591
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return p0
.end method

.method public isFlashlightTileBlocked()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isLicenseExpired()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    return p0
.end method

.method public isLocationProviderAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLocationTileBlocked()Z
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "gps"

    .line 403
    invoke-virtual {p0, v1}, Lcom/android/systemui/knox/EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "network"

    .line 404
    invoke-virtual {p0, v4}, Lcom/android/systemui/knox/EdmMonitor;->isLocationProviderAllowed(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 405
    iget-boolean v5, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    .line 406
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez v2, :cond_1

    if-nez p0, :cond_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz p0, :cond_2

    if-nez v5, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz v2, :cond_3

    if-nez v4, :cond_4

    :cond_3
    if-nez v0, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    return v3
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 0

    .line 515
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    return p0
.end method

.method public isMobileDataTileBlocked()Z
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultifactorAuthEnforced()Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    return p0
.end method

.method public isNavigationBarHidden()Z
    .locals 0

    .line 499
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    return p0
.end method

.method public isPanelExpandEnabled()Z
    .locals 0

    .line 301
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    return p0
.end method

.method public isPasswordVisibilityEnabled()Z
    .locals 2

    const-string v0, "EdmMonitor"

    const-string v1, "isPasswordVisibilityEnabled "

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    return p0
.end method

.method public isRoamingAllowed()Z
    .locals 0

    .line 474
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    return p0
.end method

.method public isRotationLockTileBlocked()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSoundModeTileBlocked()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isStatusBarHidden()Z
    .locals 0

    .line 495
    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    return p0
.end method

.method public isSubIdLockedByAdmin()Z
    .locals 6

    .line 520
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 521
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x2

    .line 522
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    .line 523
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 525
    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v0, 0x1

    if-nez v2, :cond_1

    return v0

    .line 535
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v3, p0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p0, v4

    .line 536
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public isSubIdLockedByAdmin(I)Z
    .locals 5

    .line 549
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 550
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 551
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "telephony_subscription_service"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 552
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, ""

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    if-eqz v2, :cond_2

    move-object p1, v2

    :cond_2
    aput-object p1, v3, v0

    const-string p1, "isSubIdLockedByAdmin subId=%d, subInfo=%s, iccId=%s"

    .line 557
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdmMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    return v4

    .line 564
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length p1, p0

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_5

    aget-object v3, p0, v0

    .line 565
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public isUserMobileDataRestricted()Z
    .locals 2

    .line 490
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 491
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_mobile_networks"

    .line 490
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isUserWifiHotspotRestricted()Z
    .locals 2

    .line 485
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mUserManager:Landroid/os/UserManager;

    .line 486
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_tethering"

    .line 485
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public isWifiHotspotTileBlocked()Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isWifiTileBlocked()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/knox/EdmMonitor;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setAdminLock(ZZ)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAdminLock enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  licenseExpired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    if-eq v0, p2, :cond_1

    .line 115
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mEnableAdminLock:Z

    .line 116
    iput-boolean p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mLicenseExpired:Z

    .line 117
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x13a2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setAirplaneModeAllowed(Z)V
    .locals 0

    .line 210
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mAirplaneModeAllowed:Z

    return-void
.end method

.method public setApplicationNameControlEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setBluetoothAllowed(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mBluetoothAllowed:Z

    return-void
.end method

.method public setCameraAllowed(Z)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCameraAllowed( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p1, p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    return-void
.end method

.method public setCellularDataAllowed(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mCellularDataAllowed:Z

    return-void
.end method

.method public setFaceRecognitionEvenCameraBlockedAllowed(Z)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFaceRecognitionEvenCameraBlockedAllowed( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    return-void
.end method

.method public setGPSStateChangeAllowed(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mGPSStateChangeAllowed:Z

    return-void
.end method

.method public setKioskModeEnabled(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsMDMKioskMode:Z

    return-void
.end method

.method public setLocationProviderAllowed(Ljava/lang/String;Z)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->mLocationProviderAllowed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLockedIccIds([Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    return-void
.end method

.method public setLockscreenInvisibleOverlay(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenInvisibleOverlayConfigured:Z

    return-void
.end method

.method public setLockscreenWallpaper(Z)V
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    if-eq v0, p1, :cond_0

    .line 271
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsLockscreenWallpaperConfigured:Z

    .line 272
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13a0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x13a1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaximumFailedPasswordsForDisable(ILjava/lang/String;)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    .line 155
    iput-object p2, p0, Lcom/android/systemui/knox/EdmMonitor;->mPkgNameForMaxAttemptDisable:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    return-void
.end method

.method public setMaximumFailedPasswordsForProfileDisable(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    return-void
.end method

.method public setMultifactorAuthEnabled(Z)V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultifactorAuthEnabled( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mMultiFactorAuthEnabled:Z

    return-void
.end method

.method public setNFCStateChangeAllowed(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mNFCStateChangeAllowed:Z

    return-void
.end method

.method public setNavigationBarHidden(Z)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsNavigationBarHidden:Z

    .line 143
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setPasswordLockDelay(I)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mLockDelay:I

    return-void
.end method

.method public setPasswordVisibilityEnabled(Z)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPasswordVisibilityEnabled( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPasswordVisibilityEnabled:Z

    return-void
.end method

.method public setPwdChangeRequested(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mPwdChangeRequest:I

    return-void
.end method

.method public setRoamingAllowed(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mRoamingAllowed:Z

    return-void
.end method

.method public setSettingsChangeAllowed(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mSettingsChangesAllowed:Z

    return-void
.end method

.method public setStatusBarExpansionAllowed(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mStatusBarExpandAllowed:Z

    return-void
.end method

.method public setStatusBarHidden(Z)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    if-eq v0, p1, :cond_0

    .line 134
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsStatusBarHidden:Z

    .line 135
    iget-object p1, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x139b

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setWifiAllowed(Z)V
    .locals 0

    .line 246
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiAllowed:Z

    return-void
.end method

.method public setWifiStateChangeAllowed(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiStateChangeAllowed:Z

    return-void
.end method

.method public setWifiTetheringAllowed(Z)V
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/android/systemui/knox/EdmMonitor;->mWifiTetheringAllowed:Z

    return-void
.end method

.method public updateFailedUnlockAttemptForDeviceDisabled()V
    .locals 4

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMDMEnabled()Z

    move-result v0

    const-string v1, "EdmMonitor"

    if-eqz v0, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    .line 342
    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceDisabledForMaxFailedAttempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsDeviceDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    const-string p0, "MDM is not enabled..."

    .line 352
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public updateFailedUnlockAttemptForProfileDisabled()V
    .locals 4

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->isMDMEnabledForProfile()Z

    move-result v0

    const-string v1, "EdmMonitor"

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/knox/EdmMonitor;->getCurrentFailedAttempts()I

    move-result v0

    .line 359
    iget v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedUnlockAttempt : maxNumFailedAttemptForProfileDisable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/knox/EdmMonitor;->mMaxNumFailedAttemptForProfileDisable:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , curNumFailedAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProfileDisableForMaxFailedAttempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/knox/EdmMonitor;->mIsProfileDisableForMaxFailedAttempt:Z

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13a5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object p0, p0, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    const-string p0, "MDM is not enabled..."

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
