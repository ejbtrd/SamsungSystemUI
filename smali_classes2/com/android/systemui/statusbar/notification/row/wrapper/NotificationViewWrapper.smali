.class public abstract Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.super Ljava/lang/Object;
.source "NotificationViewWrapper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/TransformableView;


# instance fields
.field protected mBackgroundColor:I

.field protected final mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private final mTmpRect:Landroid/graphics/Rect;

.field protected final mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 92
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V

    return-void
.end method

.method public static wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10205b5

    if-ne v0, v1, :cond_9

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigPicture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigPictureTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationBigTextTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bigMediaNarrow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "messaging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 70
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "conversation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 72
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 75
    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const-class v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 79
    :cond_6
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;->hasCustomView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationDecoratedCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 82
    :cond_7
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 67
    :cond_8
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 83
    :cond_9
    instance-of v0, p1, Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_a

    .line 84
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0

    .line 86
    :cond_a
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0
.end method


# virtual methods
.method childrenNeedInversion(ILandroid/view/ViewGroup;)Z
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 173
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v1

    .line 174
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-eq v2, v3, :cond_1

    .line 175
    invoke-static {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    move-result p1

    .line 176
    invoke-static {p1, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    :cond_1
    move p1, v0

    .line 178
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 179
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 180
    instance-of v3, v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 181
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    .line 182
    invoke-static {v2, v1}, Lcom/android/internal/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v2, v2, v5

    if-gez v2, :cond_3

    return v4

    .line 185
    :cond_2
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 186
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method protected getBackgroundColor(Landroid/view/View;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 200
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_1

    .line 201
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    :cond_1
    return p0
.end method

.method public getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    :goto_0
    return p0
.end method

.method public getExpandButton()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraMeasureHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderTranslation(Z)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMinLayoutHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOriginalIconColor()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected invertViewLuminosity(Landroid/view/View;)V
    .locals 3

    .line 207
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 208
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 209
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 212
    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    const/16 v2, 0x14

    new-array v2, v2, [F

    .line 213
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 220
    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 221
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 222
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x2

    .line 223
    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected needsInversion(ILandroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 126
    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    return v0

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_3

    return v0

    .line 137
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-nez p1, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    move-result p1

    :cond_5
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 145
    fill-array-data v1, :array_0

    .line 146
    invoke-static {p1, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 149
    aget v2, v1, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_6

    return v0

    .line 154
    :cond_6
    aget v2, v1, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-double v1, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v4

    if-lez v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    if-eqz v1, :cond_8

    return v3

    .line 160
    :cond_8
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    .line 161
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->childrenNeedInversion(ILandroid/view/ViewGroup;)Z

    move-result p0

    return p0

    :cond_9
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onReinflated()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->shouldClearBackgroundOnReapply()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iput v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getBackgroundColor(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected resolveBackgroundColor()I
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 330
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010031

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public setContentHeight(II)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderVisibleAmount(F)V
    .locals 0

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 0

    return-void
.end method

.method public setLegacy(Z)V
    .locals 0

    return-void
.end method

.method public setRecentlyAudiblyAlerted(Z)V
    .locals 0

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0

    return-void
.end method

.method public setRemoved()V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 311
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showFeedbackIcon(ZLandroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method public transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-static {p0, p2, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    return-void
.end method

.method public transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 0

    return-void
.end method