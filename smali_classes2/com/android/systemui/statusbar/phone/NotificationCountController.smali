.class public Lcom/android/systemui/statusbar/phone/NotificationCountController;
.super Ljava/lang/Object;
.source "NotificationCountController.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountIcon:Landroid/widget/TextView;

.field private mCountIconSize:I

.field private mCountTextSize:I

.field private mDarkIntensity:F

.field private mDarkModeIconColorSingleTone:I

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mLightModeIconColorSingleTone:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$lYtwYJSg7LnEqzeCG0vw5yYxw9Y(Lcom/android/systemui/statusbar/phone/NotificationCountController;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->lambda$reloadDimens$0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotificationCountController"

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintArea:Landroid/graphics/Rect;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 45
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method private applyNotificationCountTint()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInArea(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 122
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkIntensity:F

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->calculateDarkness(F)Z

    move-result v3

    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    move v1, v2

    .line 124
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    sget v3, Lcom/android/systemui/R$color;->notification_count_text_color_dark:I

    goto :goto_3

    .line 125
    :cond_4
    sget v3, Lcom/android/systemui/R$color;->notification_count_text_color_light:I

    .line 124
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    sget v1, Lcom/android/systemui/R$drawable;->notification_count_background_dark:I

    goto :goto_4

    .line 127
    :cond_5
    sget v1, Lcom/android/systemui/R$drawable;->notification_count_background_light:I

    .line 126
    :goto_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private calculateDarkness(F)Z
    .locals 3

    .line 115
    invoke-static {}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->getInstance()Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mLightModeIconColorSingleTone:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkModeIconColorSingleTone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-virtual {v0, p1, v1, v2}, Landroidx/vectordrawable/graphics/drawable/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 117
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkModeIconColorSingleTone:I

    sub-int/2addr v0, p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mLightModeIconColorSingleTone:I

    sub-int/2addr p1, p0

    if-le v0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private calculateNotificationCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 11

    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->shouldShowNotificationIcon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZZZ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getAttachedNotifChildren()Ljava/util/List;

    move-result-object p0

    .line 96
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$reloadDimens$0(Landroid/view/ViewGroup;)V
    .locals 1

    .line 52
    sget v0, Lcom/android/systemui/R$id;->notificationCounts:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getNotificationCount()I
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 84
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->calculateNotificationCount(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 68
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz p1, :cond_0

    .line 70
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkIntensity:F

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->applyNotificationCountTint()V

    :cond_1
    return-void
.end method

.method public reloadDimens(Landroid/content/Context;)V
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mIconController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationCountController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationCountController;)V

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 54
    sget v1, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mDarkModeIconColorSingleTone:I

    .line 55
    sget v1, Lcom/android/systemui/R$color;->light_mode_icon_color_single_tone:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mLightModeIconColorSingleTone:I

    .line 56
    sget p1, Lcom/android/systemui/R$dimen;->notification_count_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    .line 57
    sget p1, Lcom/android/systemui/R$dimen;->notification_count_text_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountTextSize:I

    return-void
.end method

.method public updateCountIcon()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->getNotificationCount()I

    move-result v0

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, v0

    .line 136
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->updateNotificationCountLayoutParams()V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationCountController;->applyNotificationCountTint()V

    return-void
.end method

.method public updateNotificationCountLayoutParams()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    div-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    .line 108
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIconSize:I

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 109
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->notification_count_icon_start_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationCountController;->mCountIcon:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
