.class public Lcom/android/systemui/popup/SamsungScreenPinningRequest;
.super Ljava/lang/Object;
.source "SamsungScreenPinningRequest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# instance fields
.field private mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mAppName:Ljava/lang/String;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsExcluded:Z

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mNavBarMode:I

.field private mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field public final mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskId:I

.field private mTouchExplorationEnabled:Z

.field private mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;


# direct methods
.method public static synthetic $r8$lambda$ut5q1pzYw0TK6zJl549QOKjg7WA(Lcom/android/systemui/popup/SamsungScreenPinningRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 76
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 77
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 78
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    .line 79
    const-class p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    .line 80
    iput-object p3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private createDialog(ILandroid/widget/LinearLayout;)V
    .locals 4

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->lock_to_app_normal_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 247
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_positive:I

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_title:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_desc:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 241
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 233
    :cond_2
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_dex_title:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 234
    sget p1, Lcom/android/systemui/R$string;->lock_to_app_dex_desc:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    sget p1, Lcom/android/systemui/R$string;->ok:I

    new-instance p2, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 253
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string p2, "SamsungScreenPinningRequest"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 256
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private extractRecentTaskInfo(I)V
    .locals 9

    .line 122
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "SamsungScreenPinningRequest"

    if-ge v3, v1, :cond_3

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 126
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 129
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 130
    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v7, p1, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget v1, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    .line 132
    iget-object v0, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-eqz v2, :cond_3

    .line 134
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    .line 140
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getContentsView()Landroid/widget/LinearLayout;
    .locals 5

    .line 145
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 146
    iget v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 149
    :goto_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_Alert:I

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    iget-object v4, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 152
    sget v3, Lcom/android/systemui/R$layout;->screen_pinning_content_view_gesture:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/systemui/R$layout;->screen_pinning_content_view_swkey:I

    goto :goto_1

    .line 153
    :cond_2
    sget v3, Lcom/android/systemui/R$layout;->screen_pinning_content_view_hwkey:I

    :goto_1
    const/4 v4, 0x0

    .line 150
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 155
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsOptionalText(ZLandroid/widget/LinearLayout;)V

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigationbar_key_order"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 159
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsKeyImage(Landroid/widget/LinearLayout;I)V

    .line 160
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsGestureImage(Landroid/widget/LinearLayout;I)V

    :cond_3
    return-object v2
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method private setPinWindowsGestureImage(Landroid/widget/LinearLayout;I)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 211
    sget v0, Lcom/android/systemui/R$id;->right_gesture:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    sget v1, Lcom/android/systemui/R$id;->left_gesture:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 214
    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-nez p2, :cond_0

    .line 216
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPinWindowsKeyImage(Landroid/widget/LinearLayout;I)V
    .locals 4

    .line 181
    sget v0, Lcom/android/systemui/R$id;->left_key:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 182
    sget v1, Lcom/android/systemui/R$id;->right_key:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 184
    sget v1, Lcom/android/systemui/R$drawable;->pin_windows_ic_recent:I

    .line 185
    sget v2, Lcom/android/systemui/R$drawable;->pin_windows_ic_back:I

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 186
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 187
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    sget v2, Lcom/android/systemui/R$color;->screen_pinning_dialog_button:I

    goto :goto_2

    .line 192
    :cond_2
    sget v2, Lcom/android/systemui/R$color;->screen_pinning_dialog_button_hw:I

    :goto_2
    const/4 v3, 0x0

    .line 189
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 193
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 197
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 200
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    const/high16 p0, -0x40800000    # -1.0f

    if-nez p2, :cond_4

    .line 202
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_4

    .line 204
    :cond_4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_5
    :goto_4
    return-void
.end method

.method private setPinWindowsOptionalText(ZLandroid/widget/LinearLayout;)V
    .locals 2

    .line 166
    sget v0, Lcom/android/systemui/R$id;->pinning_desc_optional:I

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mWindowManagerWrapper:Lcom/android/systemui/shared/system/WindowManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->hasSoftNavigationBar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 171
    sget p0, Lcom/android/systemui/R$string;->screen_pinning_msg_in_gesture:I

    goto :goto_0

    .line 172
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_softkey_accessibility:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_softkey:I

    .line 170
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    if-eqz p0, :cond_3

    .line 175
    sget p0, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back_accessibility:I

    goto :goto_1

    .line 176
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->lock_to_app_recent_and_back:I

    .line 174
    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearPrompt()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->unregisterReceivers()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->checkUnableToPin()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->lock_to_app_unable_to_pin_toast:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 277
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method public onTouchExplorationEnabled()Z
    .locals 3

    .line 90
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public registerReceivers()V
    .locals 2

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public showPrompt(I)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Old taskId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungScreenPinningRequest"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->extractRecentTaskInfo(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->registerReceivers()V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    goto :goto_0

    .line 113
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->getContentsView()Landroid/widget/LinearLayout;

    move-result-object p1

    .line 117
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    :goto_0
    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
