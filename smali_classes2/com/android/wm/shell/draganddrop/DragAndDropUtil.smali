.class public Lcom/android/wm/shell/draganddrop/DragAndDropUtil;
.super Ljava/lang/Object;
.source "DragAndDropUtil.java"


# direct methods
.method public static calculateFontSizeWithScale(FF)F
    .locals 2

    const v0, 0x3fa66666    # 1.3f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    const-wide v0, 0x3ff4ccccc0000000L    # 1.2999999523162842

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_0
    double-to-float p0, p0

    return p0

    :cond_0
    float-to-double p0, p0

    .line 35
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_0
.end method
