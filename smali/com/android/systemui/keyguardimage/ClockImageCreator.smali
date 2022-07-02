.class Lcom/android/systemui/keyguardimage/ClockImageCreator;
.super Ljava/lang/Object;
.source "ClockImageCreator.java"

# interfaces
.implements Lcom/android/systemui/keyguardimage/ImageCreator;


# instance fields
.field private final mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

.field private final mContext:Landroid/content/Context;

.field private final mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

.field private final mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

.field private final mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    .line 41
    const-class p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    .line 42
    const-class p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 43
    const-class p1, Lcom/android/systemui/subscreen/SubScreenManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/subscreen/SubScreenManager;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 44
    const-class p1, Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/cover/CoverScreenManager;

    iput-object p1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    return-void
.end method

.method private getClockType()I
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getDefaultClockType()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getLockClockType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getClockGroup(I)I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x7

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-eq p0, v2, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private getSideMargin(ZII)I
    .locals 2

    .line 184
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 187
    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getFaceWidgetSidePadding()Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    sget v1, Lcom/android/systemui/R$dimen;->facewidget_page_margin_side:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-nez v0, :cond_1

    return p0

    .line 196
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_2

    xor-int/lit8 p0, p1, 0x1

    .line 197
    invoke-interface {v0, p2, p3, p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->getTabletClockSidePadding(IIZ)I

    move-result p0

    return p0

    :cond_2
    if-eqz p1, :cond_3

    .line 202
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->getClockSidePadding()I

    move-result p0

    return p0

    .line 206
    :cond_3
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->needToSidePaddingForClock()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 207
    invoke-interface {v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetSidePadding;->getSidePaddingWhenIndisplayFP()I

    move-result p0

    return p0

    :cond_4
    int-to-float p0, p2

    const p1, 0x3e25e354    # 0.162f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private isDisplayVirtual(I)Z
    .locals 0

    const/16 p0, 0x21

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 9

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createImage() option.type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clockFontColorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockColorIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clockColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ClockImageCreator"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_8

    .line 78
    iget v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->displayType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->isDisplayVirtual(I)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "createImage return null - mCoverScreenManager is null"

    .line 80
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 83
    :cond_0
    iget-object v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 84
    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    if-eq v8, v6, :cond_1

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    if-eq v8, v6, :cond_1

    .line 86
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/systemui/cover/CoverScreenManager;->getClockPreview(III)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/cover/CoverScreenManager;->getClockPreview(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/cover/CoverScreenManager;->getClockPreview()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_7

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "createImage return null - getClockPreview is null"

    .line 95
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    if-nez v0, :cond_4

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "createImage returns null - SubScreenManager is null"

    .line 101
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 104
    :cond_4
    iget-object v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 105
    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    if-eq v8, v6, :cond_5

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    if-eq v8, v6, :cond_5

    .line 107
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColorIndex:I

    iget v8, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockFontColorType:I

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/systemui/subscreen/SubScreenManager;->getClockPreview(III)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 110
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/systemui/subscreen/SubScreenManager;->getClockPreview(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->getClockPreview()Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_7

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "createImage returns null - getClockPreview is null"

    .line 117
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_7
    move v3, v2

    goto :goto_4

    .line 123
    :cond_8
    iget-object v0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockType:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getClockType()I

    move-result v0

    goto :goto_2

    :cond_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createImage clockType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v6, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v6, v0}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->getClockView(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_a

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "createImage returns null - clockView is null"

    .line 129
    invoke-static {v3, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    .line 133
    :cond_a
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useDefaultColor:Z

    if-nez v3, :cond_b

    .line 134
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    iget-object v5, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->color:[I

    invoke-virtual {v3, v6, v5}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setAdaptiveColors(Landroid/view/View;[I)V

    goto :goto_3

    .line 135
    :cond_b
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->useClockColor:Z

    if-eqz v3, :cond_c

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->clockColor:I

    if-eqz v3, :cond_c

    .line 136
    iget-object v5, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v5, v6, v3, v1}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setColorThemeAdaptiveColor(Landroid/view/View;IZ)V

    goto :goto_3

    .line 138
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v3, v6}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->setPreDefineOrCustomColor(Landroid/view/View;)V

    .line 141
    :goto_3
    iget-boolean v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v3, :cond_d

    .line 142
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 145
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v3, v6}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->forceRefresh(Landroid/view/View;)V

    move v3, v0

    move-object v0, v6

    .line 148
    :goto_4
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/keyguardimage/ImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p2, :cond_12

    .line 151
    iget-object v5, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 152
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 153
    sget v7, Lcom/android/systemui/R$dimen;->facewidget_bottom_margin_ratio:I

    invoke-virtual {v5, v7, v6, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 155
    iget-object v6, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mClockProvider:Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;

    invoke-virtual {v6, v3}, Lcom/android/systemui/facewidget/plugin/ExternalClockProvider;->isStartAlignClock(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 156
    iget v2, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    if-ge v2, v6, :cond_e

    goto :goto_5

    :cond_e
    move v4, v1

    :goto_5
    invoke-direct {p0, v4, v2, v6}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->getSideMargin(ZII)I

    move-result v2

    int-to-float v2, v2

    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 159
    iget-boolean v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->isRtl:Z

    if-eqz v4, :cond_10

    .line 160
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    sub-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v4, v2

    iput v4, p2, Landroid/graphics/Point;->x:I

    goto :goto_6

    :cond_f
    if-eqz v0, :cond_10

    .line 164
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/2addr v4, v2

    iput v4, p2, Landroid/graphics/Point;->x:I

    .line 168
    :cond_10
    :goto_6
    sget v2, Lcom/android/systemui/R$dimen;->facewidget_min_height:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 169
    iget v4, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_11

    const/4 v2, 0x0

    goto :goto_7

    .line 170
    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    .line 172
    :goto_7
    sget v4, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v2, v4

    .line 173
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/ClockImageCreator;->mPluginFaceWidget:Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    .line 174
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getMinTopMargin(IZ)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    iget p0, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->scale:F

    mul-float/2addr v2, p0

    float-to-int p0, v2

    iput p0, p2, Landroid/graphics/Point;->y:I

    :cond_12
    return-object v0
.end method
