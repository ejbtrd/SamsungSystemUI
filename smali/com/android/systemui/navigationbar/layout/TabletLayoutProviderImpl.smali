.class public Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;
.super Ljava/lang/Object;
.source "TabletLayoutProviderImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentAlign:I

.field mCurrentNavigationMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    .line 36
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getButtonDistanceSize(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 105
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 106
    :goto_0
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-nez p0, :cond_1

    int-to-double p0, p2

    const-wide v0, 0x3f8a9fbe80000000L    # 0.013000000268220901

    :goto_1
    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0

    .line 109
    :cond_1
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fb851eb80000000L    # 0.0949999988079071

    goto :goto_1
.end method

.method public getButtonWidth(Landroid/graphics/Point;Z)I
    .locals 2

    if-eqz p2, :cond_0

    .line 80
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 81
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-nez v0, :cond_2

    int-to-double p1, p2

    .line 82
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-wide v0, 0x3fca7ef9e0000000L    # 0.2070000022649765

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fbeb851e0000000L    # 0.11999999731779099

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0

    .line 84
    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fc0a3d700000000L    # 0.12999999523162842

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getGesturalLayout(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 63
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-eqz p2, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureTabletRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarGestureTabletLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p1, 0x1

    .line 67
    iput p1, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-eqz p2, :cond_2

    .line 68
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarRevLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_secNavBarLayoutHandle:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getGestureWidth(Landroid/graphics/Point;Z)I
    .locals 2

    .line 90
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x3fd0a3d700000000L    # 0.25999999046325684

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getLayout(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevTabletLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->config_navBarTabletLayout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLayout(ZI)Ljava/lang/String;
    .locals 1

    .line 49
    iput p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    if-nez p2, :cond_1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevWinnerLayoutAlignLeft:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$string;->config_navBarWinnerLayoutAlignLeft:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 54
    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/R$string;->config_navBarRevWinnerLayoutAlignRight:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/systemui/R$string;->config_navBarWinnerLayoutAlignRight:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->getLayout(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpaceSidePadding(Landroid/graphics/Point;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 115
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 116
    :goto_0
    iget v0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    const-wide v1, 0x3fa10624e0000000L    # 0.033250000327825546

    if-nez v0, :cond_2

    int-to-double p1, p2

    .line 117
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    mul-double/2addr p1, v1

    double-to-int p0, p1

    return p0

    .line 119
    :cond_2
    iget p0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, v1

    double-to-int p0, p0

    return p0
.end method

.method public getSpaceWidth(Landroid/graphics/Point;Z)I
    .locals 3

    if-eqz p2, :cond_0

    .line 95
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 96
    :goto_0
    iget p2, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentNavigationMode:I

    const-wide v0, 0x3fbc28f5c0000000L    # 0.10999999940395355

    if-nez p2, :cond_2

    int-to-double p1, p1

    .line 97
    iget p0, p0, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;->mCurrentAlign:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide v0, 0x3fb3333340000000L    # 0.07500000298023224

    :goto_1
    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0

    :cond_2
    int-to-double p0, p1

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public getVerticalLayoutID(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    sget p0, Lcom/android/systemui/R$layout;->samsung_navigation_layout_tablet:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$layout;->samsung_navigation_layout:I

    :goto_0
    return p0
.end method
