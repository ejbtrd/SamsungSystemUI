.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationAppInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;
.implements Lcom/android/systemui/statusbar/notification/row/LongPressGut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mAlertAllowed:Z

.field private mAlertButton:Landroid/widget/TextView;

.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mDelegatePkg:Ljava/lang/String;

.field private mDoneButton:Landroid/widget/TextView;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDeviceProvisioned:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNumUniqueChannelsInRow:I

.field private mOnCancelSettings:Landroid/view/View$OnClickListener;

.field private mOnSaveSettings:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

.field private mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

.field private mPackageDisableContent:Landroid/view/View;

.field private mPackageEnableContent:Landroid/view/View;

.field private mPackageIsBlocked:Z

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPresentingChannelEditorDialog:Z

.field private mPressedApply:Z

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSettingButton:Landroid/widget/TextView;

.field private mShowAutomaticSetting:Z

.field private mSilentButton:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStartingChannelImportance:I

.field private mTurnOffButton:Landroid/widget/TextView;

.field private mTurnOffConFirmButton:Landroid/widget/TextView;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mUpadteAlertAllowed:Z

.field private mWasShownHighPriority:Z


# direct methods
.method public static synthetic $r8$lambda$7qhkrsOWDwqzWA9puqKCRoyNJT0(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LIJJTol70nNrBpLI98qJ1Q5_or4(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$edWD1-OCiXDM3Hg4ESch3dJTVvQ(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/app/NotificationChannel;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->lambda$getSettingsOnClickListener$2(Landroid/app/NotificationChannel;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPresentingChannelEditorDialog:Z

    .line 135
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    .line 138
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 153
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSaveSettings:Landroid/view/View$OnClickListener;

    .line 158
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUpadteAlertAllowed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSilentButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageEnableContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/view/View;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageDisableContent:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindBottomButtons(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/widget/TextView;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private bindBottomButtons(Z)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initBottomSettingButton(Z)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initBottomDoneButton(Z)V

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initBottomTurnOffButton(Z)V

    return-void
.end method

.method private bindHeader()V
    .locals 3

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->pkg_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    sget v0, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    sget v0, Lcom/android/systemui/R$id;->pkg_name_description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->sec_notification_app_info_title:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private bindInlineControls()V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initInlineAlertButton()V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initInlineSilentButton()V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initInlineTurnOffButton()V

    return-void
.end method

.method private bindTitle()V
    .locals 1

    .line 283
    sget v0, Lcom/android/systemui/R$id;->toggle_description:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    if-eqz p0, :cond_0

    .line 284
    sget p0, Lcom/android/systemui/R$string;->sec_notification_app_info_alert_description:I

    goto :goto_0

    .line 285
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sec_notification_app_info_silent_description:I

    .line 283
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 575
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 4

    .line 380
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    if-eqz v2, :cond_1

    .line 382
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 383
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Landroid/app/NotificationChannel;I)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method private initBottomDoneButton(Z)V
    .locals 2

    .line 356
    sget v0, Lcom/android/systemui/R$id;->done:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$string;->notification_cancel:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$string;->notification_info_done_button:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnCancelSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomSettingButton(Z)V
    .locals 2

    .line 347
    sget v0, Lcom/android/systemui/R$id;->settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->notification_info_setting_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottomTurnOffButton(Z)V
    .locals 2

    .line 365
    sget v0, Lcom/android/systemui/R$id;->off_confirm:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->sec_notification_app_info_off_button:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 369
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initInlineAlertButton()V
    .locals 2

    .line 301
    sget v0, Lcom/android/systemui/R$id;->toggle_alert:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertButton:Landroid/widget/TextView;

    .line 302
    sget v1, Lcom/android/systemui/R$string;->sec_notification_app_info_alert:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initInlineSilentButton()V
    .locals 2

    .line 315
    sget v0, Lcom/android/systemui/R$id;->toggle_silent:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSilentButton:Landroid/widget/TextView;

    .line 316
    sget v1, Lcom/android/systemui/R$string;->sec_notification_app_info_silent:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSilentButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSilentButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$2;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initInlineTurnOffButton()V
    .locals 2

    .line 330
    sget v0, Lcom/android/systemui/R$id;->toggle_off:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    .line 331
    sget v1, Lcom/android/systemui/R$string;->sec_notification_app_info_off:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    if-eqz v1, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$getSettingsOnClickListener$2(Landroid/app/NotificationChannel;ILandroid/view/View;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 387
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-direct {p0, p3, p2, p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->startChannelListSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 563
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    .line 562
    invoke-interface {v1, p1, v0, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    return-void
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x1

    .line 601
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x0

    .line 602
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private saveAppLevelSetting()V
    .locals 9

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUpadteAlertAllowed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    if-eqz v0, :cond_3

    .line 395
    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 396
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUpadteAlertAllowed:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$UpdateAppLevelSettingRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;IZZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    if-eqz v0, :cond_1

    const-string v0, "app off"

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "quiet"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "sound"

    goto :goto_0

    .line 401
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "QPN001"

    const-string v2, "QPNE0024"

    const-string v3, "app"

    const-string/jumbo v5, "settings"

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private startChannelListSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 726
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_CHANNELLIST_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 727
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 728
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    .line 731
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 732
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, ":settings:show_fragment_args"

    .line 734
    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 736
    :cond_0
    const-class p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    move-result-object p1

    .line 737
    invoke-interface {p1, p0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 4

    .line 616
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 617
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v1

    .line 618
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v0

    if-eqz v1, :cond_e

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 625
    :cond_0
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 630
    :cond_1
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$color;->qp_notification_guts_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 636
    :cond_2
    sget v2, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 638
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 641
    :cond_3
    sget v2, Lcom/android/systemui/R$id;->pkg_name_description:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 643
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 646
    :cond_4
    sget v2, Lcom/android/systemui/R$id;->toggle_description:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 648
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 651
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertButton:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 652
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSilentButton:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 656
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 659
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffButton:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    .line 660
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    :cond_8
    sget v2, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    .line 665
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    :cond_9
    sget v2, Lcom/android/systemui/R$id;->package_block_content_text2:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 669
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSettingButton:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 673
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 676
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 678
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mTurnOffConFirmButton:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 679
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 682
    :cond_d
    sget v0, Lcom/android/systemui/R$id;->button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_e

    .line 684
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->notification_guts_button_divider:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 685
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 686
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_0
    return-void
.end method


# virtual methods
.method IsAlertingAllowed()Z
    .locals 2

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/app/INotificationManager;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "InfoGuts"

    const-string v1, "Unable to getNotificationAlertsEnabledForPackage"

    .line 609
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "ZZZ",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 204
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 205
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 206
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 207
    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 208
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    .line 209
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 210
    invoke-interface {p7}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    .line 211
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 212
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 213
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 214
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    .line 215
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    .line 216
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 217
    invoke-virtual {p6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mStartingChannelImportance:I

    .line 218
    iput-boolean p13, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mWasShownHighPriority:Z

    .line 219
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsNonblockable:Z

    .line 220
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    .line 221
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mDelegatePkg:Ljava/lang/String;

    .line 222
    iput-boolean p11, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsDeviceProvisioned:Z

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->isFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mShowAutomaticSetting:Z

    .line 224
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppUid:I

    const/4 p3, 0x0

    invoke-interface {p1, p5, p2, p3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    .line 228
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mNumUniqueChannelsInRow:I

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 232
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 233
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p5, "miscellaneous"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-ne p1, p4, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    :goto_0
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mIsSingleDefaultChannel:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->IsAlertingAllowed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAlertAllowed:Z

    .line 238
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mUpadteAlertAllowed:Z

    .line 240
    sget p1, Lcom/android/systemui/R$id;->package_enable_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageEnableContent:Landroid/view/View;

    .line 241
    sget p1, Lcom/android/systemui/R$id;->package_block_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageDisableContent:Landroid/view/View;

    .line 242
    sget p1, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/android/systemui/R$string;->sec_notification_app_info_off_description:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    sget p1, Lcom/android/systemui/R$id;->package_block_content_text2:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/android/systemui/R$string;->sec_notification_app_info_off_description2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageIsBlocked:Z

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageEnableContent:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPackageDisableContent:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindHeader()V

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindTitle()V

    .line 250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls()V

    .line 251
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindBottomButtons(Z)V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->updateTextColorOnOpenThemeOrColoring()V

    .line 254
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 229
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActualHeight()I
    .locals 0

    .line 506
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->saveAppLevelSetting()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 16

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 695
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 697
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 696
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 698
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 701
    :try_start_0
    const-class v1, Landroid/app/INotificationManager;

    .line 703
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/INotificationManager;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 704
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 705
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v8

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    move-object/from16 v1, p1

    .line 710
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->createGutSettingClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    move-result-object v10

    const-class v0, Lcom/android/internal/logging/UiEventLogger;

    .line 711
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/internal/logging/UiEventLogger;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 712
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v12

    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonPackageBlockable()Z

    move-result v13

    const-class v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 714
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v14

    const-class v0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 715
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    move-object/from16 v1, p0

    .line 701
    invoke-virtual/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "InfoGuts"

    const-string v2, "error binding guts"

    .line 717
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public needsFalsingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public onFinishedClosing()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mStartingChannelImportance:I

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->bindInlineControls()V

    .line 426
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 437
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 511
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 512
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mActualHeight:I

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 411
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 414
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 484
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
