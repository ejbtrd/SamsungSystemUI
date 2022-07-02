.class public Lcom/android/systemui/volume/purefunction/VolumePanelLayout;
.super Ljava/lang/Object;
.source "VolumePanelLayout.java"


# static fields
.field public static VERTICAL_PADDING_TOP_FOR_FLIP_RATIO:F = 0.26f

.field public static VERTICAL_PADDING_TOP_RATIO:F = 0.34f

.field public static VERTICAL_WIDE_SCREEN_TOP_RATIO:F = 0.36f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getVolumeExpandPanelHorizontalPadding(IIIZZZ)I
    .locals 0

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p2

    int-to-float p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    float-to-int p0, p0

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static getVolumeExpandPanelVerticalPadding(IIIIZZZZ)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    if-nez p6, :cond_1

    if-eqz p7, :cond_1

    if-eqz p5, :cond_1

    int-to-float p0, p0

    div-float/2addr p0, v0

    if-eqz p4, :cond_0

    move p2, p3

    :cond_0
    int-to-float p2, p2

    sub-float/2addr p0, p2

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 25
    new-instance p2, Landroid/util/Pair;

    const/4 p3, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_1
    if-nez p6, :cond_4

    if-nez p7, :cond_4

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    move p2, p3

    :cond_3
    sub-int/2addr p0, p2

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 34
    new-instance p1, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 29
    :cond_4
    :goto_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getVolumeExpandPanelWidth(IIIIZZZ)I
    .locals 0

    if-nez p6, :cond_2

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    move p0, p1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p0, p2

    return p0

    :cond_2
    :goto_0
    return p3
.end method
