.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;
.implements Lcom/android/systemui/statusbar/notification/row/LongPressGut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mAppName:Ljava/lang/String;

.field private mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

.field private mAppUid:I

.field private mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field private mBehavior:I

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/TextView;

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mChosenImportance:Ljava/lang/Integer;

.field private mDelegatePkg:Ljava/lang/String;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsAutomaticChosen:Z

.field private mIsDeviceProvisioned:Z

.field private mIsNonblockable:Z

.field private mIsSingleDefaultChannel:Z

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMultiChannelContent:Landroid/view/View;

.field private mNonSelectedFont:Landroid/graphics/Typeface;

.field private mNumUniqueChannelsInRow:I

.field private mOnCancelSettings:Landroid/view/View$OnClickListener;

.field private mOnSaveSettings:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

.field private mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

.field private mPackageBlockContent:Landroid/view/View;

.field private mPackageEnableContent:Landroid/view/View;

.field private mPackageEnabledSwitch:Landroid/widget/Switch;

.field private mPackageIsBlocked:Z

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPresentingChannelEditorDialog:Z

.field private mPressedApply:Z

.field private mRadioAlert:Landroid/widget/RadioButton;

.field private mRadioAutomatic:Landroid/widget/RadioButton;

.field private mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioOff:Landroid/widget/RadioButton;

.field private mRadioSilent:Landroid/widget/RadioButton;

.field private mSaveButton:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedFont:Landroid/graphics/Typeface;

.field private mShowAutomaticSetting:Z

.field private mSingleNotificationChannel:Landroid/app/NotificationChannel;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mStartingChannelImportance:I

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

.field private mWasShownHighPriority:Z


# direct methods
.method public static synthetic $r8$lambda$6wPBORyvIVNabfnSWmS5zdgU85E(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$bindAppSwtich$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lh9ANA-ypRokGyzSpCpmbYPn4LI(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$bindSettingButton$4(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cI-UpDxnkFlIAWIqYoMLC6rBnfE(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$initializeGutContentView$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNpid99lDP305QnoWaMWIYsa11U(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fN47FMWPTxUuZHRhs8VCzYSiWWU(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gZHveOqAvoS3gRmCik0oXOnV7j0(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/app/NotificationChannel;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->lambda$getSettingsOnClickListener$3(Landroid/app/NotificationChannel;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPresentingChannelEditorDialog:Z

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSkipPost:Z

    .line 174
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSaveSettings:Landroid/view/View$OnClickListener;

    .line 179
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnCancelSettings:Landroid/view/View$OnClickListener;

    .line 531
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSelectedFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/graphics/Typeface;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNonSelectedFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioOff:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAutomatic:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsAutomaticChosen:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mBehavior:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)I
    .locals 0

    .line 91
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mBehavior:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateButtonText(I)V

    return-void
.end method

.method private bindAppSwtich()V
    .locals 7

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnabledSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 370
    sget v0, Lcom/android/systemui/R$id;->package_enabled_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnabledSwitch:Landroid/widget/Switch;

    .line 371
    sget v0, Lcom/android/systemui/R$id;->package_block_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageBlockContent:Landroid/view/View;

    .line 372
    sget v0, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->notification_applabel_blocked:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1

    move v1, v2

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnabledSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private bindChannelDetails()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindName()V

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindGroup()V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindSettingButton()V

    return-void
.end method

.method private bindGroup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 433
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 432
    invoke-interface {v0, v1, v2, v3}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 438
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 440
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 443
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindHeader()V
    .locals 3

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 364
    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->pkg_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    sget v0, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindInlineControls()V
    .locals 9

    .line 290
    sget v0, Lcom/android/systemui/R$id;->channel_radio_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 292
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-le v1, v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnableContent:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMultiChannelContent:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 301
    :goto_0
    sget v1, Lcom/android/systemui/R$id;->channel_radio_alert:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    .line 302
    sget v6, Lcom/android/systemui/R$string;->notification_info_radio_alert_text:I

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(I)V

    .line 303
    sget v5, Lcom/android/systemui/R$id;->channel_radio_silent:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    .line 304
    sget v7, Lcom/android/systemui/R$string;->notification_info_radio_silent_text:I

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 305
    sget v6, Lcom/android/systemui/R$id;->channel_radio_off:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioOff:Landroid/widget/RadioButton;

    .line 306
    sget v7, Lcom/android/systemui/R$string;->notification_info_radio_off_text:I

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setText(I)V

    .line 308
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioOff:Landroid/widget/RadioButton;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v3

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 310
    sget v6, Lcom/android/systemui/R$id;->channel_radio_automaitc:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAutomatic:Landroid/widget/RadioButton;

    .line 311
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mShowAutomaticSetting:Z

    if-eqz v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 313
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getAlertingBehavior()I

    move-result v7

    if-nez v7, :cond_5

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :cond_5
    if-ne v7, v2, :cond_6

    .line 318
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4

    :cond_6
    const/4 v1, 0x2

    if-ne v7, v1, :cond_7

    .line 320
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 323
    :cond_7
    :goto_4
    sget v0, Lcom/android/systemui/R$id;->button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 325
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 327
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSaveButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSaveSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSaveButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->notification_info_done_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    :cond_8
    sget v0, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 335
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mCancelButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnCancelSettings:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mCancelButton:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->quick_settings_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateButtonText(I)V

    return-void
.end method

.method private bindName()V
    .locals 3

    .line 419
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 420
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    .line 421
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private bindSettingButton()V
    .locals 7

    .line 448
    sget v0, Lcom/android/systemui/R$id;->app_settings:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 449
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 451
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 449
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 452
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 453
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 454
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 463
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getAlertingBehavior()I
    .locals 1

    .line 793
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mShowAutomaticSetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->hasUserSetImportance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 796
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getAppSettingsIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 619
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 620
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 621
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000

    .line 622
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 626
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 630
    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 632
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "android.intent.extra.NOTIFICATION_ID"

    .line 634
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.intent.extra.NOTIFICATION_TAG"

    .line 635
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 761
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    const/16 v0, 0x655

    if-nez p0, :cond_0

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    goto :goto_0

    .line 762
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

    .line 398
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsDeviceProvisioned:Z

    if-eqz v2, :cond_1

    .line 400
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 401
    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/app/NotificationChannel;I)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method private importanceChangeLogMaker()Landroid/metrics/LogMaker;
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x123

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x4

    .line 775
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 776
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    sub-int/2addr v0, p0

    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$bindAppSwtich$2(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 382
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    :cond_0
    const/4 p1, 0x1

    xor-int/2addr p2, p1

    .line 386
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    .line 387
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    .line 388
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnableContent:Landroid/view/View;

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 390
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMultiChannelContent:Landroid/view/View;

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageBlockContent:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    if-eqz p2, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mBehavior:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateButtonText(I)V

    return-void
.end method

.method private synthetic lambda$bindSettingButton$4(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;->onClick(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getSettingsOnClickListener$3(Landroid/app/NotificationChannel;ILandroid/view/View;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    invoke-interface {v0, p3, p1, p2}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 405
    const-class p3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p3, v0, p2, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$initializeGutContentView$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 p5, 0xce

    invoke-virtual {p0, p5}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 899
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 900
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    move-result-object p0

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    invoke-interface {p0, p6, p1, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPressedApply:Z

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPressedApply:Z

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    .line 748
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 749
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    .line 748
    invoke-interface {v1, p1, v0, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    return-void
.end method

.method private notificationControlsLogMaker()Landroid/metrics/LogMaker;
    .locals 1

    .line 786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x0

    .line 788
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method private saveImportance()V
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 471
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 473
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateImportance()V

    :cond_2
    return-void
.end method

.method private updateButtonText(I)V
    .locals 2

    .line 571
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 572
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getAlertingBehavior()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 573
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 574
    sget p1, Lcom/android/systemui/R$string;->notification_info_save_button:I

    goto :goto_2

    .line 575
    :cond_2
    sget p1, Lcom/android/systemui/R$string;->notification_info_done_button:I

    .line 574
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mCancelButton:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 578
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    .line 581
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    if-eqz p0, :cond_6

    const/4 v1, 0x2

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    :cond_7
    return-void
.end method

.method private updateImportance()V
    .locals 12

    .line 482
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    .line 483
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_SAVE_IMPORTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->importanceChangeLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 487
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_2

    if-eqz v0, :cond_2

    .line 488
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    .line 489
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 490
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    .line 494
    :cond_2
    new-instance v10, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v10, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 495
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 497
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move-object v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsAutomaticChosen:Z

    move-object v2, v11

    move v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;IIZ)V

    .line 495
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;->onImportanceChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 502
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    if-eqz v2, :cond_5

    .line 503
    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 504
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsAutomaticChosen:Z

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$UpdateImportanceRunnable;-><init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;IIZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageIsBlocked:Z

    if-eqz v2, :cond_6

    const-string v3, "QPN001"

    const-string v4, "QPNE0014"

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "normal"

    const-string/jumbo v7, "settings"

    const-string v8, "app off"

    .line 510
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 512
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    if-nez v0, :cond_7

    const-string p0, "channel off"

    :goto_2
    move-object v5, p0

    goto :goto_3

    :cond_7
    if-ge v0, v1, :cond_8

    const-string/jumbo p0, "silent"

    goto :goto_2

    :cond_8
    const-string p0, "alert"

    goto :goto_2

    :goto_3
    const-string v0, "QPN001"

    const-string v1, "QPNE0014"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "normal"

    const-string/jumbo v4, "settings"

    .line 515
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 7

    .line 811
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 812
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 819
    :cond_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 824
    :cond_1
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 825
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qp_notification_guts_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 830
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 832
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 837
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 841
    :cond_4
    sget v1, Lcom/android/systemui/R$id;->channel_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 843
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 847
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 848
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v6, v2, [I

    aput v0, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 851
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    if-eqz v1, :cond_7

    .line 852
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v2, v2, [I

    aput v0, v2, v3

    invoke-direct {v4, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 856
    :cond_7
    sget v1, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 858
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    :cond_8
    sget v1, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 863
    sget v2, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 866
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    if-eqz v2, :cond_a

    .line 869
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 872
    :cond_a
    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 873
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_b

    .line 874
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$drawable;->notification_guts_button_divider:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v2, 0x80

    .line 876
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 877
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 878
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 879
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
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
            "Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;",
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

    .line 235
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 236
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 237
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 238
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 239
    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 240
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    .line 241
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 242
    invoke-interface {p7}, Ljava/util/Set;->size()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    .line 243
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 244
    invoke-virtual {p8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 245
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 246
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;

    .line 247
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    .line 248
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    .line 249
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 250
    invoke-virtual {p6}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    .line 251
    iput-boolean p14, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mWasShownHighPriority:Z

    .line 252
    iput-boolean p13, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsNonblockable:Z

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    .line 254
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 255
    iput-boolean p12, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsDeviceProvisioned:Z

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->isFeedbackEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mShowAutomaticSetting:Z

    .line 257
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 259
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppUid:I

    const/4 p3, 0x0

    invoke-interface {p1, p5, p2, p3}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p1

    .line 261
    iget p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNumUniqueChannelsInRow:I

    if-eqz p2, :cond_2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    .line 265
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannel;

    .line 266
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p5, "miscellaneous"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-ne p1, p4, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsSingleDefaultChannel:Z

    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->getAlertingBehavior()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mBehavior:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move p4, p3

    .line 271
    :goto_1
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mIsAutomaticChosen:Z

    const-string/jumbo p1, "sans-serif-medium"

    .line 273
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSelectedFont:Landroid/graphics/Typeface;

    const-string/jumbo p1, "sans-serif"

    .line 274
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mNonSelectedFont:Landroid/graphics/Typeface;

    .line 276
    sget p1, Lcom/android/systemui/R$id;->package_enable_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPackageEnableContent:Landroid/view/View;

    .line 277
    sget p1, Lcom/android/systemui/R$id;->multi_channel_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMultiChannelContent:Landroid/view/View;

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindHeader()V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindAppSwtich()V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindChannelDetails()V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindInlineControls()V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->updateTextColorOnOpenThemeOrColoring()V

    .line 285
    sget-object p1, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_OPEN:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 262
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bindNotification requires at least one channel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActualHeight()I
    .locals 0

    .line 680
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mActualHeight:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2

    .line 661
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz p2, :cond_0

    .line 662
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPresentingChannelEditorDialog:Z

    const/4 v1, 0x0

    .line 664
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->setOnFinishListener(Lcom/android/systemui/statusbar/notification/row/OnChannelEditorDialogFinishedListener;)V

    .line 665
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->close()V

    :cond_0
    if-eqz p1, :cond_1

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->saveImportance()V

    :cond_1
    return v0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 22

    .line 886
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v3

    .line 887
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 888
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 891
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 892
    const-class v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 894
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 893
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 896
    new-instance v16, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v4, v7

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 905
    :try_start_0
    const-class v1, Landroid/app/INotificationManager;

    .line 907
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/INotificationManager;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 908
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 909
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 911
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v12

    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v13

    .line 913
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v14

    move-object/from16 v1, p1

    .line 914
    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->createGutSettingClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    move-result-object v15

    const-class v2, Lcom/android/internal/logging/UiEventLogger;

    .line 916
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/internal/logging/UiEventLogger;

    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 917
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v18

    .line 918
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v19

    const-class v2, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 919
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;->isHighPriority(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result v20

    const-class v1, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 920
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    move-object/from16 v6, p0

    move-object v7, v0

    .line 905
    invoke-virtual/range {v6 .. v21}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;Lcom/android/internal/logging/UiEventLogger;ZZZLcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "InfoGuts"

    const-string v2, "error binding guts"

    .line 922
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
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 192
    sget v0, Lcom/android/systemui/R$id;->cancel:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    sget v1, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    if-eqz p0, :cond_1

    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onFinishedClosing()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mChosenImportance:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mStartingChannelImportance:I

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->bindInlineControls()V

    .line 593
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;->NOTIFICATION_CONTROLS_CLOSE:Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->logUiEvent(Lcom/android/systemui/statusbar/notification/row/NotificationControlsEvent;)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->notificationControlsLogMaker()Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 604
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 611
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mAppName:Ljava/lang/String;

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

    .line 685
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 686
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mActualHeight:I

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 527
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 651
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
