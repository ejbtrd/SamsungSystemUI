.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;
.super Landroid/widget/LinearLayout;
.source "SecNotificationConversationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;
.implements Lcom/android/systemui/statusbar/notification/row/LongPressGut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;,
        Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;
    }
.end annotation


# instance fields
.field private mActualHeight:I

.field private mAppBubble:I

.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mBgHandler:Landroid/os/Handler;

.field private mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

.field private mBubblesManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegatePkg:Ljava/lang/String;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

.field private mIsDeviceProvisioned:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mNonSelectedFont:Landroid/graphics/Typeface;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mOnConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;

.field private mOnDone:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

.field private mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

.field private mPackageName:Ljava/lang/String;

.field private mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPressedApply:Z

.field private mRadioAlert:Landroid/widget/RadioButton;

.field private mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRadioOff:Landroid/widget/RadioButton;

.field private mRadioPriority:Landroid/widget/RadioButton;

.field private mRadioSilent:Landroid/widget/RadioButton;

.field private mSaveButton:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mSelectedAction:I

.field private mSelectedFont:Landroid/graphics/Typeface;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private mShortcutManager:Landroid/content/pm/ShortcutManager;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUserContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$ArjrlxiFDklBMvgJN8UYkV6EH04(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->lambda$getSettingsOnClickListener$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FWefyf_9J60Q-7WnIVFQIiODSuM(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0hoFoqnbsRXXDaI2-LJ9NMy1fQ(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->lambda$updateChannel$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 119
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSkipPost:Z

    .line 153
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    .line 158
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/graphics/Typeface;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioPriority:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Ljava/util/Optional;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mBubblesManagerOptional:Ljava/util/Optional;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/graphics/Typeface;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNonSelectedFont:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/widget/RadioButton;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioOff:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindIcon(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->updateButtonText()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppBubble:I

    return p0
.end method

.method private bindContent()V
    .locals 6

    .line 292
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppBubble:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 293
    sget v0, Lcom/android/systemui/R$id;->default_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->notification_channel_summary_default_with_bubbles:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->conversation_radio_priority:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioPriority:Landroid/widget/RadioButton;

    .line 298
    sget v3, Lcom/android/systemui/R$string;->notification_priority_title:I

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(I)V

    .line 300
    sget v2, Lcom/android/systemui/R$id;->conversation_radio_alert:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    .line 301
    sget v4, Lcom/android/systemui/R$string;->notification_info_radio_alert_text:I

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 304
    sget v3, Lcom/android/systemui/R$id;->conversation_radio_silent:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    .line 305
    sget v5, Lcom/android/systemui/R$string;->notification_info_radio_silent_text:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(I)V

    .line 307
    sget v4, Lcom/android/systemui/R$id;->conversation_radio_off:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioOff:Landroid/widget/RadioButton;

    .line 308
    sget v5, Lcom/android/systemui/R$string;->notification_info_radio_off_text:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(I)V

    .line 310
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioButtonClickListner:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->getPriority()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v0, 0x4

    if-eq v4, v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 326
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSaveButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSaveButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->notification_info_done_button:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    return-void
.end method

.method private bindConversationDetails()V
    .locals 2

    .line 358
    sget v0, Lcom/android/systemui/R$id;->parent_channel_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindGroup()V

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindPackage()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindIcon(Z)V

    return-void
.end method

.method private bindDelegate()V
    .locals 2

    .line 392
    sget v0, Lcom/android/systemui/R$id;->delegate_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mDelegatePkg:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 396
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 398
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindGroup()V
    .locals 5

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 409
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    .line 408
    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 416
    :catch_0
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 419
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 421
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindHeader()V
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindConversationDetails()V

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindDelegate()V

    .line 340
    sget v0, Lcom/android/systemui/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private bindIcon(Z)V
    .locals 4

    .line 369
    sget v0, Lcom/android/systemui/R$id;->conversation_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    invoke-virtual {v1, v2, v3, p0, p1}, Lcom/android/settingslib/notification/ConversationIconFactory;->getConversationDrawable(Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private bindPackage()V
    .locals 3

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :catch_0
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->pkg_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPriority()I
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 486
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v2, -0x3e8

    if-le v0, v2, :cond_0

    const/4 p0, 0x4

    return p0

    .line 489
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 346
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 348
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSettingsOnClickListener$1(ILandroid/view/View;)V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {v0, p2, v1, p1}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 350
    const-class p2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p2, v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPressedApply:Z

    .line 155
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$updateChannel$2()V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;->onImportanceChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private updateButtonText()V
    .locals 2

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->getPriority()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 427
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 429
    sget v0, Lcom/android/systemui/R$string;->notification_info_save_button:I

    goto :goto_1

    .line 430
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->notification_info_done_button:I

    .line 428
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method private updateChannel()V
    .locals 9

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mBgHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->markForUserTriggeredMovement(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)V

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 7

    .line 637
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 638
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 650
    :cond_1
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qp_notification_guts_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 656
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 658
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 663
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    :cond_4
    sget v1, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 669
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioPriority:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 673
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 674
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioPriority:Landroid/widget/RadioButton;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v6, v2, [I

    aput v0, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 677
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    if-eqz v1, :cond_7

    .line 678
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 679
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioAlert:Landroid/widget/RadioButton;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v6, v2, [I

    aput v0, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 682
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    if-eqz v1, :cond_8

    .line 683
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioSilent:Landroid/widget/RadioButton;

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v2, [[I

    new-array v6, v3, [I

    aput-object v6, v5, v3

    new-array v2, v2, [I

    aput v0, v2, v3

    invoke-direct {v4, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 687
    :cond_8
    sget v1, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 689
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    :cond_9
    sget v1, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_a

    .line 701
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public bindNotification(ILandroid/content/pm/ShortcutManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$BubbleMetadata;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/settingslib/notification/ConversationIconFactory;Landroid/content/Context;ZLandroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/pm/ShortcutManager;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Landroid/app/Notification$BubbleMetadata;",
            "Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;",
            "Lcom/android/settingslib/notification/ConversationIconFactory;",
            "Landroid/content/Context;",
            "Z",
            "Landroid/os/Handler;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/wmshell/BubblesManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p9

    const/4 v2, 0x0

    .line 240
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPressedApply:Z

    move v3, p1

    .line 241
    iput v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    move-object v3, p5

    .line 242
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    move-object v3, p4

    .line 243
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPeopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    move-object v3, p6

    .line 244
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    move-object v3, p7

    .line 245
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    .line 246
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 247
    invoke-virtual {p9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    move-object v4, p3

    .line 248
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 249
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;

    move-object/from16 v4, p11

    .line 250
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    move-object v4, p8

    .line 251
    iput-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 252
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    .line 253
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mDelegatePkg:Ljava/lang/String;

    move/from16 v3, p14

    .line 254
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mIsDeviceProvisioned:Z

    move-object/from16 v3, p17

    .line 255
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mOnConversationSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;

    move-object/from16 v3, p12

    .line 256
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mIconFactory:Lcom/android/settingslib/notification/ConversationIconFactory;

    move-object/from16 v3, p13

    .line 257
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mUserContext:Landroid/content/Context;

    move-object/from16 v3, p10

    .line 258
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mBubbleMetadata:Landroid/app/Notification$BubbleMetadata;

    move-object/from16 v3, p18

    .line 259
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mBubblesManagerOptional:Ljava/util/Optional;

    move-object/from16 v3, p19

    .line 260
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v3, p15

    .line 263
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mMainHandler:Landroid/os/Handler;

    move-object/from16 v3, p16

    .line 264
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mBgHandler:Landroid/os/Handler;

    move-object v3, p2

    .line 265
    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mShortcutManager:Landroid/content/pm/ShortcutManager;

    .line 266
    invoke-virtual {p9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 271
    invoke-static {v3, v4, p9, v5}, Lcom/android/systemui/statusbar/notification/NotificationChannelHelper;->createConversationChannelIfNeeded(Landroid/content/Context;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 275
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppUid:I

    invoke-interface {v0, v3, v4}, Landroid/app/INotificationManager;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppBubble:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "ConversationGuts"

    const-string v4, "can\'t reach OS"

    .line 277
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 278
    iput v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppBubble:I

    .line 281
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->conversation_radio_group:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mRadioGroup:Landroid/widget/RadioGroup;

    const-string/jumbo v0, "sans-serif-medium"

    .line 283
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedFont:Landroid/graphics/Typeface;

    const-string/jumbo v0, "sans-serif"

    .line 284
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mNonSelectedFont:Landroid/graphics/Typeface;

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindHeader()V

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindContent()V

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->updateTextColorOnOpenThemeOrColoring()V

    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does not have required information"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActualHeight()I
    .locals 0

    .line 538
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mActualHeight:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method getSelectedAction()I
    .locals 0

    .line 481
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    return p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 528
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->updateChannel()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    move-object v10, v11

    .line 708
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 709
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 711
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 712
    const-class v4, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 714
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 713
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v4, v22

    .line 717
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda2;

    move-object/from16 v18, v3

    invoke-direct {v3, v12, v2, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 722
    new-instance v19, Lcom/android/settingslib/notification/ConversationIconFactory;

    move-object/from16 v13, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v20

    const-class v2, Landroid/content/pm/LauncherApps;

    .line 723
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/content/pm/LauncherApps;

    .line 724
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    move-result-object v23

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->notification_guts_conversation_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-direct/range {v19 .. v24}, Lcom/android/settingslib/notification/ConversationIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->getSelectedAction()I

    move-result v2

    const-class v3, Landroid/content/pm/ShortcutManager;

    .line 730
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    const-class v5, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    .line 732
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    const-class v6, Landroid/app/INotificationManager;

    .line 733
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/INotificationManager;

    const-class v7, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 734
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    .line 736
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v9

    .line 738
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v11

    .line 739
    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->createGutSettingClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    move-result-object v12

    const-class v0, Lcom/android/systemui/settings/UserContextProvider;

    .line 741
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/UserContextProvider;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v14

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 742
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v15

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 743
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 744
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BUBBLE_MANAGER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 746
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Optional;

    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 747
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 728
    invoke-virtual/range {v1 .. v20}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->bindNotification(ILandroid/content/pm/ShortcutManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;Ljava/lang/String;Landroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification$BubbleMetadata;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Lcom/android/settingslib/notification/ConversationIconFactory;Landroid/content/Context;ZLandroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$OnConversationSettingsClickListener;Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    const/4 v0, 0x1

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
    .locals 1

    .line 446
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 448
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 450
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onFinishedClosing()V
    .locals 1

    const/4 v0, -0x1

    .line 457
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 467
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mAppName:Ljava/lang/String;

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

    .line 543
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 544
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mActualHeight:I

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 436
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 437
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 440
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method setSelectedAction(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    if-ne v0, p1, :cond_0

    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mSelectedAction:I

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 518
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
