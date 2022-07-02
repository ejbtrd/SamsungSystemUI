.class public Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;
.super Landroid/widget/LinearLayout;
.source "SecPartialConversationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;
.implements Lcom/android/systemui/statusbar/notification/row/GutContentInitializer;
.implements Lcom/android/systemui/statusbar/notification/row/LongPressGut;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppUid:I

.field private mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

.field private mDelegatePkg:Ljava/lang/String;

.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDeviceProvisioned:Z

.field private mMultiChannelContent:Landroid/view/View;

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field private mNumUniqueChannelsInRow:I

.field private mOnDone:Landroid/view/View$OnClickListener;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

.field private mPackageName:Ljava/lang/String;

.field private mPkgIcon:Landroid/graphics/drawable/Drawable;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPressedApply:Z

.field private mSaveButton:Landroid/widget/TextView;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field mSkipPost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mUniqueChannelsInRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FoaOexpZemss0jw444jrFsthEiE(Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->lambda$getSettingsOnClickListener$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBxyi76bSUJNSJOtsIR090fX3nw(Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSkipPost:Z

    .line 117
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private bindButtons()V
    .locals 2

    .line 193
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSaveButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mOnDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSaveButton:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$string;->notification_info_done_button:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private bindGroup()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 244
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppUid:I

    .line 243
    invoke-interface {v0, v2, v3, v4}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 251
    :catch_0
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private bindHeader()V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindPackage()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindGroup()V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindName()V

    .line 164
    sget v0, Lcom/android/systemui/R$id;->info:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->getSettingsOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
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

.method private bindName()V
    .locals 1

    .line 170
    sget v0, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private bindPackage()V
    .locals 3

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPackageName:Ljava/lang/String;

    const v2, 0xc2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppName:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    .line 230
    :cond_0
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget v0, Lcom/android/systemui/R$id;->pkgicon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 234
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPkgIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getName()Ljava/lang/String;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.conversationTitle"

    .line 183
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "android.title"

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private getSettingsOnClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppUid:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mIsDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;I)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$getSettingsOnClickListener$1(ILandroid/view/View;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    invoke-interface {v0, p2, v1, p1}, Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;->onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V

    .line 207
    const-class p2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p2, v0, p1, v1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPressedApply:Z

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method

.method private updateTextColorOnOpenThemeOrColoring()V
    .locals 3

    .line 343
    const-class v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    .line 344
    invoke-virtual {v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getGutsTextColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->notification_header_bg_tw:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 355
    :cond_1
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$color;->qp_notification_guts_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 360
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->pkgname:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 362
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    :cond_3
    sget v1, Lcom/android/systemui/R$id;->group_name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 367
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    :cond_4
    sget v1, Lcom/android/systemui/R$id;->name:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 373
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 376
    :cond_5
    sget v1, Lcom/android/systemui/R$id;->non_configurable_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 378
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    :cond_6
    sget v1, Lcom/android/systemui/R$id;->package_block_content_text:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 383
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    :cond_7
    sget v1, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_8

    .line 395
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/app/INotificationManager;",
            "Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/Set<",
            "Landroid/app/NotificationChannel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;",
            "Z)V"
        }
    .end annotation

    .line 136
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    .line 137
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPackageName:Ljava/lang/String;

    .line 138
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 139
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppName:Ljava/lang/String;

    .line 142
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    .line 143
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 144
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppUid:I

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mDelegatePkg:Ljava/lang/String;

    .line 146
    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mIsDeviceProvisioned:Z

    .line 147
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mChannelEditorDialogController:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 148
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mUniqueChannelsInRow:Ljava/util/Set;

    .line 149
    invoke-interface {p6}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mNumUniqueChannelsInRow:I

    .line 150
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getConversationShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 152
    sget p1, Lcom/android/systemui/R$id;->multi_channel_content:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mMultiChannelContent:Landroid/view/View;

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindHeader()V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindButtons()V

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->updateTextColorOnOpenThemeOrColoring()V

    return-void
.end method

.method public getActualHeight()I
    .locals 0

    .line 333
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public handleCloseControls(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initializeGutContentView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 11

    .line 401
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 405
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 407
    const-class v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 409
    const-class v1, Landroid/app/INotificationManager;

    .line 411
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/INotificationManager;

    const-class v1, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 412
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    .line 414
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v6

    .line 415
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v7

    .line 416
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    .line 417
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->createGutSettingClickListener(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;

    move-result-object v9

    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 418
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v10

    move-object v1, p0

    .line 409
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/GutContentInitializer$OnSettingsClickListener;Z)V

    const/4 p0, 0x1

    return p0
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

    .line 272
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 274
    sget v0, Lcom/android/systemui/R$id;->save:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSaveButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 276
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onFinishedClosing()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 293
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isExposed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_opened_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->notification_channel_controls_closed_accessibility:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mAppName:Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mSkipPost:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public shouldBeSaved()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/SecPartialConversationInfo;->mPressedApply:Z

    return p0
.end method

.method public willBeRemoved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
