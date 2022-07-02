.class Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;
.super Ljava/lang/Object;
.source "SecNotificationAppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateAppLevelSettingRunnable"
.end annotation


# instance fields
.field private final mAppUid:I

.field private final mCurrentAlertAllowed:Z

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field private final mPackageBlocked:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mUpdateAlertAllowed:Z


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 537
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    .line 538
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    .line 539
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    .line 540
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    .line 541
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 547
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mUpdateAlertAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mCurrentAlertAllowed:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageBlocked:Z

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;->mAppUid:I

    invoke-interface {v0, v2, p0, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InfoGuts"

    const-string v1, "Unable to update notification importance"

    .line 555
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
