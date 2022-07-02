.class public Lcom/android/systemui/noticolorpicker/NotificationColorPicker;
.super Ljava/lang/Object;
.source "NotificationColorPicker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomedAlpha:I


# direct methods
.method public static synthetic $r8$lambda$Qd1nkXUHR1MNtR_uziYeGVY8txU(Landroid/widget/TextView;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateHybridOverFlowNumber$3(Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_UcEntkx9dbBo7qx9t3IkpWYItE(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/widget/TextView;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateHybridOverFlowNumber$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dY656fPpIsjE__B2_ku7By6CswQ(Landroid/widget/TextView;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateHybridOverFlowNumber$4(Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sQ7OiZ6nYPmdgo3qqqFGEvzva38(IIZILcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateMessagingInterface$1(IIZILcom/android/internal/widget/MessagingGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCZD0oO0vcG_AeUs9isBkuAvnZA(ILandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateHybridOverFlowNumber$5(ILandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yuC3o2lZ5iDcXLOeQF7B-0J1MBU(Lcom/android/internal/widget/MessagingGroup;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->lambda$updateMessagingInterface$0(Lcom/android/internal/widget/MessagingGroup;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNotificationBgColor(IZ)I
    .locals 3

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getNotificationNormalBgColor(I)I

    move-result p1

    .line 122
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 123
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v1, 0xff

    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 125
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->open_theme_notification_bg_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 127
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, p2, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->qp_notification_background_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 132
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    .line 133
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {v1, p0, p2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_1
    return p1
.end method

.method private isNeedToInvert()Z
    .locals 5

    .line 257
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result v1

    .line 258
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getNotificationTextColorInversion()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isCustomColoringState()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v2, :cond_1

    const p0, 0x3c23d70a    # 0.01f

    int-to-float v1, v1

    mul-float/2addr v1, p0

    .line 260
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p0

    invoke-static {v1, p0}, Lcom/android/internal/util/ContrastColorUtil;->shouldInvertTextColor(FZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 261
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move v3, v4

    :cond_1
    return v3
.end method

.method private isNeedToInvertinNightMode(Z)Z
    .locals 5

    .line 266
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isCustomColoringState()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getNotificationTextColorInversion()I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 270
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3c23d70a    # 0.01f

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getLockNoticardOpacity()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3e800000    # 0.25f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    return v3
.end method

.method private static synthetic lambda$updateHybridOverFlowNumber$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Landroid/widget/TextView;
    .locals 1

    .line 761
    sget v0, Lcom/android/systemui/R$id;->notification_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private static synthetic lambda$updateHybridOverFlowNumber$3(Landroid/widget/TextView;)Z
    .locals 0

    .line 762
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateHybridOverFlowNumber$4(Landroid/widget/TextView;)Z
    .locals 1

    .line 763
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "hybrid_overflow_text"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateHybridOverFlowNumber$5(ILandroid/widget/TextView;)V
    .locals 0

    .line 764
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static synthetic lambda$updateMessagingInterface$0(Lcom/android/internal/widget/MessagingGroup;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateMessagingInterface$1(IIZILcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    .line 646
    invoke-virtual {p4, p0, p1}, Lcom/android/internal/widget/MessagingGroup;->setTextColors(II)V

    if-eqz p2, :cond_0

    .line 647
    invoke-virtual {p4, p3}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    :cond_0
    return-void
.end method

.method private resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 1

    .line 197
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget p3, p3, Landroid/app/Notification;->color:I

    :goto_0
    if-nez p3, :cond_1

    .line 201
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p0

    goto :goto_1

    .line 203
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result p0

    .line 206
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p2

    const/16 p3, 0xff

    if-ge p2, p3, :cond_2

    .line 208
    invoke-static {p0, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p0

    :cond_2
    return p0
.end method

.method private updateActions(Landroid/view/View;IZ)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0x10201b5

    .line 580
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    const p2, 0x10201b4

    .line 582
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    if-eqz p2, :cond_2

    .line 584
    iget-object v1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v2, 0x1080676

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 585
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 586
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 589
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 590
    invoke-virtual {p0, v2, p3}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 591
    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_1

    .line 592
    invoke-virtual {v4}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const v6, 0x1060239

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const p2, 0x102020e

    .line 597
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 598
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 599
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    const p2, 0x1020598

    .line 602
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 603
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 604
    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 706
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateReplyIcon(Landroid/view/View;)V

    .line 707
    invoke-direct {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateSmartReplyView(Landroid/view/View;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p6

    .line 708
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateMessagingInterface(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 710
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    const p2, 0x1020016

    .line 711
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 734
    invoke-virtual {p0, p3, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const p2, 0x10205da

    .line 743
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 745
    invoke-virtual {p0, p2, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private updateHeader(Landroid/view/View;IZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const p3, 0x1020006

    .line 477
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 479
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p3, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    const p2, 0x10202b9

    .line 483
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/NotificationExpandButton;

    if-eqz p2, :cond_2

    const/4 p3, 0x2

    .line 485
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/widget/NotificationExpandButton;->setDefaultTextColor(I)V

    .line 488
    :cond_2
    sget p2, Lcom/android/systemui/R$id;->notification_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 490
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const p2, 0x10201e4

    .line 493
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 495
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    const p2, 0x102031a

    .line 498
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 500
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    const p2, 0x1020319

    .line 503
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 505
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    const p2, 0x1020318

    .line 508
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 510
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const p2, 0x1020317

    .line 513
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 515
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const p2, 0x10205fd

    .line 518
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_9

    .line 520
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    const p2, 0x10205f9

    .line 523
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/DateTimeView;

    if-eqz p2, :cond_a

    .line 525
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/DateTimeView;->setTextColor(I)V

    :cond_a
    const v0, 0x102023c

    .line 528
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 529
    instance-of v1, v0, Landroid/widget/Chronometer;

    if-eqz v1, :cond_b

    .line 530
    check-cast v0, Landroid/widget/Chronometer;

    if-eqz p2, :cond_b

    .line 532
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Chronometer;->setTextColor(I)V

    :cond_b
    const p2, 0x1020273

    .line 536
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_c

    .line 538
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    const p2, 0x10201e3

    .line 541
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_d

    .line 543
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    const p2, 0x1020652

    .line 546
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_e

    .line 548
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    const p2, 0x1020654

    .line 551
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_f

    .line 553
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    const p2, 0x1020653

    .line 556
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_10

    .line 558
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_10
    const p2, 0x1020443

    .line 561
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_11

    .line 563
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_11
    const p2, 0x10201c8

    .line 566
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_12

    .line 568
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_12
    const p2, 0x10202c7

    .line 571
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eqz p1, :cond_13

    .line 573
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_13
    return-void
.end method

.method private updateHybridOverFlowNumber(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 0

    .line 760
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda2;

    .line 761
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda3;

    .line 762
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda4;

    .line 763
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 764
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateReplyIcon(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private updateSmartReplyView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 769
    sget p0, Lcom/android/systemui/R$id;->smart_reply_view:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    if-eqz p0, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->updateButtonColorOnUiModeChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I
    .locals 4

    .line 215
    invoke-direct {p0, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    move-result v2

    if-nez v2, :cond_0

    move p2, v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isCustomColoringState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p2, v2

    .line 224
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->open_theme_noti_header_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qp_notification_primary_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_3
    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_5

    .line 234
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p1

    :cond_5
    if-eqz p2, :cond_6

    .line 238
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 239
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 240
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    .line 241
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 244
    invoke-static {p2, v0, p1, v1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x2

    .line 245
    aget p2, v1, p1

    const v0, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v0

    aput p2, v1, p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    aget v2, v1, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, v1, p1

    .line 247
    invoke-static {p0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0

    :cond_6
    return p1
.end method

.method public getBgAlpha()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mCustomedAlpha:I

    return p0
.end method

.method public getGutsTextColor()I
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->notification_guts_common_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$color;->status_bar_date_clock_color:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getNotificationBgColor(I)I
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getNotificationBgColor(IZ)I

    move-result p0

    return p0
.end method

.method public getNotificationNormalBgColor(I)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_material_background_dimmed_color:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    goto :goto_0

    .line 107
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->notification_material_background_color:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTextColor(IZ)I
    .locals 4

    .line 327
    invoke-direct {p0, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToInvertinNightMode(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToInvert()Z

    move-result v2

    if-nez v2, :cond_0

    move p2, v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_a

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 368
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveDefaultColor(Landroid/content/Context;IZ)I

    move-result p0

    return p0

    :cond_1
    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p2, 0x106024a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 356
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p2, 0x1060249

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 358
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 359
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->open_theme_notification_content_text_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 362
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 363
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->qp_notification_content_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_5
    return p1

    .line 345
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_7

    const p2, 0x1060246

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_7
    invoke-static {p1, v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result p1

    .line 346
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 347
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->open_theme_notification_content_text_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 350
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 351
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->qp_notification_content_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_9
    return p1

    .line 334
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_b

    const p2, 0x1060242

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_3

    :cond_b
    invoke-static {p1, v1, v0}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result p1

    .line 335
    :goto_3
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 336
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->open_theme_notification_title_text_color:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 339
    :cond_c
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 340
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$color;->qp_notification_title_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :cond_d
    return p1
.end method

.method public hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z
    .locals 0

    .line 278
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

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

.method public isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 288
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomBigNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomHeadsupNotification()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomPublicNotification()Z

    move-result p0

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

.method public isCustomColoringState()Z
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p0

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

.method public isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 309
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->isGrayscale(Landroid/widget/ImageView;Lcom/android/internal/util/ContrastColorUtil;)Z

    move-result p0

    return p0
.end method

.method public isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isNightModeOn()Z
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resolveHeaderAppIconColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I
    .locals 4

    .line 158
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v0

    .line 160
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isColorized()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 165
    invoke-direct {p0, v0, v2, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v0

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isColorized()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isCustom(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 169
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->open_theme_noti_header_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qp_notification_primary_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 180
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    .line 181
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 182
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 183
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/4 v2, 0x3

    new-array v2, v2, [F

    .line 186
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 p1, 0x2

    .line 187
    aget v0, v2, p1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v1

    aput v0, v2, p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    aget v3, v2, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v2, p1

    .line 189
    invoke-static {p0, v2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    :cond_3
    return v0
.end method

.method public updateAllTextViewColors(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    if-nez v8, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_4

    .line 378
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v1, v11

    :goto_0
    if-ge v1, v0, :cond_3

    .line 380
    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 381
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v3, :cond_2

    .line 382
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 383
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v7, v3, v9}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    .line 388
    :cond_1
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    sget v4, Lcom/android/systemui/R$id;->expandedPublic:I

    if-ne v3, v4, :cond_2

    .line 389
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isPersona()Z

    move-result v3

    if-nez v3, :cond_2

    .line 392
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez v3, :cond_2

    .line 393
    invoke-virtual {v7, v11}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getNotificationBgColor(I)I

    move-result v3

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result v4

    .line 393
    invoke-direct {v7, v3, v4, v8}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result v3

    invoke-direct {v7, v2, v3, v10, v11}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 402
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v12

    .line 403
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v13

    .line 405
    invoke-direct {v7, v8, v13}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateHybridOverFlowNumber(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 410
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getCurrentHeaderView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {v7, v0, v13, v12, v9}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    .line 414
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v14

    move v15, v11

    :goto_1
    if-ge v15, v14, :cond_8

    .line 416
    invoke-virtual {v8, v15}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v1, :cond_7

    .line 418
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 419
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    .line 420
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/row/HybridNotificationView;

    move-result-object v6

    .line 421
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v16

    .line 422
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v17

    .line 424
    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v4

    .line 426
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/4 v2, 0x2

    .line 428
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v19

    .line 444
    invoke-virtual {v7, v4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->hasIncreasedCollapseView(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object/from16 v0, p0

    move v2, v13

    move v3, v12

    move/from16 v5, p2

    move-object v10, v6

    move-object/from16 v6, p1

    .line 445
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_2

    :cond_6
    move-object v10, v6

    move-object/from16 v0, p0

    move v2, v13

    move v3, v12

    move/from16 v5, p2

    move-object/from16 v6, p1

    .line 447
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v13

    move v3, v12

    move-object/from16 v4, v18

    move/from16 v5, p2

    move-object/from16 v6, p1

    .line 449
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    move-object/from16 v1, v17

    move-object/from16 v4, v19

    .line 450
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 451
    invoke-virtual {v7, v10, v9}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateSingleLine(Landroid/view/View;Z)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public updateBig(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateReplyIcon(Landroid/view/View;)V

    .line 613
    invoke-direct {p0, p1, p2, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateActions(Landroid/view/View;IZ)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateSmartReplyView(Landroid/view/View;)V

    .line 617
    instance-of v0, p4, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const v0, 0x1020205

    .line 618
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 620
    invoke-virtual {p0, v1, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v0, 0x0

    .line 624
    :goto_0
    sget-object v2, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->INBOX_ROWS:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 625
    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 627
    invoke-virtual {p0, v1, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 630
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateBase(Landroid/view/View;IZLcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;ZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public updateHeader(Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 470
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getAppPrimaryColor(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isGrayScaleIcon(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->isDimmed()Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateHeader(Landroid/view/View;IZZ)V

    return-void
.end method

.method public updateMessagingInterface(Landroid/view/View;IZZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 5

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    const/4 v2, 0x1

    .line 637
    invoke-virtual {p0, v2, p4}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p4

    .line 640
    instance-of v2, p1, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v2, :cond_0

    .line 641
    move-object v2, p1

    check-cast v2, Lcom/android/internal/widget/IMessagingLayout;

    .line 642
    invoke-interface {v2}, Lcom/android/internal/widget/IMessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object v3

    .line 643
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    .line 645
    sget-object v4, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda5;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, p4, p3, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker$$ExternalSyntheticLambda1;-><init>(IIZI)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 650
    instance-of p2, v2, Lcom/android/internal/widget/ConversationLayout;

    if-eqz p2, :cond_0

    .line 651
    check-cast v2, Lcom/android/internal/widget/ConversationLayout;

    .line 652
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ConversationLayout;->setSenderTextColor(I)V

    const p2, 0x1020274

    .line 654
    invoke-virtual {v2, p2}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 655
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->mContext:Landroid/content/Context;

    const p3, 0x1060240

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 662
    invoke-virtual {p0}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNightModeOn()Z

    move-result p3

    invoke-direct {p0, p2, p3, p5}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->resolveContrastColor(IZLcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)I

    move-result p3

    .line 664
    instance-of p4, p1, Lcom/android/internal/widget/ConversationLayout;

    if-eqz p4, :cond_2

    .line 665
    check-cast p1, Lcom/android/internal/widget/ConversationLayout;

    .line 666
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ConversationLayout;->setLayoutColor(I)V

    .line 669
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/ConversationLayout;->setNotificationBackgroundColor(I)V

    .line 672
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationLayout;->updateHistoricMessageVisibility()V

    .line 673
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationLayout;->updateTitleAndNamesDisplay()V

    .line 674
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationLayout;->updateConversationLayout()V

    .line 677
    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 678
    instance-of p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz p2, :cond_3

    .line 680
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 682
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_3

    .line 683
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of p2, p2, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    if-eqz p2, :cond_1

    .line 684
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/HybridConversationNotificationView;

    const p3, 0x102026d

    .line 685
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ConversationLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_2
    instance-of p2, p1, Lcom/android/internal/widget/MessagingLayout;

    if-eqz p2, :cond_3

    .line 692
    check-cast p1, Lcom/android/internal/widget/MessagingLayout;

    .line 693
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/MessagingLayout;->setLayoutColor(I)V

    .line 696
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingLayout;->updateHistoricMessageVisibility()V

    .line 697
    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingLayout;->updateTitleAndNamesDisplay()V

    .line 699
    invoke-direct {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->updateReplyIcon(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public updateSingleLine(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 459
    :cond_0
    sget v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->SINGLELINE_TITLE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    :cond_1
    sget v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->SINGLELINE_TEXT:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->getTextColor(IZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
