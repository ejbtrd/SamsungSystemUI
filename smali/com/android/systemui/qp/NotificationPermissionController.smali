.class public Lcom/android/systemui/qp/NotificationPermissionController;
.super Ljava/lang/Object;
.source "NotificationPermissionController.java"


# static fields
.field private static mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field mAppName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mNm:Landroid/app/INotificationManager;

.field private mRotation:I

.field mTopPackage:Ljava/lang/String;

.field mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/NotificationPermissionController$1;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/NotificationPermissionController$2;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$3;

    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qp/NotificationPermissionController$3;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 387
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/NotificationPermissionController$9;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 429
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/NotificationPermissionController$10;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;)V

    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qp/NotificationPermissionController;Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;->showPopup(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qp/NotificationPermissionController;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->dismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qp/NotificationPermissionController;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/qp/NotificationPermissionController;->setDialogLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qp/NotificationPermissionController;->checkShowPopup(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qp/NotificationPermissionController;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qp/NotificationPermissionController;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->setDialogLayoutForFold()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qp/NotificationPermissionController;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qp/NotificationPermissionController;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mRotation:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/qp/NotificationPermissionController;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mRotation:I

    return p1
.end method

.method private checkDisplay()Z
    .locals 1

    .line 187
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "NotificationPermissionController"

    const-string v0, "activity resume from Dex display, No NotificationPopup"

    .line 189
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkShowPopup(Ljava/lang/String;I)Z
    .locals 3

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDeviceProvisioned:Z

    const/4 v1, 0x0

    const-string v2, "NotificationPermissionController"

    if-nez v0, :cond_0

    const-string p0, "SUW state, No NotificationPopup"

    .line 171
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 175
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mNm:Landroid/app/INotificationManager;

    invoke-interface {p0, p1, p2}, Landroid/app/INotificationManager;->isNeedNotificationAllowPopup(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No NotificationPopup pkg : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",uid : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception : checkShowPopup - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private dismiss()V
    .locals 2

    const-string v0, "NotificationPermissionController"

    const-string v1, "dismiss"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->checkDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const-string v2, "com.samsung.android.hardware.display.category.DESKTOP"

    .line 209
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    .line 210
    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getPopupWidthRatio()F
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->getScreenWidthDP()I

    move-result p0

    const/16 v0, 0x1df

    if-lez p0, :cond_0

    if-gt p0, v0, :cond_0

    const p0, 0x3f71eb85    # 0.945f

    goto :goto_0

    :cond_0
    const/16 v1, 0x2a0

    if-le p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const p0, 0x3f2147ae    # 0.63f

    goto :goto_0

    :cond_1
    const/16 v0, 0x3d9

    if-le p0, v1, :cond_2

    if-gt p0, v0, :cond_2

    const p0, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_2
    const/16 v1, 0x77f

    if-le p0, v0, :cond_3

    if-gt p0, v1, :cond_3

    const p0, 0x3eb33333    # 0.35f

    goto :goto_0

    :cond_3
    if-le p0, v1, :cond_4

    const/high16 p0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getScreenWidthDP()I
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    return p0
.end method

.method private initIntentFiler()V
    .locals 2

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "NOTIFICATION_CHANNEL_FIRST_CREATED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 165
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private registerFoldStateListener()V
    .locals 2

    .line 311
    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/NotificationPermissionController$8;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;)V

    sput-object v0, Lcom/android/systemui/qp/NotificationPermissionController;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    .line 329
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qp/NotificationPermissionController;->mFoldStateListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setDialogLayout(Z)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 343
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 344
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 348
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->getPopupWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 349
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setDialogLayoutForFold()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 357
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 361
    iget-object p0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showPopup(Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "appName"

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg"

    .line 219
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uid"

    const/4 v4, -0x1

    .line 220
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showPopup pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", uid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mTopPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", appName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationPermissionController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 223
    iget-object v3, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->getCurrentContext()Landroid/content/Context;

    move-result-object v3

    .line 227
    sget v4, Lcom/android/systemui/R$layout;->notification_permission_alert_dialog_title:I

    invoke-static {v3, v4, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 228
    sget v5, Lcom/android/systemui/R$id;->dialog_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 229
    sget v6, Lcom/android/systemui/R$string;->noti_popup_send_notifications:I

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v3, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->checkDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$color;->sec_notification_permission_dex_popup_text_color:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    :cond_1
    sget v0, Lcom/android/systemui/R$layout;->notification_permission_alert_dialog_text:I

    invoke-static {v3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 236
    sget v1, Lcom/android/systemui/R$id;->message_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 237
    sget v5, Lcom/android/systemui/R$string;->noti_popup_description_app_on_off_in_settings:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->checkDisplay()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 239
    iget-object v5, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$color;->sec_notification_permission_dex_popup_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v5, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v1, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 243
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 245
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->noti_popup_allow:I

    .line 246
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qp/NotificationPermissionController$7;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/systemui/qp/NotificationPermissionController$7;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->noti_popup_dont_allow:I

    .line 263
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qp/NotificationPermissionController$6;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/systemui/qp/NotificationPermissionController$6;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$5;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/qp/NotificationPermissionController$5;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/qp/NotificationPermissionController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qp/NotificationPermissionController$4;-><init>(Lcom/android/systemui/qp/NotificationPermissionController;)V

    .line 293
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 302
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d8

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 305
    iget-object p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mRotation:I

    .line 306
    invoke-direct {p0, v9}, Lcom/android/systemui/qp/NotificationPermissionController;->setDialogLayout(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    const-string v0, "NotificationPermissionController"

    const-string/jumbo v1, "start NotiPermController"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notification"

    .line 80
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mNm:Landroid/app/INotificationManager;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->initIntentFiler()V

    .line 82
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    .line 83
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 82
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->isDeviceProvisionedInSettingsDb()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDeviceProvisioned:Z

    const-string/jumbo v1, "usagestats"

    .line 86
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    invoke-interface {v1, v2}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : registerTaskStackListener - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/qp/NotificationPermissionController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/qp/NotificationPermissionController;->registerFoldStateListener()V

    return-void
.end method
